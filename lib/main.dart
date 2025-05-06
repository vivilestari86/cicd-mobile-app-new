import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vivi Lestari'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Row of 2 boxes at the top
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBox('Vivi', Colors.red),
                  buildBox('Lestari', Colors.green),
                ],
              ),
              SizedBox(height: 20), // Spacing between rows
              // Center box
              buildBox('Mahasiswa', Colors.blue),
              SizedBox(height: 20), // Spacing between rows
              // Row of 2 boxes at the bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBox('D4 RPL 2B', Colors.orange),
                  buildBox('Semester 3', Colors.purple),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBox(String label, Color color) {
    return Container(
      width: 80,
      height: 80,
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
