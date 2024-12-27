import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 142, 228, 211),
          title: const Center(child: Text('Calculadora do Vini')),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Dimensões baseadas no tamanho da tela
            final double containerHeight = constraints.maxHeight * 0.6;
            final double containerWidth = constraints.maxWidth * 0.4;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: constraints.maxHeight * 0.02), // Espaço relativo
                Center(
                  child: Container(
                    height: containerHeight, // Altura relativa
                    width: containerWidth, // Largura relativa
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 179, 217, 223),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10,
                          offset: Offset(
                            constraints.maxWidth * 0.01,
                            constraints.maxHeight * 0.01,
                          ), // Sombra relativa
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Calculadora(),
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.02), // Espaço relativo
              ],
            );
          },
        ),
      ),
    );
  }
}
