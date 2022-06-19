package p000;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import p000.mi1;
/* renamed from: ki1 */
/* loaded from: classes3-dex2jar.jar:ki1.class */
public class ki1 extends ni1 {

    /* renamed from: f */
    public float f6860f;

    /* renamed from: g */
    public float f6861g;

    /* renamed from: h */
    public float f6862h;

    /* renamed from: i */
    public boolean f6863i = true;

    public ki1(mi1.C1481a... c1481aArr) {
        super(c1481aArr);
    }

    @Override // p000.ni1
    /* renamed from: b */
    public Object mo1164b(float f) {
        return Float.valueOf(m1390f(f));
    }

    /* renamed from: e */
    public ki1 clone() {
        ArrayList<mi1> arrayList = this.f7150d;
        int size = arrayList.size();
        mi1.C1481a[] c1481aArr = new mi1.C1481a[size];
        for (int i = 0; i < size; i++) {
            c1481aArr[i] = (mi1.C1481a) arrayList.get(i).clone();
        }
        return new ki1(c1481aArr);
    }

    /* renamed from: f */
    public float m1390f(float f) {
        Object mo1234f;
        int i = this.f7147a;
        if (i != 2) {
            if (f > 0.0f) {
                if (f < 1.0f) {
                    mi1.C1481a c1481a = (mi1.C1481a) this.f7150d.get(0);
                    int i2 = 1;
                    while (true) {
                        int i3 = this.f7147a;
                        if (i2 >= i3) {
                            mo1234f = this.f7150d.get(i3 - 1).mo1234f();
                            break;
                        }
                        mi1.C1481a c1481a2 = (mi1.C1481a) this.f7150d.get(i2);
                        if (f < c1481a2.m1240c()) {
                            Interpolator m1239d = c1481a2.m1239d();
                            float f2 = f;
                            if (m1239d != null) {
                                f2 = m1239d.getInterpolation(f);
                            }
                            float m1240c = (f2 - c1481a.m1240c()) / (c1481a2.m1240c() - c1481a.m1240c());
                            float m1232k = c1481a.m1232k();
                            float m1232k2 = c1481a2.m1232k();
                            pi1 pi1Var = this.f7151e;
                            return pi1Var == null ? m1232k + (m1240c * (m1232k2 - m1232k)) : ((Number) pi1Var.evaluate(m1240c, Float.valueOf(m1232k), Float.valueOf(m1232k2))).floatValue();
                        }
                        i2++;
                        c1481a = c1481a2;
                    }
                } else {
                    mi1.C1481a c1481a3 = (mi1.C1481a) this.f7150d.get(i - 2);
                    mi1.C1481a c1481a4 = (mi1.C1481a) this.f7150d.get(this.f7147a - 1);
                    float m1232k3 = c1481a3.m1232k();
                    float m1232k4 = c1481a4.m1232k();
                    float m1240c2 = c1481a3.m1240c();
                    float m1240c3 = c1481a4.m1240c();
                    Interpolator m1239d2 = c1481a4.m1239d();
                    float f3 = f;
                    if (m1239d2 != null) {
                        f3 = m1239d2.getInterpolation(f);
                    }
                    float f4 = (f3 - m1240c2) / (m1240c3 - m1240c2);
                    pi1 pi1Var2 = this.f7151e;
                    return pi1Var2 == null ? m1232k3 + (f4 * (m1232k4 - m1232k3)) : ((Number) pi1Var2.evaluate(f4, Float.valueOf(m1232k3), Float.valueOf(m1232k4))).floatValue();
                }
            } else {
                mi1.C1481a c1481a5 = (mi1.C1481a) this.f7150d.get(0);
                mi1.C1481a c1481a6 = (mi1.C1481a) this.f7150d.get(1);
                float m1232k5 = c1481a5.m1232k();
                float m1232k6 = c1481a6.m1232k();
                float m1240c4 = c1481a5.m1240c();
                float m1240c5 = c1481a6.m1240c();
                Interpolator m1239d3 = c1481a6.m1239d();
                float f5 = f;
                if (m1239d3 != null) {
                    f5 = m1239d3.getInterpolation(f);
                }
                float f6 = (f5 - m1240c4) / (m1240c5 - m1240c4);
                pi1 pi1Var3 = this.f7151e;
                return pi1Var3 == null ? m1232k5 + (f6 * (m1232k6 - m1232k5)) : ((Number) pi1Var3.evaluate(f6, Float.valueOf(m1232k5), Float.valueOf(m1232k6))).floatValue();
            }
        } else {
            if (this.f6863i) {
                this.f6863i = false;
                this.f6860f = ((mi1.C1481a) this.f7150d.get(0)).m1232k();
                float m1232k7 = ((mi1.C1481a) this.f7150d.get(1)).m1232k();
                this.f6861g = m1232k7;
                this.f6862h = m1232k7 - this.f6860f;
            }
            Interpolator interpolator = this.f7149c;
            float f7 = f;
            if (interpolator != null) {
                f7 = interpolator.getInterpolation(f);
            }
            pi1 pi1Var4 = this.f7151e;
            if (pi1Var4 == null) {
                return this.f6860f + (f7 * this.f6862h);
            }
            mo1234f = pi1Var4.evaluate(f7, Float.valueOf(this.f6860f), Float.valueOf(this.f6861g));
        }
        return ((Number) mo1234f).floatValue();
    }
}
