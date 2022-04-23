package p131c.p161d.p170b.p188c.p203g1;
/* renamed from: c.d.b.c.g1.y */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/y.class */
public final class C2907y {
    /* renamed from: a */
    public static int m28502a(int i, int i2) {
        for (int i3 = 1; i3 <= 2; i3++) {
            int i4 = (i + i3) % 3;
            if (m28501b(i4, i2)) {
                return i4;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m28501b(int i, int i2) {
        boolean z = true;
        boolean z2 = true;
        if (i != 0) {
            if (i == 1) {
                z2 = (i2 & 1) != 0;
            } else if (i != 2) {
                return false;
            } else {
                if ((i2 & 2) == 0) {
                    z = false;
                }
                return z;
            }
        }
        return z2;
    }
}
