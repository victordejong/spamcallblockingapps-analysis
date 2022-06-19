package p215r;

import android.graphics.drawable.Drawable;
/* renamed from: r.d */
/* loaded from: classes-dex2jar.jar:r/d.class */
public class C4177d extends Drawable {

    /* renamed from: a */
    public static final double f13165a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: a */
    public static float m1308a(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (((1.0d - f13165a) * f2) + f);
        }
        return f3;
    }

    /* renamed from: b */
    public static float m1307b(float f, float f2, boolean z) {
        if (z) {
            return (float) (((1.0d - f13165a) * f2) + (f * 1.5f));
        }
        return f * 1.5f;
    }
}
