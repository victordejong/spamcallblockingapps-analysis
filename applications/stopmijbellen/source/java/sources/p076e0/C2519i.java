package p076e0;

import p124i4.C3102d;
/* renamed from: e0.i */
/* loaded from: classes-dex2jar.jar:e0/i.class */
public final class C2519i {

    /* renamed from: k */
    public static final C2519i f8789k;

    /* renamed from: a */
    public final float f8790a;

    /* renamed from: b */
    public final float f8791b;

    /* renamed from: c */
    public final float f8792c;

    /* renamed from: d */
    public final float f8793d;

    /* renamed from: e */
    public final float f8794e;

    /* renamed from: f */
    public final float f8795f;

    /* renamed from: g */
    public final float[] f8796g;

    /* renamed from: h */
    public final float f8797h;

    /* renamed from: i */
    public final float f8798i;

    /* renamed from: j */
    public final float f8799j;

    static {
        float[] fArr = C3102d.f10506j;
        float m2642J = (float) ((C3102d.m2642J(50.0f) * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = C3102d.f10504h;
        float f = (fArr[2] * fArr2[0][2]) + (fArr[1] * fArr2[0][1]) + (fArr[0] * fArr2[0][0]);
        float f2 = (fArr[2] * fArr2[1][2]) + (fArr[1] * fArr2[1][1]) + (fArr[0] * fArr2[1][0]);
        float f3 = (fArr[2] * fArr2[2][2]) + (fArr[1] * fArr2[2][1]) + (fArr[0] * fArr2[2][0]);
        float f4 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float exp = (1.0f - (((float) Math.exp(((-m2642J) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d = exp;
        if (d > 1.0d) {
            exp = 1.0f;
        } else if (d < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f) * exp) + 1.0f) - exp, (((100.0f / f2) * exp) + 1.0f) - exp, (((100.0f / f3) * exp) + 1.0f) - exp};
        float f5 = 1.0f / ((5.0f * m2642J) + 1.0f);
        float f6 = f5 * f5 * f5 * f5;
        float f7 = 1.0f - f6;
        float cbrt = (0.1f * f7 * f7 * ((float) Math.cbrt(m2642J * 5.0d))) + (f6 * m2642J);
        float m2642J2 = C3102d.m2642J(50.0f) / fArr[1];
        double d2 = m2642J2;
        float sqrt = (float) Math.sqrt(d2);
        float pow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float[] fArr4 = {(float) Math.pow(((fArr3[0] * cbrt) * f) / 100.0d, 0.42d), (float) Math.pow(((fArr3[1] * cbrt) * f2) / 100.0d, 0.42d), (float) Math.pow(((fArr3[2] * cbrt) * f3) / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        f8789k = new C2519i(m2642J2, ((fArr5[2] * 0.05f) + (fArr5[0] * 2.0f) + fArr5[1]) * pow, pow, pow, f4, 1.0f, fArr3, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt + 1.48f);
    }

    public C2519i(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f8795f = f;
        this.f8790a = f2;
        this.f8791b = f3;
        this.f8792c = f4;
        this.f8793d = f5;
        this.f8794e = f6;
        this.f8796g = fArr;
        this.f8797h = f7;
        this.f8798i = f8;
        this.f8799j = f9;
    }
}
