package p020b.p037f.p038a.p039a;

import androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0413o;
/* renamed from: b.f.a.a.g */
/* loaded from: classes-dex2jar.jar:b/f/a/a/g.class */
public class C1513g extends AbstractanimationInterpolatorC0413o {

    /* renamed from: a */
    private float f6029a;

    /* renamed from: b */
    private float f6030b;

    /* renamed from: c */
    private float f6031c;

    /* renamed from: d */
    private float f6032d;

    /* renamed from: e */
    private float f6033e;

    /* renamed from: f */
    private float f6034f;

    /* renamed from: g */
    private float f6035g;

    /* renamed from: h */
    private float f6036h;

    /* renamed from: i */
    private float f6037i;

    /* renamed from: j */
    private int f6038j;

    /* renamed from: k */
    private String f6039k;

    /* renamed from: l */
    private boolean f6040l = false;

    /* renamed from: m */
    private float f6041m;

    /* renamed from: n */
    private float f6042n;

    /* renamed from: b */
    private float m29863b(float f) {
        float f2 = this.f6032d;
        if (f <= f2) {
            float f3 = this.f6029a;
            return (f3 * f) + ((((this.f6030b - f3) * f) * f) / (f2 * 2.0f));
        }
        int i = this.f6038j;
        if (i == 1) {
            return this.f6035g;
        }
        float f4 = f - f2;
        float f5 = this.f6033e;
        if (f4 < f5) {
            float f6 = this.f6035g;
            float f7 = this.f6030b;
            return f6 + (f7 * f4) + ((((this.f6031c - f7) * f4) * f4) / (f5 * 2.0f));
        } else if (i == 2) {
            return this.f6036h;
        } else {
            float f8 = f4 - f5;
            float f9 = this.f6034f;
            if (f8 >= f9) {
                return this.f6037i;
            }
            float f10 = this.f6036h;
            float f11 = this.f6031c;
            return (f10 + (f11 * f8)) - (((f11 * f8) * f8) / (f9 * 2.0f));
        }
    }

    /* renamed from: e */
    private void m29860e(float f, float f2, float f3, float f4, float f5) {
        float f6 = f;
        if (f == 0.0f) {
            f6 = 1.0E-4f;
        }
        this.f6029a = f6;
        float f7 = f6 / f3;
        float f8 = (f7 * f6) / 2.0f;
        if (f6 < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f6) / f3) * f6) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f6039k = "backward accelerate, decelerate";
                this.f6038j = 2;
                this.f6029a = f6;
                this.f6030b = sqrt;
                this.f6031c = 0.0f;
                float f9 = (sqrt - f6) / f3;
                this.f6032d = f9;
                this.f6033e = sqrt / f3;
                this.f6035g = ((f6 + sqrt) * f9) / 2.0f;
                this.f6036h = f2;
                this.f6037i = f2;
                return;
            }
            this.f6039k = "backward accelerate cruse decelerate";
            this.f6038j = 3;
            this.f6029a = f6;
            this.f6030b = f4;
            this.f6031c = f4;
            float f10 = (f4 - f6) / f3;
            this.f6032d = f10;
            float f11 = f4 / f3;
            this.f6034f = f11;
            float f12 = ((f6 + f4) * f10) / 2.0f;
            float f13 = (f11 * f4) / 2.0f;
            this.f6033e = ((f2 - f12) - f13) / f4;
            this.f6035g = f12;
            this.f6036h = f2 - f13;
            this.f6037i = f2;
        } else if (f8 >= f2) {
            this.f6039k = "hard stop";
            this.f6038j = 1;
            this.f6029a = f6;
            this.f6030b = 0.0f;
            this.f6035g = f2;
            this.f6032d = (2.0f * f2) / f6;
        } else {
            float f14 = f2 - f8;
            float f15 = f14 / f6;
            if (f15 + f7 < f5) {
                this.f6039k = "cruse decelerate";
                this.f6038j = 2;
                this.f6029a = f6;
                this.f6030b = f6;
                this.f6031c = 0.0f;
                this.f6035g = f14;
                this.f6036h = f2;
                this.f6032d = f15;
                this.f6033e = f7;
                return;
            }
            float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f6 * f6) / 2.0f));
            float f16 = (sqrt2 - f6) / f3;
            this.f6032d = f16;
            float f17 = sqrt2 / f3;
            this.f6033e = f17;
            if (sqrt2 < f4) {
                this.f6039k = "accelerate decelerate";
                this.f6038j = 2;
                this.f6029a = f6;
                this.f6030b = sqrt2;
                this.f6031c = 0.0f;
                this.f6032d = f16;
                this.f6033e = f17;
                this.f6035g = ((f6 + sqrt2) * f16) / 2.0f;
                this.f6036h = f2;
                return;
            }
            this.f6039k = "accelerate cruse decelerate";
            this.f6038j = 3;
            this.f6029a = f6;
            this.f6030b = f4;
            this.f6031c = f4;
            float f18 = (f4 - f6) / f3;
            this.f6032d = f18;
            float f19 = f4 / f3;
            this.f6034f = f19;
            float f20 = ((f6 + f4) * f18) / 2.0f;
            float f21 = (f19 * f4) / 2.0f;
            this.f6033e = ((f2 - f20) - f21) / f4;
            this.f6035g = f20;
            this.f6036h = f2 - f21;
            this.f6037i = f2;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0413o
    /* renamed from: a */
    public float mo29864a() {
        return this.f6040l ? -m29861d(this.f6042n) : m29861d(this.f6042n);
    }

    /* renamed from: c */
    public void m29862c(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f6041m = f;
        boolean z = f > f2;
        this.f6040l = z;
        if (z) {
            m29860e(-f3, f - f2, f5, f6, f4);
        } else {
            m29860e(f3, f2 - f, f5, f6, f4);
        }
    }

    /* renamed from: d */
    public float m29861d(float f) {
        float f2 = this.f6032d;
        if (f <= f2) {
            float f3 = this.f6029a;
            return f3 + (((this.f6030b - f3) * f) / f2);
        }
        int i = this.f6038j;
        if (i == 1) {
            return 0.0f;
        }
        float f4 = f - f2;
        float f5 = this.f6033e;
        if (f4 < f5) {
            float f6 = this.f6030b;
            return f6 + (((this.f6031c - f6) * f4) / f5);
        } else if (i == 2) {
            return this.f6036h;
        } else {
            float f7 = f4 - f5;
            float f8 = this.f6034f;
            if (f7 >= f8) {
                return this.f6037i;
            }
            float f9 = this.f6031c;
            return f9 - ((f7 * f9) / f8);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float m29863b = m29863b(f);
        this.f6042n = f;
        return this.f6040l ? this.f6041m - m29863b : this.f6041m + m29863b;
    }
}
