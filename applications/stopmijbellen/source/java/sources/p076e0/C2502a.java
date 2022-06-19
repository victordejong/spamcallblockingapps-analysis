package p076e0;

import android.graphics.Color;
import p087f0.C2694a;
import p124i4.C3102d;
/* renamed from: e0.a */
/* loaded from: classes-dex2jar.jar:e0/a.class */
public class C2502a {

    /* renamed from: a */
    public final float f8752a;

    /* renamed from: b */
    public final float f8753b;

    /* renamed from: c */
    public final float f8754c;

    /* renamed from: d */
    public final float f8755d;

    /* renamed from: e */
    public final float f8756e;

    /* renamed from: f */
    public final float f8757f;

    public C2502a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f8752a = f;
        this.f8753b = f2;
        this.f8754c = f3;
        this.f8755d = f7;
        this.f8756e = f8;
        this.f8757f = f9;
    }

    /* renamed from: a */
    public static C2502a m3508a(int i) {
        float f;
        float pow;
        C2519i c2519i = C2519i.f8789k;
        float m2649C = C3102d.m2649C(Color.red(i));
        float m2649C2 = C3102d.m2649C(Color.green(i));
        float m2649C3 = C3102d.m2649C(Color.blue(i));
        float[][] fArr = C3102d.f10507k;
        float f2 = fArr[0][0];
        float f3 = fArr[0][1];
        float f4 = fArr[0][2];
        float f5 = fArr[1][0];
        float[] fArr2 = {(f4 * m2649C3) + (f3 * m2649C2) + (f2 * m2649C), (fArr[1][2] * m2649C3) + (fArr[1][1] * m2649C2) + (f5 * m2649C), (m2649C3 * fArr[2][2]) + (m2649C2 * fArr[2][1]) + (m2649C * fArr[2][0])};
        float[][] fArr3 = C3102d.f10504h;
        float f6 = fArr2[0];
        float f7 = fArr3[0][0];
        float f8 = fArr2[1];
        float f9 = fArr3[0][1];
        float f10 = fArr2[2];
        float f11 = fArr3[0][2];
        float f12 = fArr2[0];
        float f13 = fArr3[1][0];
        float f14 = fArr2[1];
        float f15 = fArr3[1][1];
        float f16 = fArr2[2];
        float f17 = fArr3[1][2];
        float f18 = fArr2[0];
        float f19 = fArr3[2][0];
        float f20 = fArr2[1];
        float f21 = fArr3[2][1];
        float f22 = fArr2[2];
        float f23 = fArr3[2][2];
        float[] fArr4 = c2519i.f8796g;
        float f24 = fArr4[0] * ((f10 * f11) + (f8 * f9) + (f6 * f7));
        float f25 = fArr4[1] * ((f16 * f17) + (f14 * f15) + (f12 * f13));
        float f26 = fArr4[2] * ((f22 * f23) + (f20 * f21) + (f18 * f19));
        float pow2 = (float) Math.pow((Math.abs(f24) * c2519i.f8797h) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f25) * c2519i.f8797h) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((Math.abs(f26) * c2519i.f8797h) / 100.0d, 0.42d);
        float signum = ((Math.signum(f24) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f25) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f26) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d = signum;
        double d2 = signum2;
        double d3 = signum3;
        float f27 = ((float) (((d2 * (-12.0d)) + (d * 11.0d)) + d3)) / 11.0f;
        float f28 = ((float) ((signum + signum2) - (d3 * 2.0d))) / 9.0f;
        float f29 = signum2 * 20.0f;
        float f30 = ((21.0f * signum3) + ((signum * 20.0f) + f29)) / 20.0f;
        float f31 = (((signum * 40.0f) + f29) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f28, f27)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            f = atan2 + 360.0f;
        } else {
            f = atan2;
            if (atan2 >= 360.0f) {
                f = atan2 - 360.0f;
            }
        }
        float f32 = (3.1415927f * f) / 180.0f;
        float pow5 = ((float) Math.pow((f31 * c2519i.f8791b) / c2519i.f8790a, c2519i.f8793d * c2519i.f8799j)) * 100.0f;
        float f33 = 4.0f / c2519i.f8793d;
        float sqrt = (float) Math.sqrt(pow5 / 100.0f);
        float f34 = c2519i.f8790a;
        float f35 = c2519i.f8798i;
        float pow6 = ((float) Math.pow(1.64d - Math.pow(0.29d, c2519i.f8795f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) f) < 20.14d ? 360.0f + f : f) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * c2519i.f8794e) * c2519i.f8792c) * ((float) Math.sqrt((f28 * f28) + (f27 * f27)))) / (f30 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow5 / 100.0d));
        float f36 = pow6 * c2519i.f8798i;
        float sqrt2 = (float) Math.sqrt((pow * c2519i.f8793d) / (c2519i.f8790a + 4.0f));
        float f37 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log = ((float) Math.log((0.0228f * f36) + 1.0f)) * 43.85965f;
        double d4 = f32;
        return new C2502a(f, pow6, pow5, (f34 + 4.0f) * f33 * sqrt * f35, f36, sqrt2 * 50.0f, f37, log * ((float) Math.cos(d4)), log * ((float) Math.sin(d4)));
    }

    /* renamed from: b */
    public static C2502a m3507b(float f, float f2, float f3) {
        double d;
        C2519i c2519i = C2519i.f8789k;
        float f4 = 4.0f / c2519i.f8793d;
        float sqrt = (float) Math.sqrt(f / 100.0d);
        float f5 = c2519i.f8790a;
        float f6 = c2519i.f8798i;
        float f7 = f2 * f6;
        float sqrt2 = (float) Math.sqrt(((f2 / ((float) Math.sqrt(d))) * c2519i.f8793d) / (c2519i.f8790a + 4.0f));
        float f8 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float log = ((float) Math.log((f7 * 0.0228d) + 1.0d)) * 43.85965f;
        double d2 = (3.1415927f * f3) / 180.0f;
        return new C2502a(f3, f2, f, (f5 + 4.0f) * f4 * sqrt * f6, f7, sqrt2 * 50.0f, f8, log * ((float) Math.cos(d2)), log * ((float) Math.sin(d2)));
    }

    /* renamed from: c */
    public int m3506c(C2519i c2519i) {
        float f;
        float f2 = this.f8753b;
        if (f2 != 0.0d) {
            double d = this.f8754c;
            if (d != 0.0d) {
                f = f2 / ((float) Math.sqrt(d / 100.0d));
                float pow = (float) Math.pow(f / Math.pow(1.64d - Math.pow(0.29d, c2519i.f8795f), 0.73d), 1.1111111111111112d);
                double d2 = (this.f8752a * 3.1415927f) / 180.0f;
                float cos = (float) (Math.cos(2.0d + d2) + 3.8d);
                float f3 = c2519i.f8790a;
                float pow2 = (float) Math.pow(this.f8754c / 100.0d, (1.0d / c2519i.f8793d) / c2519i.f8799j);
                float f4 = c2519i.f8794e;
                float f5 = c2519i.f8792c;
                float f6 = (f3 * pow2) / c2519i.f8791b;
                float sin = (float) Math.sin(d2);
                float cos2 = (float) Math.cos(d2);
                float f7 = (((0.305f + f6) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (((((cos * 0.25f) * 3846.1538f) * f4) * f5) * 23.0f)));
                float f8 = cos2 * f7;
                float f9 = f7 * sin;
                float f10 = f6 * 460.0f;
                float f11 = ((288.0f * f9) + ((451.0f * f8) + f10)) / 1403.0f;
                float f12 = ((f10 - (891.0f * f8)) - (261.0f * f9)) / 1403.0f;
                float f13 = ((f10 - (f8 * 220.0f)) - (f9 * 6300.0f)) / 1403.0f;
                float max = (float) Math.max(0.0d, (Math.abs(f11) * 27.13d) / (400.0d - Math.abs(f11)));
                float signum = Math.signum(f11);
                float f14 = 100.0f / c2519i.f8797h;
                float pow3 = (float) Math.pow(max, 2.380952380952381d);
                float max2 = (float) Math.max(0.0d, (Math.abs(f12) * 27.13d) / (400.0d - Math.abs(f12)));
                float signum2 = Math.signum(f12);
                float f15 = 100.0f / c2519i.f8797h;
                float pow4 = (float) Math.pow(max2, 2.380952380952381d);
                float max3 = (float) Math.max(0.0d, (Math.abs(f13) * 27.13d) / (400.0d - Math.abs(f13)));
                float signum3 = Math.signum(f13);
                float f16 = 100.0f / c2519i.f8797h;
                float pow5 = (float) Math.pow(max3, 2.380952380952381d);
                float[] fArr = c2519i.f8796g;
                float f17 = ((f14 * signum) * pow3) / fArr[0];
                float f18 = ((f15 * signum2) * pow4) / fArr[1];
                float f19 = ((f16 * signum3) * pow5) / fArr[2];
                float[][] fArr2 = C3102d.f10505i;
                float f20 = fArr2[0][0];
                float f21 = fArr2[0][1];
                float f22 = fArr2[0][2];
                float f23 = fArr2[1][0];
                float f24 = fArr2[1][1];
                float f25 = fArr2[1][2];
                float f26 = fArr2[2][0];
                float f27 = fArr2[2][1];
                return C2694a.m3258a((f22 * f19) + (f21 * f18) + (f20 * f17), (f25 * f19) + (f24 * f18) + (f23 * f17), (f19 * fArr2[2][2]) + (f18 * f27) + (f17 * f26));
            }
        }
        f = 0.0f;
        float pow6 = (float) Math.pow(f / Math.pow(1.64d - Math.pow(0.29d, c2519i.f8795f), 0.73d), 1.1111111111111112d);
        double d22 = (this.f8752a * 3.1415927f) / 180.0f;
        float cos3 = (float) (Math.cos(2.0d + d22) + 3.8d);
        float f32 = c2519i.f8790a;
        float pow22 = (float) Math.pow(this.f8754c / 100.0d, (1.0d / c2519i.f8793d) / c2519i.f8799j);
        float f42 = c2519i.f8794e;
        float f52 = c2519i.f8792c;
        float f62 = (f32 * pow22) / c2519i.f8791b;
        float sin2 = (float) Math.sin(d22);
        float cos22 = (float) Math.cos(d22);
        float f72 = (((0.305f + f62) * 23.0f) * pow6) / (((pow6 * 108.0f) * sin2) + (((11.0f * pow6) * cos22) + (((((cos3 * 0.25f) * 3846.1538f) * f42) * f52) * 23.0f)));
        float f82 = cos22 * f72;
        float f92 = f72 * sin2;
        float f102 = f62 * 460.0f;
        float f112 = ((288.0f * f92) + ((451.0f * f82) + f102)) / 1403.0f;
        float f122 = ((f102 - (891.0f * f82)) - (261.0f * f92)) / 1403.0f;
        float f132 = ((f102 - (f82 * 220.0f)) - (f92 * 6300.0f)) / 1403.0f;
        float max4 = (float) Math.max(0.0d, (Math.abs(f112) * 27.13d) / (400.0d - Math.abs(f112)));
        float signum4 = Math.signum(f112);
        float f142 = 100.0f / c2519i.f8797h;
        float pow32 = (float) Math.pow(max4, 2.380952380952381d);
        float max22 = (float) Math.max(0.0d, (Math.abs(f122) * 27.13d) / (400.0d - Math.abs(f122)));
        float signum22 = Math.signum(f122);
        float f152 = 100.0f / c2519i.f8797h;
        float pow42 = (float) Math.pow(max22, 2.380952380952381d);
        float max32 = (float) Math.max(0.0d, (Math.abs(f132) * 27.13d) / (400.0d - Math.abs(f132)));
        float signum32 = Math.signum(f132);
        float f162 = 100.0f / c2519i.f8797h;
        float pow52 = (float) Math.pow(max32, 2.380952380952381d);
        float[] fArr3 = c2519i.f8796g;
        float f172 = ((f142 * signum4) * pow32) / fArr3[0];
        float f182 = ((f152 * signum22) * pow42) / fArr3[1];
        float f192 = ((f162 * signum32) * pow52) / fArr3[2];
        float[][] fArr22 = C3102d.f10505i;
        float f202 = fArr22[0][0];
        float f212 = fArr22[0][1];
        float f222 = fArr22[0][2];
        float f232 = fArr22[1][0];
        float f242 = fArr22[1][1];
        float f252 = fArr22[1][2];
        float f262 = fArr22[2][0];
        float f272 = fArr22[2][1];
        return C2694a.m3258a((f222 * f192) + (f212 * f182) + (f202 * f172), (f252 * f192) + (f242 * f182) + (f232 * f172), (f192 * fArr22[2][2]) + (f182 * f272) + (f172 * f262));
    }
}
