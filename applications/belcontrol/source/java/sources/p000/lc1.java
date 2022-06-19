package p000;
/* renamed from: lc1 */
/* loaded from: classes3-dex2jar.jar:lc1.class */
public class lc1 {
    /* renamed from: a */
    public static float m1308a(float f) {
        double d = f;
        float f2 = d < 0.0105d ? 1.0f : 0.0f;
        float f3 = f2;
        if (d < 0.00909d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d < 0.00667d) {
            f4 = f3 + 1.0f;
        }
        float f5 = f4;
        if (d > 0.0333d) {
            f5 = f4 + 1.0f;
        }
        float f6 = f5;
        if (d > 0.05d) {
            f6 = f5 + 1.0f;
        }
        return f6;
    }
}
