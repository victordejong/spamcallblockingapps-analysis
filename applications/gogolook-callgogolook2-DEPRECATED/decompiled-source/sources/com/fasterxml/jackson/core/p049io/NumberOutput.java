package com.fasterxml.jackson.core.p049io;

import androidx.media2.exoplayer.external.audio.Sonic;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
/* renamed from: com.fasterxml.jackson.core.io.NumberOutput */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/NumberOutput.class */
public final class NumberOutput {
    public static int BILLION = 1000000000;
    public static final byte[] FULL_TRIPLETS_B;
    public static long MAX_INT_AS_LONG = 2147483647L;
    public static int MILLION = 1000000;
    public static long MIN_INT_AS_LONG = -2147483648L;
    public static long TEN_BILLION_L = 10000000000L;
    public static long THOUSAND_L = 1000;
    public static final String[] sSmallIntStrs;
    public static final String[] sSmallIntStrs2;
    public static final String SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
    public static final char[] LEAD_3 = new char[Sonic.AMDF_FREQUENCY];
    public static final char[] FULL_3 = new char[Sonic.AMDF_FREQUENCY];

    static {
        int i = 0;
        int i2 = 0;
        while (i < 10) {
            char c = (char) (i + 48);
            char c2 = i == 0 ? (char) 0 : c;
            int i3 = 0;
            while (i3 < 10) {
                char c3 = (char) (i3 + 48);
                char c4 = (i == 0 && i3 == 0) ? (char) 0 : c3;
                for (int i4 = 0; i4 < 10; i4++) {
                    char c5 = (char) (i4 + 48);
                    char[] cArr = LEAD_3;
                    cArr[i2] = c2;
                    int i5 = i2 + 1;
                    cArr[i5] = c4;
                    int i6 = i2 + 2;
                    cArr[i6] = c5;
                    char[] cArr2 = FULL_3;
                    cArr2[i2] = c;
                    cArr2[i5] = c3;
                    cArr2[i6] = c5;
                    i2 += 4;
                }
                i3++;
            }
            i++;
        }
        FULL_TRIPLETS_B = new byte[Sonic.AMDF_FREQUENCY];
        for (int i7 = 0; i7 < 4000; i7++) {
            FULL_TRIPLETS_B[i7] = (byte) FULL_3[i7];
        }
        sSmallIntStrs = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        sSmallIntStrs2 = new String[]{FavoriteGroupRealmObject.PARENDID_DELETED, "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    public static int calcLongStrLength(long j) {
        int i = 10;
        for (long j2 = TEN_BILLION_L; j >= j2 && i != 19; j2 = (j2 << 1) + (j2 << 3)) {
            i++;
        }
        return i;
    }

    public static int full3(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        byte[] bArr2 = FULL_TRIPLETS_B;
        int i5 = i3 + 1;
        bArr[i2] = bArr2[i3];
        int i6 = i4 + 1;
        bArr[i4] = bArr2[i5];
        bArr[i6] = bArr2[i5 + 1];
        return i6 + 1;
    }

    public static int full3(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        char[] cArr2 = FULL_3;
        int i5 = i3 + 1;
        cArr[i2] = cArr2[i3];
        int i6 = i4 + 1;
        cArr[i4] = cArr2[i5];
        cArr[i6] = cArr2[i5 + 1];
        return i6 + 1;
    }

    public static int leading3(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i3 + 1;
        char c = LEAD_3[i3];
        int i5 = i2;
        if (c != 0) {
            bArr[i2] = (byte) c;
            i5 = i2 + 1;
        }
        char c2 = LEAD_3[i4];
        int i6 = i5;
        if (c2 != 0) {
            bArr[i5] = (byte) c2;
            i6 = i5 + 1;
        }
        bArr[i6] = (byte) LEAD_3[i4 + 1];
        return i6 + 1;
    }

    public static int leading3(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i3 + 1;
        char c = LEAD_3[i3];
        int i5 = i2;
        if (c != 0) {
            cArr[i2] = c;
            i5 = i2 + 1;
        }
        char c2 = LEAD_3[i4];
        int i6 = i5;
        if (c2 != 0) {
            cArr[i5] = c2;
            i6 = i5 + 1;
        }
        cArr[i6] = LEAD_3[i4 + 1];
        return i6 + 1;
    }

    public static int outputInt(int i, byte[] bArr, int i2) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = i2;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return outputLong(i, bArr, i2);
            }
            bArr[i2] = (byte) 45;
            i5 = -i;
            i6 = i2 + 1;
        }
        if (i5 < MILLION) {
            if (i5 >= 1000) {
                int i7 = i5 / 1000;
                i4 = full3(i5 - (i7 * 1000), bArr, leading3(i7, bArr, i6));
            } else if (i5 < 10) {
                i4 = i6 + 1;
                bArr[i6] = (byte) (i5 + 48);
            } else {
                i4 = leading3(i5, bArr, i6);
            }
            return i4;
        }
        boolean z = i5 >= BILLION;
        if (z) {
            int i8 = BILLION;
            i5 -= i8;
            if (i5 >= i8) {
                i5 -= i8;
                i3 = i6 + 1;
                bArr[i6] = (byte) 50;
            } else {
                i3 = i6 + 1;
                bArr[i6] = (byte) 49;
            }
        } else {
            i3 = i6;
        }
        int i9 = i5 / 1000;
        int i10 = i9 / 1000;
        return full3(i5 - (i9 * 1000), bArr, full3(i9 - (i10 * 1000), bArr, z ? full3(i10, bArr, i3) : leading3(i10, bArr, i3)));
    }

    public static int outputInt(int i, char[] cArr, int i2) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = i2;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return outputLong(i, cArr, i2);
            }
            cArr[i2] = (char) 45;
            i5 = -i;
            i6 = i2 + 1;
        }
        if (i5 < MILLION) {
            if (i5 >= 1000) {
                int i7 = i5 / 1000;
                i4 = full3(i5 - (i7 * 1000), cArr, leading3(i7, cArr, i6));
            } else if (i5 < 10) {
                i4 = i6 + 1;
                cArr[i6] = (char) (i5 + 48);
            } else {
                i4 = leading3(i5, cArr, i6);
            }
            return i4;
        }
        boolean z = i5 >= BILLION;
        if (z) {
            int i8 = BILLION;
            i5 -= i8;
            if (i5 >= i8) {
                i5 -= i8;
                i3 = i6 + 1;
                cArr[i6] = (char) 50;
            } else {
                i3 = i6 + 1;
                cArr[i6] = (char) 49;
            }
        } else {
            i3 = i6;
        }
        int i9 = i5 / 1000;
        int i10 = i9 / 1000;
        return full3(i5 - (i9 * 1000), cArr, full3(i9 - (i10 * 1000), cArr, z ? full3(i10, cArr, i3) : leading3(i10, cArr, i3)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int outputLong(long r7, byte[] r9, int r10) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p049io.NumberOutput.outputLong(long, byte[], int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int outputLong(long r7, char[] r9, int r10) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p049io.NumberOutput.outputLong(long, char[], int):int");
    }

    public static String toString(double d) {
        return Double.toString(d);
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
