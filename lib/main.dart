import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return
    runApp(
        XylophoneApp(),
    );
}


class XylophoneApp extends StatelessWidget {
  void playSound(int audioNo) {
    final audioplayer = AudioCache();
    audioplayer.play('note$audioNo.wav');
  }

  Expanded buildKey({Color color, int audioNo}) {
    // color: Colors.red;
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all (color),
        ),
        onPressed:(){
          playSound(audioNo);
        },
      ),
    ); //Expanded
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, audioNo: 1),
              buildKey(color: Colors.deepOrangeAccent, audioNo: 2),
              buildKey(color: Colors.yellow[600], audioNo: 3),
              buildKey(color: Colors.green, audioNo: 4),
              buildKey(color: Colors.teal, audioNo: 5),
              buildKey(color: Colors.blue, audioNo: 6),
              buildKey(color: Colors.purple, audioNo: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}