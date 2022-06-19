package p1727n3.p1784f.p1785a;

import android.graphics.drawable.Drawable;
/* renamed from: n3.f.a.e */
/* loaded from: classes-dex2jar.jar:n3/f/a/e.class */
public class C26167e extends Drawable {

    /* renamed from: a */
    public static final double f72944a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: a */
    public static float m2629a(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (((1.0d - f72944a) * f2) + f);
        }
        return f3;
    }

    /* renamed from: b */
    public static float m2628b(float f, float f2, boolean z) {
        if (z) {
            return (float) (((1.0d - f72944a) * f2) + (f * 1.5f));
        }
        return f * 1.5f;
    }
}
