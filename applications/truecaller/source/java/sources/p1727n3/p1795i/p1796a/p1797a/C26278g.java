package p1727n3.p1795i.p1796a.p1797a;

import p1727n3.p1795i.p1796a.p1798b.AbstractanimationInterpolatorC26312o;
/* renamed from: n3.i.a.a.g */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/g.class */
public class C26278g extends AbstractanimationInterpolatorC26312o {

    /* renamed from: a */
    public float f73296a;

    /* renamed from: b */
    public float f73297b;

    /* renamed from: c */
    public float f73298c;

    /* renamed from: d */
    public float f73299d;

    /* renamed from: e */
    public float f73300e;

    /* renamed from: f */
    public float f73301f;

    /* renamed from: g */
    public float f73302g;

    /* renamed from: h */
    public float f73303h;

    /* renamed from: i */
    public float f73304i;

    /* renamed from: j */
    public int f73305j;

    /* renamed from: k */
    public boolean f73306k = false;

    /* renamed from: l */
    public float f73307l;

    /* renamed from: m */
    public float f73308m;

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractanimationInterpolatorC26312o
    /* renamed from: a */
    public float mo2194a() {
        return this.f73306k ? -m2219c(this.f73308m) : m2219c(this.f73308m);
    }

    /* renamed from: b */
    public void m2220b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f73307l = f;
        boolean z = f > f2;
        this.f73306k = z;
        if (z) {
            m2218d(-f3, f - f2, f5, f6, f4);
        } else {
            m2218d(f3, f2 - f, f5, f6, f4);
        }
    }

    /* renamed from: c */
    public float m2219c(float f) {
        float f2;
        float f3;
        float f4;
        float f5 = this.f73299d;
        if (f <= f5) {
            float f6 = this.f73296a;
            f4 = this.f73297b;
            f2 = f;
            f3 = f6;
        } else {
            int i = this.f73305j;
            if (i == 1) {
                return 0.0f;
            }
            f2 = f - f5;
            f5 = this.f73300e;
            if (f2 >= f5) {
                if (i == 2) {
                    return this.f73303h;
                }
                float f7 = f2 - f5;
                float f8 = this.f73301f;
                if (f7 >= f8) {
                    return this.f73304i;
                }
                float f9 = this.f73298c;
                return f9 - ((f7 * f9) / f8);
            }
            f3 = this.f73297b;
            f4 = this.f73298c;
        }
        return (((f4 - f3) * f2) / f5) + f3;
    }

    /* renamed from: d */
    public final void m2218d(float f, float f2, float f3, float f4, float f5) {
        float f6 = f;
        if (f == 0.0f) {
            f6 = 1.0E-4f;
        }
        this.f73296a = f6;
        float f7 = f6 / f3;
        float f8 = (f7 * f6) / 2.0f;
        if (f6 < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f6) / f3) * f6) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f73305j = 2;
                this.f73296a = f6;
                this.f73297b = sqrt;
                this.f73298c = 0.0f;
                float f9 = (sqrt - f6) / f3;
                this.f73299d = f9;
                this.f73300e = sqrt / f3;
                this.f73302g = ((f6 + sqrt) * f9) / 2.0f;
                this.f73303h = f2;
                this.f73304i = f2;
                return;
            }
            this.f73305j = 3;
            this.f73296a = f6;
            this.f73297b = f4;
            this.f73298c = f4;
            float f10 = (f4 - f6) / f3;
            this.f73299d = f10;
            float f11 = f4 / f3;
            this.f73301f = f11;
            float f12 = ((f6 + f4) * f10) / 2.0f;
            float f13 = (f11 * f4) / 2.0f;
            this.f73300e = ((f2 - f12) - f13) / f4;
            this.f73302g = f12;
            this.f73303h = f2 - f13;
            this.f73304i = f2;
        } else if (f8 >= f2) {
            this.f73305j = 1;
            this.f73296a = f6;
            this.f73297b = 0.0f;
            this.f73302g = f2;
            this.f73299d = (2.0f * f2) / f6;
        } else {
            float f14 = f2 - f8;
            float f15 = f14 / f6;
            if (f15 + f7 < f5) {
                this.f73305j = 2;
                this.f73296a = f6;
                this.f73297b = f6;
                this.f73298c = 0.0f;
                this.f73302g = f14;
                this.f73303h = f2;
                this.f73299d = f15;
                this.f73300e = f7;
                return;
            }
            float sqrt2 = (float) Math.sqrt(((f6 * f6) / 2.0f) + (f3 * f2));
            float f16 = (sqrt2 - f6) / f3;
            this.f73299d = f16;
            float f17 = sqrt2 / f3;
            this.f73300e = f17;
            if (sqrt2 < f4) {
                this.f73305j = 2;
                this.f73296a = f6;
                this.f73297b = sqrt2;
                this.f73298c = 0.0f;
                this.f73299d = f16;
                this.f73300e = f17;
                this.f73302g = ((f6 + sqrt2) * f16) / 2.0f;
                this.f73303h = f2;
                return;
            }
            this.f73305j = 3;
            this.f73296a = f6;
            this.f73297b = f4;
            this.f73298c = f4;
            float f18 = (f4 - f6) / f3;
            this.f73299d = f18;
            float f19 = f4 / f3;
            this.f73301f = f19;
            float f20 = ((f6 + f4) * f18) / 2.0f;
            float f21 = (f19 * f4) / 2.0f;
            this.f73300e = ((f2 - f20) - f21) / f4;
            this.f73302g = f20;
            this.f73303h = f2 - f21;
            this.f73304i = f2;
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2;
        float f3 = this.f73299d;
        if (f <= f3) {
            float f4 = this.f73296a;
            f2 = ((((this.f73297b - f4) * f) * f) / (f3 * 2.0f)) + (f4 * f);
        } else {
            int i = this.f73305j;
            if (i == 1) {
                f2 = this.f73302g;
            } else {
                float f5 = f - f3;
                float f6 = this.f73300e;
                if (f5 < f6) {
                    float f7 = this.f73302g;
                    float f8 = this.f73297b;
                    f2 = ((((this.f73298c - f8) * f5) * f5) / (f6 * 2.0f)) + (f8 * f5) + f7;
                } else if (i == 2) {
                    f2 = this.f73303h;
                } else {
                    float f9 = f5 - f6;
                    float f10 = this.f73301f;
                    if (f9 < f10) {
                        float f11 = this.f73303h;
                        float f12 = this.f73298c * f9;
                        f2 = (f11 + f12) - ((f12 * f9) / (f10 * 2.0f));
                    } else {
                        f2 = this.f73304i;
                    }
                }
            }
        }
        this.f73308m = f;
        return this.f73306k ? this.f73307l - f2 : this.f73307l + f2;
    }
}
