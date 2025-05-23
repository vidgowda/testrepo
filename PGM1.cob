       IDENTIFICATION DIVISION.                                         00010000
       PROGRAM-ID. PGM1.                                                00020000
       AUTHOR. VIDYAR.                                                  00030000
       DATE-WRITTEN. 11/04/2024.                                        00040000
       DATE-COMPILED. 11/04/2024.                                       00050000
       ENVIRONMENT DIVISION.                                            00060000
       DATA DIVISION.                                                   00070000
       WORKING-STORAGE SECTION.                                         00080000
       01 WS-VAR-1 PIC X(9).                                            00090004
       01 WS-VAR-R REDEFINES WS-VAR-1 PIC 9(9).                         00091027
       01 WS-VAR-2 PIC 9(9).                                            00100020
       01 WS-VAR-4 PIC 9(9).                                            00100227
       01 WS-VAR-3 PIC 9 VALUE 9.                                       00101017
CHGTAG 01 WS-TEST-VAR PIC X VALUE 'T'.
       PROCEDURE DIVISION.                                              00110000
       0000-MAIN-PARA.                                                  00120000
            MOVE '123456789' TO WS-VAR-1                                00130005
            DISPLAY 'WS-VAR-1:' WS-VAR-1                                00140006
            DISPLAY 'WS-VAR-R:' WS-VAR-R                                00141027
            MOVE WS-VAR-1 TO WS-VAR-2                                   00150007
            DISPLAY 'WS-VAR-2:' WS-VAR-2                                00160001
            MOVE 12345    TO WS-VAR-2                                   00161008
            DISPLAY 'WS-VAR-2:' WS-VAR-2                                00162008
            DISPLAY 'WS-VAR-2 AFTER R:' WS-VAR-2                        00162227
            MOVE '12345'  TO WS-VAR-1                                   00163009
            DISPLAY 'WS-VAR-1:' WS-VAR-1                                00164010
            DISPLAY 'WS-VAR-R:' WS-VAR-R                                00164127
            MOVE WS-VAR-R TO WS-VAR-2                                   00165028
            DISPLAY 'WS-VAR-2:' WS-VAR-2                                00166012
            DISPLAY 'WS-VAR-2(1):' WS-VAR-2(1:1)                        00166123
            DISPLAY 'WS-VAR-2(2):' WS-VAR-2(2:1)                        00166223
            DISPLAY 'WS-VAR-2(3):' WS-VAR-2(3:1)                        00166323
            DISPLAY 'WS-VAR-2(4):' WS-VAR-2(4:1)                        00166423
            DISPLAY 'WS-VAR-2(5):' WS-VAR-2(5:1)                        00166523
            DISPLAY 'WS-VAR-2(6):' WS-VAR-2(6:1)                        00166623
            DISPLAY 'WS-VAR-2(7):' WS-VAR-2(7:1)                        00166725
            DISPLAY 'WS-VAR-2(8):' WS-VAR-2(8:1)                        00166825
            DISPLAY 'WS-VAR-2(9):' WS-VAR-2(9:1)                        00166925
            IF WS-VAR-2(6:1) IS NOT ZERO                                00167026
              DISPLAY 'WS-VAR-2(6:1) IS NOT ZERO '                      00167126
            END-IF                                                      00167224
            IF WS-VAR-2(7:1) IS NOT ZERO                                00167326
              DISPLAY 'WS-VAR-2(7:1) IS NOT ZERO '                      00167426
            END-IF                                                      00167524
            IF WS-VAR-2(8:1) IS NOT ZERO                                00167626
              DISPLAY 'WS-VAR-2(8:1) IS NOT ZERO '                      00167726
            END-IF                                                      00167824
            IF WS-VAR-2(9:1) IS NOT ZERO                                00167926
              DISPLAY 'WS-VAR-2(9:1) IS NOT ZERO '                      00168026
            END-IF                                                      00168124
            DIVIDE WS-VAR-2 BY 2 GIVING WS-VAR-4                        00168324
            DISPLAY 'WS-VAR-4:' WS-VAR-4                                00168424
            MOVE WS-VAR-2 TO WS-VAR-1                                   00168524
            DISPLAY 'WS-VAR-1 AFTER MOVE FROM VAR2:' WS-VAR-1           00168624
            MOVE ZEROES  TO WS-VAR-2                                    00168724
            DISPLAY 'WS-VAR-2:' WS-VAR-2                                00168824
            COMPUTE WS-VAR-2 = FUNCTION NUMVAL-C(WS-VAR-1)              00168930
      *     MOVE WS-VAR-1 TO WS-VAR-2                                   00169029
            DISPLAY 'WS-VAR-2:' WS-VAR-2                                00169129
            ADD 123456 TO WS-VAR-2                                      00169229
            DISPLAY 'WS-VAR-2 AFTER ADD:' WS-VAR-2                      00169324
            ADD 3 TO WS-VAR-3                                           00169424
            DISPLAY 'WS-VAR-3:' WS-VAR-3                                00169524
            MOVE ZERO TO WS-VAR-3                                       00169624
            DISPLAY 'WS-VAR-3:' WS-VAR-3                                00169724
            ADD 10 TO WS-VAR-3                                          00169824
            ON SIZE ERROR DISPLAY 'SIZE OVERFLOW' WS-VAR-3              00169924
            NOT ON SIZE ERROR DISPLAY 'ALL OK' WS-VAR-3.                00170024
            STOP RUN.                                                   00180000

