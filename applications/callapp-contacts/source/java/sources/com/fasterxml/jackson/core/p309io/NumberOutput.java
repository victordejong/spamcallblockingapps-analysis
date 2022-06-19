package com.fasterxml.jackson.core.p309io;
/* renamed from: com.fasterxml.jackson.core.io.NumberOutput */
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
        if (i < MILLION) {
            if (i < 1000) {
                return _leading3(i, bArr, i2);
            }
            int i3 = i / 1000;
            return _outputUptoMillion(bArr, i2, i3, i - (i3 * 1000));
        }
        int i4 = i / 1000;
        int i5 = i4 / 1000;
        int _leading3 = _leading3(i5, bArr, i2);
        int[] iArr = TRIPLET_TO_CHARS;
        int i6 = iArr[i4 - (i5 * 1000)];
        int i7 = _leading3 + 1;
        bArr[_leading3] = (byte) (i6 >> 16);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i6 >> 8);
        int i9 = i8 + 1;
        bArr[i8] = (byte) i6;
        int i10 = iArr[i - (i4 * 1000)];
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 >> 16);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 >> 8);
        bArr[i12] = (byte) i10;
        return i12 + 1;
    }

    private static int _outputUptoBillion(int i, char[] cArr, int i2) {
        if (i < MILLION) {
            if (i < 1000) {
                return _leading3(i, cArr, i2);
            }
            int i3 = i / 1000;
            return _outputUptoMillion(cArr, i2, i3, i - (i3 * 1000));
        }
        int i4 = i / 1000;
        int i5 = i4 / 1000;
        int _leading3 = _leading3(i5, cArr, i2);
        int[] iArr = TRIPLET_TO_CHARS;
        int i6 = iArr[i4 - (i5 * 1000)];
        int i7 = _leading3 + 1;
        cArr[_leading3] = (char) (i6 >> 16);
        int i8 = i7 + 1;
        cArr[i7] = (char) ((i6 >> 8) & 127);
        int i9 = i8 + 1;
        cArr[i8] = (char) (i6 & 127);
        int i10 = iArr[i - (i4 * 1000)];
        int i11 = i9 + 1;
        cArr[i9] = (char) (i10 >> 16);
        int i12 = i11 + 1;
        cArr[i11] = (char) ((i10 >> 8) & 127);
        cArr[i12] = (char) (i10 & 127);
        return i12 + 1;
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

    public static boolean notFinite(double d) {
        return Double.isNaN(d) || Double.isInfinite(d);
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
        if (i5 < i8) {
            int i9 = i5 / 1000;
            int i10 = i9 / 1000;
            return _full3(i5 - (i9 * 1000), bArr, _full3(i9 - (i10 * 1000), bArr, _leading3(i10, bArr, i6)));
        }
        int i11 = i5 - i8;
        if (i11 >= i8) {
            i11 -= i8;
            i3 = i6 + 1;
            bArr[i6] = (byte) 50;
        } else {
            i3 = i6 + 1;
            bArr[i6] = (byte) 49;
        }
        return _outputFullBillion(i11, bArr, i3);
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
        if (i4 < MILLION) {
            if (i4 >= 1000) {
                int i6 = i4 / 1000;
                return _full3(i4 - (i6 * 1000), cArr, _leading3(i6, cArr, i5));
            } else if (i4 >= 10) {
                return _leading3(i4, cArr, i5);
            } else {
                cArr[i5] = (char) (i4 + 48);
                return i5 + 1;
            }
        }
        int i7 = BILLION;
        if (i4 < i7) {
            int i8 = i4 / 1000;
            int i9 = i8 / 1000;
            return _full3(i4 - (i8 * 1000), cArr, _full3(i8 - (i9 * 1000), cArr, _leading3(i9, cArr, i5)));
        }
        int i10 = i4 - i7;
        if (i10 >= i7) {
            i10 -= i7;
            i3 = i5 + 1;
            cArr[i5] = (char) 50;
        } else {
            i3 = i5 + 1;
            cArr[i5] = (char) 49;
        }
        return _outputFullBillion(i10, cArr, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    public static int outputLong(long j, byte[] bArr, int i) {
        int i2;
        char c;
        int i3;
        if (j >= 0) {
            c = j;
            i2 = i;
            if (j <= MAX_INT_AS_LONG) {
                return outputInt((int) j, bArr, i);
            }
        } else if (j > MIN_INT_AS_LONG) {
            return outputInt((int) j, bArr, i);
        } else {
            if (j == Long.MIN_VALUE) {
                return _outputSmallestL(bArr, i);
            }
            bArr[i] = (byte) 45;
            c = -j;
            i2 = i + 1;
        }
        long j2 = BILLION_L;
        long j3 = c / j2;
        if (j3 < j2) {
            i3 = _outputUptoBillion((int) j3, bArr, i2);
        } else {
            long j4 = j3 / j2;
            i3 = _outputFullBillion((int) (j3 - (j2 * j4)), bArr, _leading3((int) j4, bArr, i2));
        }
        return _outputFullBillion((int) (c - (j3 * j2)), bArr, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    public static int outputLong(long j, char[] cArr, int i) {
        int i2;
        char c;
        int i3;
        if (j >= 0) {
            c = j;
            i2 = i;
            if (j <= MAX_INT_AS_LONG) {
                return outputInt((int) j, cArr, i);
            }
        } else if (j > MIN_INT_AS_LONG) {
            return outputInt((int) j, cArr, i);
        } else {
            if (j == Long.MIN_VALUE) {
                return _outputSmallestL(cArr, i);
            }
            cArr[i] = (char) 45;
            c = -j;
            i2 = i + 1;
        }
        long j2 = BILLION_L;
        long j3 = c / j2;
        if (j3 < j2) {
            i3 = _outputUptoBillion((int) j3, cArr, i2);
        } else {
            long j4 = j3 / j2;
            i3 = _outputFullBillion((int) (j3 - (j2 * j4)), cArr, _leading3((int) j4, cArr, i2));
        }
        return _outputFullBillion((int) (c - (j3 * j2)), cArr, i3);
    }

    public static String toString(double d) {
        return Double.toString(d);
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
