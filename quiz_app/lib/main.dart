import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
