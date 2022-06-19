package p000;
/* renamed from: gk1 */
/* loaded from: classes3-dex2jar.jar:gk1.class */
public final class gk1 {
    /* renamed from: a */
    public static final int m1658a(int i, int i2, int i3) {
        return m1656c(m1656c(i, i3) - m1656c(i2, i3), i3);
    }

    /* renamed from: b */
    public static final int m1657b(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                i2 -= m1658a(i2, i, i3);
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else {
            if (i > i2) {
                i2 += m1658a(i, i2, -i3);
            }
        }
        return i2;
    }

    /* renamed from: c */
    public static final int m1656c(int i, int i2) {
        int i3 = i % i2;
        if (i3 < 0) {
            i3 += i2;
        }
        return i3;
    }
}
