package p573f.p587u;
/* renamed from: f.u.c */
/* loaded from: classes2-dex2jar.jar:f/u/c.class */
public final class C10016c {
    /* renamed from: a */
    public static final int m1669a(int i, int i2) {
        int i3 = i % i2;
        if (i3 < 0) {
            i3 += i2;
        }
        return i3;
    }

    /* renamed from: a */
    public static final int m1668a(int i, int i2, int i3) {
        return m1669a(m1669a(i, i3) - m1669a(i2, i3), i3);
    }

    /* renamed from: b */
    public static final int m1667b(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                i2 -= m1668a(i2, i, i3);
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (i > i2) {
            i2 += m1668a(i, i2, -i3);
        }
        return i2;
    }
}
