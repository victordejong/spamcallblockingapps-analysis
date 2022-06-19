package androidx.p023b;
/* renamed from: androidx.b.c */
/* loaded from: classes-dex2jar.jar:androidx/b/c.class */
final class C0432c {

    /* renamed from: a */
    static final int[] f1714a = new int[0];

    /* renamed from: b */
    static final long[] f1715b = new long[0];

    /* renamed from: c */
    static final Object[] f1716c = new Object[0];

    private C0432c() {
    }

    /* renamed from: a */
    public static int m45558a(int i) {
        return m45553c(i * 4) / 4;
    }

    /* renamed from: a */
    public static int m45556a(int[] iArr, int i, int i2) {
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

    /* renamed from: a */
    public static int m45555a(long[] jArr, int i, long j) {
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

    /* renamed from: a */
    public static boolean m45557a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m45554b(int i) {
        return m45553c(i * 8) / 8;
    }

    /* renamed from: c */
    private static int m45553c(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }
}
