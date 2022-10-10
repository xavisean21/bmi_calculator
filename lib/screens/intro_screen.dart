import 'package:bmi_calculator/screens/input_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/onboarding_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
    PageController _controller = PageController();


@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller =PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
            controller: _controller,
            children: [
              OnboardingScreen(image: 'assets/images/undraw_jogging_re_k28i.svg',
                  boldText: 'Calculate your BMI in the app',
                  smallText: "BMI can also help your physician gauge your general risk of obesity-related diseases, "
                      "though BMI is best used in combination with other measurements to get a more complete look at your health.",
                  buttonText: "Next", onTap: () {
                _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                  }
              ),
              OnboardingScreen(image:  'assets/images/undraw_running_wild_re_6kh3.svg',
                  boldText: 'Get healthy tips with results',
                  smallText:   "The BMI guidelines are the same for women and men."
                          " A BMI under 19 indicates that you're underweight; a BMI from 19 to 25 suggests a healthy weight."
                          " A BMI from 25 to 30 indicates overweight; and a BMI from 30 to 40 indicates obesity.",
                  buttonText:  "Next", onTap: () {
                    _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                  }
              ),
              OnboardingScreen(image:  'assets/images/undraw_healthy_habit_re_sy1e.svg',
                  boldText:  'Use several measurements to asses your weight and health',
                  smallText:    "Stay motivated and happy with your health routine by focusing on"
                      " performance-based goals instead of simply aiming to fall into a certain BMI range.",
                  buttonText: "Get Started!", onTap: () {
                    _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                  }
              ),
              InputScreen()
            ],
          )
      ),
    );
  }
}
