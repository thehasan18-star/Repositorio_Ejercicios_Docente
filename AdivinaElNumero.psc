Algoritmo AdivinaElNumero
    Definir numeroSecreto, intento, intentosRestantes, diferencia Como Entero
    
    // Generar número aleatorio entre 1 y 100
    numeroSecreto <- azar(100) + 1
    intentosRestantes <- 4
    
    Escribir "¡Bienvenido al juego de adivinar el número!"
    Escribir "Tienes 4 intentos para adivinar un número entre 1 y 100."
    
    Mientras intentosRestantes > 0 Hacer
        Escribir "Te quedan ", intentosRestantes, " intentos. Introduce tu número:"
        Leer intento
        
        Si intento = numeroSecreto Entonces
            Escribir "¡Felicidades! Has adivinado el número."
            intentosRestantes <- 0 // Salir del bucle
        SiNo
            intentosRestantes <- intentosRestantes - 1
            
            Si intentosRestantes > 0 Entonces
                // Calcular qué tan cerca está el usuario
                diferencia <- abs(numeroSecreto - intento)
                
                Si diferencia <= 10 Entonces
                    Escribir "¡Estás muy caliente! (Cerca)"
                SiNo
                    Escribir "Estás frío (Lejos)"
                FinSi
            SiNo
                Escribir "¡Se acabaron tus intentos! El número era: ", numeroSecreto
            FinSi
        FinSi
    FinMientras
FinAlgoritmo
