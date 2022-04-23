package com.google.common.primitives;

import java.math.BigInteger;
import java.util.Comparator;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedLongs.class */
public final class UnsignedLongs {

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedLongs$LexicographicalComparator.class */
    public enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        public int compare(long[] jArr, long[] jArr2) {
            int min = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < min; i++) {
                if (jArr[i] != jArr2[i]) {
                    return UnsignedLongs.m7779a(jArr[i], jArr2[i]);
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }
    }

    /* renamed from: com.google.common.primitives.UnsignedLongs$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedLongs$a.class */
    public static final class C7715a {

        /* renamed from: a */
        public static final long[] f30882a = new long[37];

        /* renamed from: b */
        public static final int[] f30883b = new int[37];

        /* renamed from: c */
        public static final int[] f30884c = new int[37];

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i = 2; i <= 36; i++) {
                long j = i;
                f30882a[i] = UnsignedLongs.m7776b(-1L, j);
                f30883b[i] = (int) UnsignedLongs.m7775c(-1L, j);
                f30884c[i] = bigInteger.toString(i).length() - 1;
            }
        }

        /* renamed from: a */
        public static boolean m7774a(long j, int i, int i2) {
            boolean z = true;
            if (j >= 0) {
                long[] jArr = f30882a;
                if (j < jArr[i2]) {
                    return false;
                }
                if (j > jArr[i2]) {
                    return true;
                }
                z = i > f30883b[i2];
            }
            return z;
        }
    }

    /* renamed from: a */
    public static int m7779a(long j, long j2) {
        return Longs.m7802a(m7781a(j), m7781a(j2));
    }

    /* renamed from: a */
    public static long m7781a(long j) {
        return j ^ Long.MIN_VALUE;
    }

    /* renamed from: a */
    public static long m7778a(String str, int i) {
        C4933n.m24795a(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        } else if (i < 2 || i > 36) {
            throw new NumberFormatException("illegal radix: " + i);
        } else {
            int i2 = C7715a.f30884c[i];
            long j = 0;
            for (int i3 = 0; i3 < str.length(); i3++) {
                int digit = Character.digit(str.charAt(i3), i);
                if (digit == -1) {
                    throw new NumberFormatException(str);
                } else if (i3 <= i2 - 1 || !C7715a.m7774a(j, digit, i)) {
                    j = (j * i) + digit;
                } else {
                    throw new NumberFormatException("Too large for unsigned long: " + str);
                }
            }
            return j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m7780a(long r9, int r11) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.UnsignedLongs.m7780a(long, int):java.lang.String");
    }

    /* renamed from: b */
    public static long m7776b(long j, long j2) {
        if (j2 < 0) {
            return m7779a(j, j2) < 0 ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        int i = 1;
        long j3 = ((j >>> 1) / j2) << 1;
        if (m7779a(j - (j3 * j2), j2) < 0) {
            i = 0;
        }
        return j3 + i;
    }

    /* renamed from: b */
    public static String m7777b(long j) {
        return m7780a(j, 10);
    }

    /* renamed from: c */
    public static long m7775c(long j, long j2) {
        if (j2 < 0) {
            return m7779a(j, j2) < 0 ? j : j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (m7779a(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }
}
