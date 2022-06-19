package p000;
/* renamed from: pc1 */
/* loaded from: classes3-dex2jar.jar:pc1.class */
public class pc1 {
    /* renamed from: a */
    public static float m929a(float f) {
        double d = f;
        float f2 = d < 0.85d ? 1.0f : 0.0f;
        float f3 = f2;
        if (d < 0.75d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d < 0.65d) {
            f4 = f3 + 1.0f;
        }
        float f5 = f4;
        if (d < 0.55d) {
            f5 = f4 + 1.0f;
        }
        float f6 = f5;
        if (d < 0.45d) {
            f6 = f5 + 1.0f;
        }
        float f7 = f6;
        if (d < 0.35d) {
            f7 = f6 + 1.0f;
        }
        return f7;
    }
}
