package com.fasterxml.jackson.core.io;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/NumberOutput.class */
public final class NumberOutput {
    private static int BILLION = 1000000000;
    private static long BILLION_L = 1000000000;
    private static long MAX_INT_AS_LONG = 2147483647L;
    private static int MILLION = 1000000;
    private static long MIN_INT_AS_LONG = -2147483648L;
    static final String SMALLEST_INT = "-2147483648";
    static final String SMALLEST_LONG = "-9223372036854775808";
    private static final int[] TRIPLET_TO_CHARS = new int[1000];
    private static final String[] sSmallIntStrs;
    private static final String[] sSmallIntStrs2;

    static {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                int i4 = 0;
                while (i4 < 10) {
                    TRIPLET_TO_CHARS[i] = ((i2 + 48) << 16) | ((i3 + 48) << 8) | (i4 + 48);
                    i4++;
                    i++;
                }
            }
        }
        sSmallIntStrs = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        sSmallIntStrs2 = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    private static int _full3(int i, byte[] bArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        int i4 = i2 + 1;
        bArr[i2] = (byte) (i3 >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i3 >> 8);
        bArr[i5] = (byte) i3;
        return i5 + 1;
    }

    private static int _full3(int i, char[] cArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        int i4 = i2 + 1;
        cArr[i2] = (char) (i3 >> 16);
        int i5 = i4 + 1;
        cArr[i4] = (char) ((i3 >> 8) & 127);
        cArr[i5] = (char) (i3 & 127);
        return i5 + 1;
    }

    private static int _leading3(int i, byte[] bArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        int i4 = i2;
        if (i > 9) {
            int i5 = i2;
            if (i > 99) {
                bArr[i2] = (byte) (i3 >> 16);
                i5 = i2 + 1;
            }
            bArr[i5] = (byte) (i3 >> 8);
            i4 = i5 + 1;
        }
        bArr[i4] = (byte) i3;
        return i4 + 1;
    }

    private static int _leading3(int i, char[] cArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        int i4 = i2;
        if (i > 9) {
            int i5 = i2;
            if (i > 99) {
                cArr[i2] = (char) (i3 >> 16);
                i5 = i2 + 1;
            }
            cArr[i5] = (char) ((i3 >> 8) & 127);
            i4 = i5 + 1;
        }
        cArr[i4] = (char) (i3 & 127);
        return i4 + 1;
    }

    private static int _outputFullBillion(int i, byte[] bArr, int i2) {
        int i3 = i / 1000;
        int i4 = i3 / 1000;
        int[] iArr = TRIPLET_TO_CHARS;
        int i5 = iArr[i4];
        int i6 = i2 + 1;
        bArr[i2] = (byte) (i5 >> 16);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i5 >> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) i5;
        int i9 = iArr[i3 - (i4 * 1000)];
        int i10 = i8 + 1;
        bArr[i8] = (byte) (i9 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i9 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) i9;
        int i13 = iArr[i - (i3 * 1000)];
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 16);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 8);
        bArr[i15] = (byte) i13;
        return i15 + 1;
    }

    private static int _outputFullBillion(int i, char[] cArr, int i2) {
        int i3 = i / 1000;
        int i4 = i3 / 1000;
        int[] iArr = TRIPLET_TO_CHARS;
        int i5 = iArr[i4];
        int i6 = i2 + 1;
        cArr[i2] = (char) (i5 >> 16);
        int i7 = i6 + 1;
        cArr[i6] = (char) ((i5 >> 8) & 127);
        int i8 = i7 + 1;
        cArr[i7] = (char) (i5 & 127);
        int i9 = iArr[i3 - (i4 * 1000)];
        int i10 = i8 + 1;
        cArr[i8] = (char) (i9 >> 16);
        int i11 = i10 + 1;
        cArr[i10] = (char) ((i9 >> 8) & 127);
        int i12 = i11 + 1;
        cArr[i11] = (char) (i9 & 127);
        int i13 = iArr[i - (i3 * 1000)];
        int i14 = i12 + 1;
        cArr[i12] = (char) (i13 >> 16);
        int i15 = i14 + 1;
        cArr[i14] = (char) ((i13 >> 8) & 127);
        cArr[i15] = (char) (i13 & 127);
        return i15 + 1;
    }

    private static int _outputSmallestI(byte[] bArr, int i) {
        int length = SMALLEST_INT.length();
        int i2 = 0;
        while (i2 < length) {
            bArr[i] = (byte) SMALLEST_INT.charAt(i2);
            i2++;
            i++;
        }
        return i;
    }

    private static int _outputSmallestI(char[] cArr, int i) {
        String str = SMALLEST_INT;
        int length = str.length();
        str.getChars(0, length, cArr, i);
        return i + length;
    }

    private static int _outputSmallestL(byte[] bArr, int i) {
        int length = SMALLEST_LONG.length();
        int i2 = 0;
        while (i2 < length) {
            bArr[i] = (byte) SMALLEST_LONG.charAt(i2);
            i2++;
            i++;
        }
        return i;
    }

    private static int _outputSmallestL(char[] cArr, int i) {
        String str = SMALLEST_LONG;
        int length = str.length();
        str.getChars(0, length, cArr, i);
        return i + length;
    }

    private static int _outputUptoBillion(int i, byte[] bArr, int i2) {
        if (i >= MILLION) {
            int i3 = i / 1000;
            int i4 = i3 / 1000;
            int _leading3 = _leading3(i4, bArr, i2);
            int[] iArr = TRIPLET_TO_CHARS;
            int i5 = iArr[i3 - (i4 * 1000)];
            int i6 = _leading3 + 1;
            bArr[_leading3] = (byte) (i5 >> 16);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (i5 >> 8);
            int i8 = i7 + 1;
            bArr[i7] = (byte) i5;
            int i9 = iArr[i - (i3 * 1000)];
            int i10 = i8 + 1;
            bArr[i8] = (byte) (i9 >> 16);
            int i11 = i10 + 1;
            bArr[i10] = (byte) (i9 >> 8);
            bArr[i11] = (byte) i9;
            return i11 + 1;
        } else if (i < 1000) {
            return _leading3(i, bArr, i2);
        } else {
            int i12 = i / 1000;
            return _outputUptoMillion(bArr, i2, i12, i - (i12 * 1000));
        }
    }

    private static int _outputUptoBillion(int i, char[] cArr, int i2) {
        if (i >= MILLION) {
            int i3 = i / 1000;
            int i4 = i3 / 1000;
            int _leading3 = _leading3(i4, cArr, i2);
            int[] iArr = TRIPLET_TO_CHARS;
            int i5 = iArr[i3 - (i4 * 1000)];
            int i6 = _leading3 + 1;
            cArr[_leading3] = (char) (i5 >> 16);
            int i7 = i6 + 1;
            cArr[i6] = (char) ((i5 >> 8) & 127);
            int i8 = i7 + 1;
            cArr[i7] = (char) (i5 & 127);
            int i9 = iArr[i - (i3 * 1000)];
            int i10 = i8 + 1;
            cArr[i8] = (char) (i9 >> 16);
            int i11 = i10 + 1;
            cArr[i10] = (char) ((i9 >> 8) & 127);
            cArr[i11] = (char) (i9 & 127);
            return i11 + 1;
        } else if (i < 1000) {
            return _leading3(i, cArr, i2);
        } else {
            int i12 = i / 1000;
            return _outputUptoMillion(cArr, i2, i12, i - (i12 * 1000));
        }
    }

    private static int _outputUptoMillion(byte[] bArr, int i, int i2, int i3) {
        int[] iArr = TRIPLET_TO_CHARS;
        int i4 = iArr[i2];
        int i5 = i;
        if (i2 > 9) {
            int i6 = i;
            if (i2 > 99) {
                bArr[i] = (byte) (i4 >> 16);
                i6 = i + 1;
            }
            bArr[i6] = (byte) (i4 >> 8);
            i5 = i6 + 1;
        }
        int i7 = i5 + 1;
        bArr[i5] = (byte) i4;
        int i8 = iArr[i3];
        int i9 = i7 + 1;
        bArr[i7] = (byte) (i8 >> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i8 >> 8);
        bArr[i10] = (byte) i8;
        return i10 + 1;
    }

    private static int _outputUptoMillion(char[] cArr, int i, int i2, int i3) {
        int[] iArr = TRIPLET_TO_CHARS;
        int i4 = iArr[i2];
        int i5 = i;
        if (i2 > 9) {
            int i6 = i;
            if (i2 > 99) {
                cArr[i] = (char) (i4 >> 16);
                i6 = i + 1;
            }
            cArr[i6] = (char) ((i4 >> 8) & 127);
            i5 = i6 + 1;
        }
        int i7 = i5 + 1;
        cArr[i5] = (char) (i4 & 127);
        int i8 = iArr[i3];
        int i9 = i7 + 1;
        cArr[i7] = (char) (i8 >> 16);
        int i10 = i9 + 1;
        cArr[i9] = (char) ((i8 >> 8) & 127);
        cArr[i10] = (char) (i8 & 127);
        return i10 + 1;
    }

    public static boolean notFinite(double d2) {
        return Double.isNaN(d2) || Double.isInfinite(d2);
    }

    public static boolean notFinite(float f) {
        return Float.isNaN(f) || Float.isInfinite(f);
    }

    public static int outputInt(int i, byte[] bArr, int i2) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = i2;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return _outputSmallestI(bArr, i2);
            }
            bArr[i2] = (byte) 45;
            i5 = -i;
            i6 = i2 + 1;
        }
        if (i5 < MILLION) {
            if (i5 >= 1000) {
                int i7 = i5 / 1000;
                i4 = _full3(i5 - (i7 * 1000), bArr, _leading3(i7, bArr, i6));
            } else if (i5 < 10) {
                i4 = i6 + 1;
                bArr[i6] = (byte) (i5 + 48);
            } else {
                i4 = _leading3(i5, bArr, i6);
            }
            return i4;
        }
        int i8 = BILLION;
        if (i5 >= i8) {
            int i9 = i5 - i8;
            if (i9 >= i8) {
                i9 -= i8;
                i3 = i6 + 1;
                bArr[i6] = (byte) 50;
            } else {
                i3 = i6 + 1;
                bArr[i6] = (byte) 49;
            }
            return _outputFullBillion(i9, bArr, i3);
        }
        int i10 = i5 / 1000;
        int i11 = i10 / 1000;
        return _full3(i5 - (i10 * 1000), bArr, _full3(i10 - (i11 * 1000), bArr, _leading3(i11, bArr, i6)));
    }

    public static int outputInt(int i, char[] cArr, int i2) {
        int i3;
        int i4 = i;
        int i5 = i2;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return _outputSmallestI(cArr, i2);
            }
            cArr[i2] = (char) 45;
            i4 = -i;
            i5 = i2 + 1;
        }
        if (i4 >= MILLION) {
            int i6 = BILLION;
            if (i4 >= i6) {
                int i7 = i4 - i6;
                if (i7 >= i6) {
                    i7 -= i6;
                    i3 = i5 + 1;
                    cArr[i5] = (char) 50;
                } else {
                    i3 = i5 + 1;
                    cArr[i5] = (char) 49;
                }
                return _outputFullBillion(i7, cArr, i3);
            }
            int i8 = i4 / 1000;
            int i9 = i8 / 1000;
            return _full3(i4 - (i8 * 1000), cArr, _full3(i8 - (i9 * 1000), cArr, _leading3(i9, cArr, i5)));
        } else if (i4 >= 1000) {
            int i10 = i4 / 1000;
            return _full3(i4 - (i10 * 1000), cArr, _leading3(i10, cArr, i5));
        } else if (i4 >= 10) {
            return _leading3(i4, cArr, i5);
        } else {
            cArr[i5] = (char) (i4 + 48);
            return i5 + 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int outputLong(long r7, byte[] r9, int r10) {
        /*
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0036
            r0 = r7
            long r1 = com.fasterxml.jackson.core.io.NumberOutput.MIN_INT_AS_LONG
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r7
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = outputInt(r0, r1, r2)
            return r0
        L_0x0016:
            r0 = r7
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0024
            r0 = r9
            r1 = r10
            int r0 = _outputSmallestL(r0, r1)
            return r0
        L_0x0024:
            r0 = r9
            r1 = r10
            r2 = 45
            byte r2 = (byte) r2
            r0[r1] = r2
            r0 = r7
            long r0 = -r0
            r11 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r13 = r0
            goto L_0x004c
        L_0x0036:
            r0 = r7
            r11 = r0
            r0 = r10
            r13 = r0
            r0 = r7
            long r1 = com.fasterxml.jackson.core.io.NumberOutput.MAX_INT_AS_LONG
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x004c
            r0 = r7
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = outputInt(r0, r1, r2)
            return r0
        L_0x004c:
            long r0 = com.fasterxml.jackson.core.io.NumberOutput.BILLION_L
            r7 = r0
            r0 = r11
            r1 = r7
            long r0 = r0 / r1
            r14 = r0
            r0 = r14
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x006a
            r0 = r14
            int r0 = (int) r0
            r1 = r9
            r2 = r13
            int r0 = _outputUptoBillion(r0, r1, r2)
            r10 = r0
            goto L_0x0088
        L_0x006a:
            r0 = r14
            r1 = r7
            long r0 = r0 / r1
            r16 = r0
            r0 = r16
            int r0 = (int) r0
            r1 = r9
            r2 = r13
            int r0 = _leading3(r0, r1, r2)
            r10 = r0
            r0 = r14
            r1 = r7
            r2 = r16
            long r1 = r1 * r2
            long r0 = r0 - r1
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = _outputFullBillion(r0, r1, r2)
            r10 = r0
        L_0x0088:
            r0 = r11
            r1 = r14
            r2 = r7
            long r1 = r1 * r2
            long r0 = r0 - r1
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = _outputFullBillion(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.NumberOutput.outputLong(long, byte[], int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int outputLong(long r7, char[] r9, int r10) {
        /*
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0036
            r0 = r7
            long r1 = com.fasterxml.jackson.core.io.NumberOutput.MIN_INT_AS_LONG
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r7
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = outputInt(r0, r1, r2)
            return r0
        L_0x0016:
            r0 = r7
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0024
            r0 = r9
            r1 = r10
            int r0 = _outputSmallestL(r0, r1)
            return r0
        L_0x0024:
            r0 = r9
            r1 = r10
            r2 = 45
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r7
            long r0 = -r0
            r11 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r13 = r0
            goto L_0x004c
        L_0x0036:
            r0 = r7
            r11 = r0
            r0 = r10
            r13 = r0
            r0 = r7
            long r1 = com.fasterxml.jackson.core.io.NumberOutput.MAX_INT_AS_LONG
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x004c
            r0 = r7
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = outputInt(r0, r1, r2)
            return r0
        L_0x004c:
            long r0 = com.fasterxml.jackson.core.io.NumberOutput.BILLION_L
            r7 = r0
            r0 = r11
            r1 = r7
            long r0 = r0 / r1
            r14 = r0
            r0 = r14
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x006a
            r0 = r14
            int r0 = (int) r0
            r1 = r9
            r2 = r13
            int r0 = _outputUptoBillion(r0, r1, r2)
            r10 = r0
            goto L_0x0088
        L_0x006a:
            r0 = r14
            r1 = r7
            long r0 = r0 / r1
            r16 = r0
            r0 = r16
            int r0 = (int) r0
            r1 = r9
            r2 = r13
            int r0 = _leading3(r0, r1, r2)
            r10 = r0
            r0 = r14
            r1 = r7
            r2 = r16
            long r1 = r1 * r2
            long r0 = r0 - r1
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = _outputFullBillion(r0, r1, r2)
            r10 = r0
        L_0x0088:
            r0 = r11
            r1 = r14
            r2 = r7
            long r1 = r1 * r2
            long r0 = r0 - r1
            int r0 = (int) r0
            r1 = r9
            r2 = r10
            int r0 = _outputFullBillion(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.NumberOutput.outputLong(long, char[], int):int");
    }

    public static String toString(double d2) {
        return Double.toString(d2);
    }

    public static String toString(float f) {
        return Float.toString(f);
    }

    public static String toString(int i) {
        String[] strArr = sSmallIntStrs;
        if (i < strArr.length) {
            if (i >= 0) {
                return strArr[i];
            }
            int i2 = (-i) - 1;
            String[] strArr2 = sSmallIntStrs2;
            if (i2 < strArr2.length) {
                return strArr2[i2];
            }
        }
        return Integer.toString(i);
    }

    public static String toString(long j) {
        return (j > 2147483647L || j < -2147483648L) ? Long.toString(j) : toString((int) j);
    }
}
