package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/datamatrix/encoder/HighLevelEncoder.class */
public final class HighLevelEncoder {
    static final int ASCII_ENCODATION = 0;
    static final int BASE256_ENCODATION = 5;
    static final int C40_ENCODATION = 1;
    static final char C40_UNLATCH = 254;
    static final int EDIFACT_ENCODATION = 4;
    static final char LATCH_TO_ANSIX12 = 238;
    static final char LATCH_TO_BASE256 = 231;
    static final char LATCH_TO_C40 = 230;
    static final char LATCH_TO_EDIFACT = 240;
    static final char LATCH_TO_TEXT = 239;
    private static final char MACRO_05 = 236;
    private static final String MACRO_05_HEADER = "[)>\u001e05\u001d";
    private static final char MACRO_06 = 237;
    private static final String MACRO_06_HEADER = "[)>\u001e06\u001d";
    private static final String MACRO_TRAILER = "\u001e\u0004";
    private static final char PAD = 129;
    static final int TEXT_ENCODATION = 2;
    static final char UPPER_SHIFT = 235;
    static final int X12_ENCODATION = 3;
    static final char X12_UNLATCH = 254;

    private HighLevelEncoder() {
    }

    public static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            int i3 = i;
            char charAt = charSequence.charAt(i);
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (!isDigit(charAt)) {
                    break;
                }
                i2 = i4;
                if (i3 >= length) {
                    break;
                }
                int i5 = i4 + 1;
                int i6 = i3 + 1;
                i4 = i5;
                i3 = i6;
                if (i6 < length) {
                    i4 = i5;
                    charAt = charSequence.charAt(i6);
                    i3 = i6;
                }
            }
        }
        return i2;
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, SymbolShapeHint.FORCE_NONE, null, null);
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2) {
        int i;
        ASCIIEncoder aSCIIEncoder = new ASCIIEncoder();
        C40Encoder c40Encoder = new C40Encoder();
        TextEncoder textEncoder = new TextEncoder();
        X12Encoder x12Encoder = new X12Encoder();
        EdifactEncoder edifactEncoder = new EdifactEncoder();
        Base256Encoder base256Encoder = new Base256Encoder();
        EncoderContext encoderContext = new EncoderContext(str);
        encoderContext.setSymbolShape(symbolShapeHint);
        encoderContext.setSizeConstraints(dimension, dimension2);
        if (!str.startsWith(MACRO_05_HEADER) || !str.endsWith(MACRO_TRAILER)) {
            i = 0;
            if (str.startsWith(MACRO_06_HEADER)) {
                i = 0;
                if (str.endsWith(MACRO_TRAILER)) {
                    encoderContext.writeCodeword((char) 237);
                    encoderContext.setSkipAtEnd(2);
                    encoderContext.pos += 7;
                    i = 0;
                }
            }
        } else {
            encoderContext.writeCodeword((char) 236);
            encoderContext.setSkipAtEnd(2);
            encoderContext.pos += 7;
            i = 0;
        }
        while (encoderContext.hasMoreCharacters()) {
            new Encoder[]{aSCIIEncoder, c40Encoder, textEncoder, x12Encoder, edifactEncoder, base256Encoder}[i].encode(encoderContext);
            if (encoderContext.getNewEncoding() >= 0) {
                i = encoderContext.getNewEncoding();
                encoderContext.resetEncoderSignal();
            }
        }
        int codewordCount = encoderContext.getCodewordCount();
        encoderContext.updateSymbolInfo();
        int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity();
        if (codewordCount < dataCapacity && i != 0 && i != 5 && i != 4) {
            encoderContext.writeCodeword((char) 254);
        }
        StringBuilder codewords = encoderContext.getCodewords();
        if (codewords.length() < dataCapacity) {
            codewords.append((char) 129);
        }
        while (codewords.length() < dataCapacity) {
            codewords.append(randomize253State((char) 129, codewords.length() + 1));
        }
        return encoderContext.getCodewords().toString();
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
        float[] fArr;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[6];
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
        int i2 = c + ((i * 149) % 253) + 1;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }
}
