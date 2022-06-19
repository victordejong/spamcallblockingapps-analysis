package p000;
/* renamed from: ec1 */
/* loaded from: classes3-dex2jar.jar:ec1.class */
public class ec1 {
    /* renamed from: a */
    public static float m2173a(float f) {
        double d = f;
        float f2 = d < 1.0d ? 1.0f : 0.0f;
        float f3 = f2;
        if (d < 0.9d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d < 0.7d) {
            f4 = f3 + 1.0f;
        }
        return f4;
    }
}
