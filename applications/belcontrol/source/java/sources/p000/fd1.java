package p000;
/* renamed from: fd1 */
/* loaded from: classes3-dex2jar.jar:fd1.class */
public class fd1 {
    /* renamed from: a */
    public static float m1770a(float f) {
        if (f == 0.0f) {
            return 0.0f;
        }
        double d = f;
        float f2 = 0.0f;
        if (d <= 1.0d) {
            f2 = 1.0f;
        }
        float f3 = f2;
        if (d <= 0.5d) {
            f3 = f2 + 1.0f;
        }
        float f4 = f3;
        if (d > 9.0d) {
            f4 = f3 + 1.0f;
        }
        float f5 = f4;
        if (d > 18.0d) {
            f5 = f4 + 1.0f;
        }
        return f5;
    }
}
