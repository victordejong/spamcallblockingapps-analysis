package android.support.v4.b;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f120a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    static final long[] f121b = new long[0];
    static final Object[] c = new Object[0];

    public static int a(int i) {
        return c(i * 4) / 4;
    }

    public static int a(int[] iArr, int i, int i2) {
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
                i3 = i6;
                if (i7 <= i2) {
                    break;
                }
                i4 = i6 - 1;
            } else {
                i5 = i6 + 1;
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(long[] jArr, int i, long j) {
        int i2;
        int i3 = i - 1;
        int i4 = 0;
        while (true) {
            if (i4 > i3) {
                i2 = i4 ^ (-1);
                break;
            }
            int i5 = (i4 + i3) >>> 1;
            long j2 = jArr[i5];
            if (j2 >= j) {
                i2 = i5;
                if (j2 <= j) {
                    break;
                }
                i3 = i5 - 1;
            } else {
                i4 = i5 + 1;
            }
        }
        return i2;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(int i) {
        return c(i * 8) / 8;
    }

    private static int c(int i) {
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
