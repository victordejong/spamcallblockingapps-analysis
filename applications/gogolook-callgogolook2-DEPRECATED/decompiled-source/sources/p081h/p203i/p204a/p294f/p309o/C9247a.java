package p081h.p203i.p204a.p294f.p309o;
/* renamed from: h.i.a.f.o.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/o/a.class */
public final class C9247a {
    /* renamed from: a */
    public static float m15632a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: a */
    public static float m15631a(float f, float f2, float f3, float f4, float f5, float f6) {
        return m15629b(m15632a(f, f2, f3, f4), m15632a(f, f2, f5, f4), m15632a(f, f2, f5, f6), m15632a(f, f2, f3, f6));
    }

    /* renamed from: a */
    public static boolean m15633a(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    /* renamed from: b */
    public static float m15630b(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: b */
    public static float m15629b(float f, float f2, float f3, float f4) {
        if (f <= f2 || f <= f3 || f <= f4) {
            f = (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2;
        }
        return f;
    }
}
