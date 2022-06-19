package p078c.p084c.p119c.p121b;

import com.google.common.base.C8756j;
/* renamed from: c.c.c.b.d */
/* loaded from: classes2-dex2jar.jar:c/c/c/b/d.class */
public final class C1977d {
    /* renamed from: a */
    public static int m28418a(long j, long j2) {
        return C1976c.m28419a(m28416c(j), m28416c(j2));
    }

    /* renamed from: b */
    public static long m28417b(long j, long j2) {
        if (j2 < 0) {
            return m28418a(j, j2) < 0 ? 0L : 1L;
        } else if (j >= 0) {
            return j / j2;
        } else {
            int i = 1;
            long j3 = ((j >>> 1) / j2) << 1;
            if (m28418a(j - (j3 * j2), j2) < 0) {
                i = 0;
            }
            return j3 + i;
        }
    }

    /* renamed from: c */
    private static long m28416c(long j) {
        return j ^ Long.MIN_VALUE;
    }

    /* renamed from: d */
    public static String m28415d(long j) {
        return m28414e(j, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: e */
    public static String m28414e(long j, int i) {
        int i2;
        ?? r0;
        C8756j.m2794g(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i);
        int i3 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i3 == 0) {
            return "0";
        }
        if (i3 > 0) {
            return Long.toString(j, i);
        }
        int i4 = 64;
        char[] cArr = new char[64];
        int i5 = i - 1;
        if ((i & i5) != 0) {
            char m28417b = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : m28417b(j, i);
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (m28417b * j2)), i);
            int i6 = 63;
            while (true) {
                i2 = i6;
                if (m28417b <= 0) {
                    break;
                }
                i6--;
                cArr[i6] = Character.forDigit((int) (m28417b % j2), i);
                m28417b /= j2;
            }
        } else {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            ?? r9 = j;
            do {
                i2 = i4 - 1;
                cArr[i2] = Character.forDigit(((int) r9) & i5, i);
                r0 = r9 >>> numberOfTrailingZeros;
                i4 = i2;
                r9 = r0;
            } while (r0 != 0);
        }
        return new String(cArr, i2, 64 - i2);
    }
}
