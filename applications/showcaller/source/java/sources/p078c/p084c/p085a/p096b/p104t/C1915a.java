package p078c.p084c.p085a.p096b.p104t;
/* renamed from: c.c.a.b.t.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/t/a.class */
public final class C1915a {
    /* renamed from: a */
    public static float m28697a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: b */
    public static float m28696b(float f, float f2, float f3, float f4, float f5, float f6) {
        return m28693e(m28697a(f, f2, f3, f4), m28697a(f, f2, f5, f4), m28697a(f, f2, f5, f6), m28697a(f, f2, f3, f6));
    }

    /* renamed from: c */
    public static boolean m28695c(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    /* renamed from: d */
    public static float m28694d(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: e */
    private static float m28693e(float f, float f2, float f3, float f4) {
        if (f <= f2 || f <= f3 || f <= f4) {
            f = (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2;
        }
        return f;
    }
}
