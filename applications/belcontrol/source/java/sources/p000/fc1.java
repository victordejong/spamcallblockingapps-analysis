package p000;
/* renamed from: fc1 */
/* loaded from: classes3-dex2jar.jar:fc1.class */
public class fc1 {
    /* renamed from: a */
    public static float m1771a(float f) {
        double d = f;
        float f2 = d > 0.05d ? 1.0f : 0.0f;
        float f3 = f2;
        if (d > 0.1d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d > 0.2d) {
            f4 = f3 + 1.0f;
        }
        float f5 = f4;
        if (d > 0.4d) {
            f5 = f4 + 1.0f;
        }
        float f6 = f5;
        if (d > 0.8d) {
            f6 = f5 + 1.0f;
        }
        float f7 = f6;
        if (d > 1.5d) {
            f7 = f6 + 1.0f;
        }
        return f7;
    }
}
