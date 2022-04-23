package androidx.b;
/* loaded from: classes-dex2jar.jar:androidx/b/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f1163a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    static final long[] f1164b = new long[0];

    /* renamed from: c  reason: collision with root package name */
    static final Object[] f1165c = new Object[0];

    private c() {
    }

    public static int a(int i) {
        return c(i * 4) / 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int[] iArr, int i, int i2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(long[] jArr, int i, long j) {
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

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int b(int i) {
        return c(i * 8) / 8;
    }

    private static int c(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }
}
