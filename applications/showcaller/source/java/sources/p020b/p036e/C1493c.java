package p020b.p036e;
/* renamed from: b.e.c */
/* loaded from: classes-dex2jar.jar:b/e/c.class */
class C1493c {

    /* renamed from: a */
    static final int[] f5942a = new int[0];

    /* renamed from: b */
    static final long[] f5943b = new long[0];

    /* renamed from: c */
    static final Object[] f5944c = new Object[0];

    /* renamed from: a */
    public static int m29964a(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else if (i6 <= i2) {
                return i5;
            } else {
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    /* renamed from: b */
    public static int m29963b(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = (jArr[i4] > j ? 1 : (jArr[i4] == j ? 0 : -1));
            if (i5 < 0) {
                i3 = i4 + 1;
            } else if (i5 <= 0) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    /* renamed from: c */
    public static boolean m29962c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: d */
    public static int m29961d(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static int m29960e(int i) {
        return m29961d(i * 4) / 4;
    }

    /* renamed from: f */
    public static int m29959f(int i) {
        return m29961d(i * 8) / 8;
    }
}
