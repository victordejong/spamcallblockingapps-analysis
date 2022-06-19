package p000;
/* renamed from: vc1 */
/* loaded from: classes3-dex2jar.jar:vc1.class */
public class vc1 {
    /* renamed from: a */
    public static float m336a(float f) {
        double d = f;
        float f2 = d < 0.09d ? 1.0f : 0.0f;
        float f3 = f2;
        if (d < 0.05d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d < 0.02d) {
            f4 = f3 + 1.0f;
        }
        float f5 = f4;
        if (d > 0.6d) {
            f5 = f4 + 1.0f;
        }
        float f6 = f5;
        if (d > 0.9d) {
            f6 = f5 + 1.0f;
        }
        float f7 = f6;
        if (d > 1.2d) {
            f7 = f6 + 1.0f;
        }
        return f7;
    }
}
