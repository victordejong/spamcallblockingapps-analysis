package p000;
/* renamed from: gd1 */
/* loaded from: classes3-dex2jar.jar:gd1.class */
public class gd1 {
    /* renamed from: a */
    public static float m1683a(float f) {
        double d = f;
        float f2 = d > 0.06d ? 1.0f : 0.0f;
        float f3 = f2;
        if (d > 0.15d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d > 0.3d) {
            f4 = f3 + 1.0f;
        }
        float f5 = f4;
        if (d > 0.6d) {
            f5 = f4 + 1.0f;
        }
        return f5;
    }
}
