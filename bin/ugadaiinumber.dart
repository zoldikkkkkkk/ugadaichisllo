// import 'dart:io';

// int binarySearchGuess() {
//   int low = 1;
//   int high = 100;
//   int steps = 0;
//   String response = '';

//   while (low <= high) {
//     int mid = low + ((high - low) ~/ 2);
//     print('Is it $mid?');
//     response = stdin.readLineSync()!.toLowerCase();

//     steps++;

//     if (response == 'yes') {
//       print('Got it in $steps steps!');
//       return steps;
//     } else if (response == 'less') {
//       high = mid - 1;
//     } else if (response == 'greater') {
//       low = mid + 1;
//     } else {
//       print('Please, respond with "less", "greater", or "yes".');
//     }
//   }

//   return steps;
// }

// void main() {
//   print('Please, think of a number between 1 and 100.');
//   binarySearchGuess();
// }
// import 'dart:math';

// int binarySearchGuess(int numberToGuess) {
//   int low = 1;
//   int high = 100;
//   int steps = 0;

//   while (low <= high) {
//     int mid = low + ((high - low) ~/ 2);

//     steps++;

//     if (mid == numberToGuess) {
//       return steps;
//     } else if (mid < numberToGuess) {
//       low = mid + 1;
//     } else {
//       high = mid - 1;
//     }
//   }

//   return steps;
// }

// int randomGuess(int numberToGuess) {
//   int steps = 0;
//   int low = 1;
//   int high = 100;
//   Random random = Random();
//   int guess;

//   while (true) {
//     guess = low + random.nextInt(high - low + 1);
//     steps++;

//     if (guess == numberToGuess) {
//       return steps;
//     } else if (guess < numberToGuess) {
//       low = guess + 1;
//     } else {
//       high = guess - 1;
//     }
//   }
// }

// void main() {
//   List<int> numbersToGuess =
//       List.generate(100, (_) => Random().nextInt(100) + 1);
//   List<int> binarySearchSteps = [];
//   List<int> randomGuessSteps = [];

//   for (var number in numbersToGuess) {
//     binarySearchSteps.add(binarySearchGuess(number));
//     randomGuessSteps.add(randomGuess(number));
//   }

//   double averageBinarySearchSteps =
//       binarySearchSteps.reduce((a, b) => a + b) / binarySearchSteps.length;
//   double averageRandomGuessSteps =
//       randomGuessSteps.reduce((a, b) => a + b) / randomGuessSteps.length;

//   print('Average steps for Binary Search: $averageBinarySearchSteps');
//   print('Average steps for Random Guess: $averageRandomGuessSteps');
//   print(binarySearchSteps);
//   print(randomGuessSteps);

// }
// import 'dart:io';
// import 'dart:math';

// void main() {
//   print('Выберите режим игры:');
//   print('1. Угадать число, загаданное компьютером.');
//   print('2. Компьютер угадывает ваше число.');
//   String? choice = stdin.readLineSync();

//   switch (choice) {
//     case '1':
//       guessTheNumberGame();
//       break;
//     case '2':
//       computerGuessesYourNumber();
//       break;
//     default:
//       print('Неверный ввод. Введите 1 или 2.');
//       break;
//   }
// }

// void guessTheNumberGame() {
//   int number = Random().nextInt(100) + 1;
//   int? guess;
//   print('Компьютер загадал число от 1 до 100. Попробуйте его угадать.');

//   do {
//     print('Введите вашу догадку:');
//     guess = int.tryParse(stdin.readLineSync()!);
//     if (guess != null) {
//       if (guess < number) {
//         print('greater');
//       } else if (guess > number) {
//         print('less');
//       } else {
//         print('yes, вы угадали!');
//       }
//     } else {
//       print('Пожалуйста, введите число.');
//     }
//   } while (guess != number);
// }

// void computerGuessesYourNumber() {
//   int low = 1;
//   int high = 100;
//   String? response;
//   int guess;
//   int steps = 0;

//   print('Загадайте число от 1 до 100, и я попробую его угадать.');
//   print('Отвечайте "less", если ваше число меньше, "greater", если ваше число больше, и "yes", если я угадал.');

