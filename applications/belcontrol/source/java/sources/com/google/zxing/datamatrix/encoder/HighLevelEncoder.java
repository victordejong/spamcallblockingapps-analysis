package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;
import org.bouncycastle.crypto.tls.CipherSuite;
/* loaded from: classes-dex2jar.jar:com/google/zxing/datamatrix/encoder/HighLevelEncoder.class */
public final class HighLevelEncoder {
    public static final int ASCII_ENCODATION = 0;
    public static final int BASE256_ENCODATION = 5;
    public static final int C40_ENCODATION = 1;
    public static final char C40_UNLATCH = 254;
    public static final int EDIFACT_ENCODATION = 4;
    public static final char LATCH_TO_ANSIX12 = 238;
    public static final char LATCH_TO_BASE256 = 231;
    public static final char LATCH_TO_C40 = 230;
    public static final char LATCH_TO_EDIFACT = 240;
    public static final char LATCH_TO_TEXT = 239;
    private static final char MACRO_05 = 236;
    private static final String MACRO_05_HEADER = "[)>\u001e05\u001d";
    private static final char MACRO_06 = 237;
    private static final String MACRO_06_HEADER = "[)>\u001e06\u001d";
    private static final String MACRO_TRAILER = "\u001e\u0004";
    private static final char PAD = 129;
    public static final int TEXT_ENCODATION = 2;
    public static final char UPPER_SHIFT = 235;
    public static final int X12_ENCODATION = 3;
    public static final char X12_UNLATCH = 254;

    private HighLevelEncoder() {
    }

    public static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int i2;
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        if (i < length) {
            int i5 = i;
            int i6 = 0;
            loop0: while (true) {
                char charAt = charSequence.charAt(i5);
                do {
                    i4 = i6;
                    if (!isDigit(charAt)) {
                        break loop0;
                    }
                    i4 = i6;
                    if (i5 >= length) {
                        break loop0;
                    }
                    i2 = i6 + 1;
                    i3 = i5 + 1;
                    i6 = i2;
                    i5 = i3;
                } while (i3 >= length);
                i6 = i2;
                i5 = i3;
            }
        }
        return i4;
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, SymbolShapeHint.FORCE_NONE, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0154 A[LOOP:1: B:30:0x014b->B:32:0x0154, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String encodeHighLevel(java.lang.String r5, com.google.zxing.datamatrix.encoder.SymbolShapeHint r6, com.google.zxing.Dimension r7, com.google.zxing.Dimension r8) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.encoder.HighLevelEncoder.encodeHighLevel(java.lang.String, com.google.zxing.datamatrix.encoder.SymbolShapeHint, com.google.zxing.Dimension, com.google.zxing.Dimension):java.lang.String");
    }

    private static int findMinimums(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < 6) {
                iArr[i2] = (int) Math.ceil(fArr[i2]);
                int i4 = iArr[i2];
                i = i3;
                if (i3 > i4) {
                    Arrays.fill(bArr, (byte) 0);
                    i = i4;
                }
                if (i == i4) {
                    bArr[i2] = (byte) (bArr[i2] + 1);
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    private static int getMinimumCount(byte[] bArr) {
        byte b = 0;
        for (int i = 0; i < 6; i++) {
            b += bArr[i];
        }
        return b;
    }

    public static void illegalCharacter(char c) {
        String hexString;
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + Integer.toHexString(c)) + ')');
    }

    public static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isExtendedASCII(char c) {
        return c >= 128 && c <= 255;
    }

    private static boolean isNativeC40(char c) {
        if (c != ' ') {
            if (c >= '0' && c <= '9') {
                return true;
            }
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    private static boolean isNativeEDIFACT(char c) {
        return c >= ' ' && c <= '^';
    }

    private static boolean isNativeText(char c) {
        if (c != ' ') {
            if (c >= '0' && c <= '9') {
                return true;
            }
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    private static boolean isNativeX12(char c) {
        if (isX12TermSep(c) || c == ' ') {
            return true;
        }
        if (c >= '0' && c <= '9') {
            return true;
        }
        return c >= 'A' && c <= 'Z';
    }

    private static boolean isSpecialB256(char c) {
        return false;
    }

    private static boolean isX12TermSep(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    public static int lookAheadTest(CharSequence charSequence, int i, int i2) {
        if (i >= charSequence.length()) {
            return i2;
        }
        float[] fArr = new float[6];
        if (i2 == 0) {
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
            fArr[2] = 1.0f;
            fArr[3] = 1.0f;
            fArr[4] = 1.0f;
            fArr[5] = 1.25f;
        } else {
            fArr[0] = 1.0f;
            fArr[1] = 2.0f;
            fArr[2] = 2.0f;
            fArr[3] = 2.0f;
            fArr[4] = 2.0f;
            fArr[5] = 2.25f;
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int findMinimums = findMinimums(fArr, iArr, Integer.MAX_VALUE, bArr);
                int minimumCount = getMinimumCount(bArr);
                if (iArr[0] == findMinimums) {
                    return 0;
                }
                if (minimumCount == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (minimumCount == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (minimumCount == 1 && bArr[2] > 0) {
                    return 2;
                }
                return (minimumCount != 1 || bArr[3] <= 0) ? 1 : 3;
            }
            char charAt = charSequence.charAt(i4);
            int i5 = i3 + 1;
            if (isDigit(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (isExtendedASCII(charAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (isNativeC40(charAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (isExtendedASCII(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (isNativeText(charAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (isExtendedASCII(charAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (isNativeX12(charAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (isExtendedASCII(charAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (isNativeEDIFACT(charAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (isExtendedASCII(charAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (isSpecialB256(charAt)) {
                fArr[5] = fArr[5] + 4.0f;
            } else {
                fArr[5] = fArr[5] + 1.0f;
            }
            i3 = i5;
            if (i5 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                findMinimums(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int minimumCount2 = getMinimumCount(bArr2);
                if (iArr2[0] < iArr2[5] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (minimumCount2 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (minimumCount2 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (minimumCount2 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                i3 = i5;
                if (iArr2[1] + 1 < iArr2[0]) {
                    i3 = i5;
                    if (iArr2[1] + 1 < iArr2[5]) {
                        i3 = i5;
                        if (iArr2[1] + 1 < iArr2[4]) {
                            i3 = i5;
                            if (iArr2[1] + 1 >= iArr2[2]) {
                                continue;
                            } else if (iArr2[1] < iArr2[3]) {
                                return 1;
                            } else {
                                i3 = i5;
                                if (iArr2[1] == iArr2[3]) {
                                    for (int i6 = i + i5 + 1; i6 < charSequence.length(); i6++) {
                                        char charAt2 = charSequence.charAt(i6);
                                        if (isX12TermSep(charAt2)) {
                                            return 3;
                                        }
                                        if (!isNativeX12(charAt2)) {
                                            return 1;
                                        }
                                    }
                                    return 1;
                                }
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private static char randomize253State(char c, int i) {
        int i2 = c + ((i * CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA) % 253) + 1;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }
}
