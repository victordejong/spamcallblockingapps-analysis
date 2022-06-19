package kotlin.p079d;
/* renamed from: kotlin.d.c */
/* loaded from: classes-dex2jar.jar:kotlin/d/c.class */
public final class C1659c {
    /* renamed from: a */
    private static final int m3135a(int i, int i2) {
        int i3 = i % i2;
        if (i3 < 0) {
            i3 += i2;
        }
        return i3;
    }

    /* renamed from: a */
    public static final int m3134a(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                i2 -= m3133b(i2, i, i3);
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else {
            if (i > i2) {
                i2 += m3133b(i, i2, -i3);
            }
        }
        return i2;
    }

    /* renamed from: b */
    private static final int m3133b(int i, int i2, int i3) {
        return m3135a(m3135a(i, i3) - m3135a(i2, i3), i3);
    }
}