//   do {
//     steps++;
//     guess = low + ((high - low) ~/ 2);
//     print('Ваше число $guess?');
//     response = stdin.readLineSync();

//     if (response == 'greater') {
//       low = guess + 1;
//     } else if (response == 'less') {
//       high = guess - 1;
//     } else if (response != 'yes') {
//       print('Пожалуйста, введите "less", "greater" или "yes".');
//     }
//   } while (response != 'yes');

//   print('Ура! Я угадал ваше число за $steps шагов.');
// }
// import 'dart:io';
// import 'dart:math';

// void main() {
//   print('Добро пожаловать в игру "Угадай число"!');
//   print('Выберите режим игры:');
//   print('1. Угадать число, загаданное компьютером.');
//   print('2. Компьютер угадывает ваше число.');
//   print('3. Игра по очереди.');
//   String? choice = stdin.readLineSync();

//   switch (choice) {
//     case '1':
//       guessTheNumberGame();
//       break;
//     case '2':
//       computerGuessesYourNumber();
//       break;
//     case '3':
//       playTurnsGame();
//       break;
//     default:
//       print('Неверный выбор. Введите 1, 2 или 3.');
//       break;
//   }
// }

// int guessTheNumberGame() {
//   int steps = 0;
//   int number = Random().nextInt(100) + 1;
//   int? guess;
//   print('Компьютер загадал число от 1 до 100. Попробуйте его угадать.');
//   do {
//     print('Введите вашу догадку:');
//     String? input = stdin.readLineSync();
//     guess = int.tryParse(input ?? '');
//     if (guess == null) {
//       print('Пожалуйста, введите число.');
//       continue;
//     }
//     steps++;
//     if (guess < number) {
//       print('Больше');
//     } else if (guess > number) {
//       print('Меньше');
//     }
//   } while (guess != number);
//   print('Поздравляем, вы угадали число $number за $steps шагов!');
//   return steps;
// }

// int computerGuessesYourNumber() {
//   int low = 1;
//   int high = 100;
//   int guess;
//   int steps = 0;
//   String? response;

//   print(
//       'Загадайте число от 1 до 100, и я попробую его угадать. Отвечайте "greater", "less" или "yes".');

//   do {
//     steps++;
//     guess = low + ((high - low) ~/ 2);
//     print('Ваше число $guess?');
//     response = stdin.readLineSync()?.toLowerCase();
//     if (response == 'greater') {
//       low = guess + 1;
//     } else if (response == 'less') {
//       high = guess - 1;
//     }
//   } while (response != 'yes');

//   print('Ура! Я угадал ваше число за $steps шагов.');
//   return steps;
// }

// void playTurnsGame() {
//   print(
//       'Сколько раундов вы хотите сыграть? Введите число от 1 до 10 (по умолчанию 3):');
//   String? roundsInput = stdin.readLineSync();
//   int rounds = roundsInput!.isEmpty ? 3 : int.parse(roundsInput);
//   if (rounds < 1 || rounds > 10)
//     rounds = 3; // Обеспечение корректного количества раундов

//   int userWins = 0;
//   int computerWins = 0;

//   for (int i = 1; i <= rounds; i++) {
//     print("====================");
//     print("Раунд $i");
//     print("====================");

//     // Этап 1: Компьютер угадывает число пользователя
//     print(
//         "Этап 1: Загадайте число от 1 до 100, и компьютер попытается его угадать.");
//     int computerSteps = computerGuessesYourNumber();

//     // Этап 2: Пользователь угадывает число компьютера
//     print(
//         "Этап 2: Компьютер загадал число от 1 до 100. Попытайтесь его угадать.");
//     int userSteps = guessTheNumberGame();

//     // Определение победителя раунда
//     if (userSteps < computerSteps) {
//       print(
//           "Вы выиграли раунд! Вы угадали за $userSteps шагов, а компьютер за $computerSteps.");
//       userWins++;
//     } else if (computerSteps < userSteps) {
//       print(
//           "Компьютер выиграл раунд! Компьютер угадал за $computerSteps шагов, а вы за $userSteps.");
//       computerWins++;
//     } else {
//       print("Ничья в этом раунде! Оба угадали за $userSteps шагов.");
//     }
//   }

