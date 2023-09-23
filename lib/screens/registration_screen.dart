import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/requirements/RoundedButton.dart';
import 'package:flash_chat/requirements/textdecor.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: "logo",
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Textdecor(title: 'Enter your email'),
            SizedBox(
              height: 8.0,
            ),
            Textdecor(title: 'Enter your password'),
            SizedBox(
              height: 24.0,
            ),
            Roundedbutton(
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
              title: "Register",
            ),
          ],
        ),
      ),
    );
  }
}
