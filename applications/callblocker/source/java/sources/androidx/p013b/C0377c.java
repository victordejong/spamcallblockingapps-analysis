package androidx.p013b;
/* renamed from: androidx.b.c */
/* loaded from: classes-dex2jar.jar:androidx/b/c.class */
class C0377c {

    /* renamed from: a */
    static final int[] f1557a = new int[0];

    /* renamed from: b */
    static final long[] f1558b = new long[0];

    /* renamed from: c */
    static final Object[] f1559c = new Object[0];

    /* renamed from: a */
    public static int m21139a(int i) {
        return m21134c(i * 4) / 4;
    }

    /* renamed from: a */
    public static int m21137a(int[] iArr, int i, int i2) {
        int i3;
        int i4 = i - 1;
        int i5 = 0;
        while (true) {
            if (i5 > i4) {
                i3 = i5 ^ (-1);
                break;
            }
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 >= i2) {
                if (i7 <= i2) {
                    i3 = i6;
                    break;
                }
                i4 = i6 - 1;
            } else {
                i5 = i6 + 1;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static int m21136a(long[] jArr, int i, long j) {
        int i2;
        int i3 = i - 1;
        int i4 = 0;
        int i5 = i3;
        while (true) {
            if (i4 > i5) {
                i2 = i4 ^ (-1);
                break;
            }
            int i6 = (i4 + i5) >>> 1;
            long j2 = jArr[i6];
            if (j2 >= j) {
                if (j2 <= j) {
                    i2 = i6;
                    break;
                }
                i5 = i6 - 1;
            } else {
                i4 = i6 + 1;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static boolean m21138a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m21135b(int i) {
        return m21134c(i * 8) / 8;
    }

    /* renamed from: c */
    public static int m21134c(int i) {
        int i2;
        int i3 = 4;
        while (true) {
            i2 = i;
            if (i3 >= 32) {
                break;
            } else if (i <= (1 << i3) - 12) {
                i2 = (1 << i3) - 12;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }
}