//   print("====================");
//   print("Игра окончена. Итоги:");
//   if (userWins > computerWins) {
//     print("Вы выиграли игру со счетом $userWins:$computerWins!");
//   } else if (computerWins > userWins) {
//     print("Компьютер выиграл игру со счетом $computerWins:$userWins!");
//   } else {
//     print("Игра закончилась вничью со счетом $userWins:$computerWins.");
//   }
// }
import 'dart:io';
import 'dart:math';

void main() {
  print('Добро пожаловать в игру "Угадай число"!');
  while (true) {
    print('\nВыберите режим игры:');
    print('1. Компьютер угадывает ваше число');
    print('2. Вы угадываете число, загаданное компьютером');
    print('3. Выйти из игры');
    print('Введите номер режима:');

    String? mode = stdin.readLineSync();
    switch (mode) {
      case '1':
        selectDifficultyForComputerGuessing();
        break;
      case '2':
        selectDifficultyForUserGuessing();
        break;
      case '3':
        return;
      default:
        print('Неверный выбор. Пожалуйста, введите 1, 2 или 3.');
        break;
    }
  }
}

void selectDifficultyForComputerGuessing() {
  print('\nВыберите уровень сложности:');
  print('1. Легкий');
  print('2. Сложный');
  print('Введите номер уровня сложности:');

  String? difficulty = stdin.readLineSync();
  switch (difficulty) {
    case '1':
      computerGuessesYourNumber(difficulty: 'easy');
      break;
    case '2':
      computerGuessesYourNumber(difficulty: 'hard');
      break;
    default:
      print('Неверный выбор. Пожалуйста, введите 1 или 2.');
      break;
  }
}

void selectDifficultyForUserGuessing() {
  print('\nВыберите уровень сложности:');
  print('1. Легкий');
  print('2. Сложный');
  print('Введите номер уровня сложности:');

  String? difficulty = stdin.readLineSync();
  switch (difficulty) {
    case '1':
      userGuessesNumber(difficulty: 'easy');
      break;
    case '2':
      userGuessesNumber(difficulty: 'hard');
      break;
    default:
      print('Неверный выбор. Пожалуйста, введите 1 или 2.');
      break;
  }
}

void computerGuessesYourNumber({required String difficulty}) {
  int min = 1, max = 100, tries = 0;
  print('\nЗагадайте число от 1 до 100, и я попробую его угадать.');
  print('Введите "меньше", "больше" или "верно", чтобы помочь мне.');

  while (min <= max) {
    int guess;
    if (difficulty == 'easy') {
      guess = Random().nextInt(max - min + 1) + min; // Случайные догадки
    } else {
      guess = (min + max) ~/ 2; // Бинарный поиск
    }

    print('Я думаю, это $guess. Верно?');
    String? response = stdin.readLineSync();
    tries++;

    if (response == 'верно') {
      print('Ура! Я угадал ваше число за $tries попыток!');
      break;
    } else if (response == 'меньше') {
      max = guess - 1;
    } else if (response == 'больше') {
      min = guess + 1;
    } else {
      print('Не понял ваш ответ. Пожалуйста, напишите "меньше", "больше" или "верно".');
    }
  }
}

void userGuessesNumber({required String difficulty}) {
  int number = Random().nextInt(100) + 1, tries = 0, maxTries = difficulty == 'easy' ? 20 : 10;
  print('\nЯ загадал число от 1 до 100. Попробуйте угадать его за $maxTries попыток.');

  while (tries < maxTries) {
    print('Ваша догадка:');
    int? guess = int.tryParse(stdin.readLineSync() ?? '');
    if (guess == null) {
      print('Пожалуйста, введите число.');
      continue;
    }
    tries++;

    if (guess < number) {
      print('Больше...');
    } else if (guess > number) {
      print('Меньше...');
    } else {
      print('Поздравляю! Вы угадали число за $tries попыток.');
      return;
    }
  }
  print('К сожалению, вы не угадали число. Это было $number.');
}
