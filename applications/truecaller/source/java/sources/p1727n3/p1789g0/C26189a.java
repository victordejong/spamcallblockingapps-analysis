package p1727n3.p1789g0;

import android.graphics.Path;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.g0.a */
/* loaded from: classes-dex2jar.jar:n3/g0/a.class */
public class C26189a extends AbstractC26205h {

    /* renamed from: d */
    public static final float f73031d = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: a */
    public float f73032a = 0.0f;

    /* renamed from: b */
    public float f73033b = 0.0f;

    /* renamed from: c */
    public float f73034c = f73031d;

    /* renamed from: b */
    public static float m2561b(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @Override // p1727n3.p1789g0.AbstractC26205h
    /* renamed from: a */
    public Path mo2525a(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        Path path = new Path();
        path.moveTo(f, f2);
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float f10 = (f9 * f9) + (f8 * f8);
        float f11 = (f + f3) / 2.0f;
        float f12 = (f2 + f4) / 2.0f;
        float f13 = 0.25f * f10;
        boolean z = f2 > f4;
        if (Math.abs(f8) < Math.abs(f9)) {
            float abs = Math.abs(f10 / (f9 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f7 = f3;
            } else {
                f6 = abs + f2;
                f7 = f;
            }
            f5 = this.f73033b;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f6 = f2;
                f7 = f14 + f;
            } else {
                f7 = f3 - f14;
                f6 = f4;
            }
            f5 = this.f73032a;
        }
        float f15 = f13 * f5 * f5;
        float f16 = f11 - f7;
        float f17 = f12 - f6;
        float f18 = (f17 * f17) + (f16 * f16);
        float f19 = this.f73034c;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
        }
        float f21 = f6;
        float f22 = f7;
        if (f15 != 0.0f) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f22 = C22128a.m8646a(f7, f11, sqrt, f11);
            f21 = C22128a.m8646a(f6, f12, sqrt, f12);
        }
        path.cubicTo((f + f22) / 2.0f, (f2 + f21) / 2.0f, (f22 + f3) / 2.0f, (f21 + f4) / 2.0f, f3, f4);
        return path;
    }
}
