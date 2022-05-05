package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.motion.widget.MotionInterpolator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/StopLogic.class */
public class StopLogic extends MotionInterpolator {

    /* renamed from: a */
    private float f1646a;

    /* renamed from: b */
    private float f1647b;

    /* renamed from: c */
    private float f1648c;

    /* renamed from: d */
    private float f1649d;

    /* renamed from: e */
    private float f1650e;

    /* renamed from: f */
    private float f1651f;

    /* renamed from: g */
    private float f1652g;

    /* renamed from: h */
    private float f1653h;

    /* renamed from: i */
    private float f1654i;

    /* renamed from: j */
    private int f1655j;

    /* renamed from: k */
    private boolean f1656k = false;

    /* renamed from: l */
    private float f1657l;

    /* renamed from: m */
    private float f1658m;

    /* renamed from: b */
    private float m20955b(float f) {
        float f2 = this.f1649d;
        if (f <= f2) {
            float f3 = this.f1646a;
            return (f3 * f) + ((((this.f1647b - f3) * f) * f) / (f2 * 2.0f));
        }
        int i = this.f1655j;
        if (i == 1) {
            return this.f1652g;
        }
        float f4 = f - f2;
        float f5 = this.f1650e;
        if (f4 < f5) {
            float f6 = this.f1652g;
            float f7 = this.f1647b;
            return f6 + (f7 * f4) + ((((this.f1648c - f7) * f4) * f4) / (f5 * 2.0f));
        } else if (i == 2) {
            return this.f1653h;
        } else {
            float f8 = f4 - f5;
            float f9 = this.f1651f;
            if (f8 >= f9) {
                return this.f1654i;
            }
            float f10 = this.f1653h;
            float f11 = this.f1648c;
            return (f10 + (f11 * f8)) - (((f11 * f8) * f8) / (f9 * 2.0f));
        }
    }

    /* renamed from: e */
    private void m20952e(float f, float f2, float f3, float f4, float f5) {
        float f6 = f;
        if (f == 0.0f) {
            f6 = 1.0E-4f;
        }
        this.f1646a = f6;
        float f7 = f6 / f3;
        float f8 = (f7 * f6) / 2.0f;
        if (f6 < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f6) / f3) * f6) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f1655j = 2;
                this.f1646a = f6;
                this.f1647b = sqrt;
                this.f1648c = 0.0f;
                float f9 = (sqrt - f6) / f3;
                this.f1649d = f9;
                this.f1650e = sqrt / f3;
                this.f1652g = ((f6 + sqrt) * f9) / 2.0f;
                this.f1653h = f2;
                this.f1654i = f2;
                return;
            }
            this.f1655j = 3;
            this.f1646a = f6;
            this.f1647b = f4;
            this.f1648c = f4;
            float f10 = (f4 - f6) / f3;
            this.f1649d = f10;
            float f11 = f4 / f3;
            this.f1651f = f11;
            float f12 = ((f6 + f4) * f10) / 2.0f;
            float f13 = (f11 * f4) / 2.0f;
            this.f1650e = ((f2 - f12) - f13) / f4;
            this.f1652g = f12;
            this.f1653h = f2 - f13;
            this.f1654i = f2;
        } else if (f8 >= f2) {
            this.f1655j = 1;
            this.f1646a = f6;
            this.f1647b = 0.0f;
            this.f1652g = f2;
            this.f1649d = (2.0f * f2) / f6;
        } else {
            float f14 = f2 - f8;
            float f15 = f14 / f6;
            if (f15 + f7 < f5) {
                this.f1655j = 2;
                this.f1646a = f6;
                this.f1647b = f6;
                this.f1648c = 0.0f;
                this.f1652g = f14;
                this.f1653h = f2;
                this.f1649d = f15;
                this.f1650e = f7;
                return;
            }
            float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f6 * f6) / 2.0f));
            float f16 = (sqrt2 - f6) / f3;
            this.f1649d = f16;
            float f17 = sqrt2 / f3;
            this.f1650e = f17;
            if (sqrt2 < f4) {
                this.f1655j = 2;
                this.f1646a = f6;
                this.f1647b = sqrt2;
                this.f1648c = 0.0f;
                this.f1649d = f16;
                this.f1650e = f17;
                this.f1652g = ((f6 + sqrt2) * f16) / 2.0f;
                this.f1653h = f2;
                return;
            }
            this.f1655j = 3;
            this.f1646a = f6;
            this.f1647b = f4;
            this.f1648c = f4;
            float f18 = (f4 - f6) / f3;
            this.f1649d = f18;
            float f19 = f4 / f3;
            this.f1651f = f19;
            float f20 = ((f6 + f4) * f18) / 2.0f;
            float f21 = (f19 * f4) / 2.0f;
            this.f1650e = ((f2 - f20) - f21) / f4;
            this.f1652g = f20;
            this.f1653h = f2 - f21;
            this.f1654i = f2;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    /* renamed from: a */
    public float mo20710a() {
        return this.f1656k ? -m20953d(this.f1658m) : m20953d(this.f1658m);
    }

    /* renamed from: c */
    public void m20954c(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f1657l = f;
        boolean z = f > f2;
        this.f1656k = z;
        if (z) {
            m20952e(-f3, f - f2, f5, f6, f4);
        } else {
            m20952e(f3, f2 - f, f5, f6, f4);
        }
    }

    /* renamed from: d */
    public float m20953d(float f) {
        float f2 = this.f1649d;
        if (f <= f2) {
            float f3 = this.f1646a;
            return f3 + (((this.f1647b - f3) * f) / f2);
        }
        int i = this.f1655j;
        if (i == 1) {
            return 0.0f;
        }
        float f4 = f - f2;
        float f5 = this.f1650e;
        if (f4 < f5) {
            float f6 = this.f1647b;
            return f6 + (((this.f1648c - f6) * f4) / f5);
        } else if (i == 2) {
            return this.f1653h;
        } else {
            float f7 = f4 - f5;
            float f8 = this.f1651f;
            if (f7 >= f8) {
                return this.f1654i;
            }
            float f9 = this.f1648c;
            return f9 - ((f7 * f9) / f8);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float b = m20955b(f);
        this.f1658m = f;
        return this.f1656k ? this.f1657l - b : this.f1657l + b;
    }
}
