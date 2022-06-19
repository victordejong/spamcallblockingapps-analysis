package androidx.constraintlayout.motion.widget;

import p1727n3.p1795i.p1796a.p1798b.AbstractanimationInterpolatorC26312o;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$b.class */
public class MotionLayout$b extends AbstractanimationInterpolatorC26312o {

    /* renamed from: a */
    public float f537a = 0.0f;

    /* renamed from: b */
    public float f538b = 0.0f;

    /* renamed from: c */
    public float f539c;

    /* renamed from: d */
    public final /* synthetic */ MotionLayout f540d;

    public MotionLayout$b(MotionLayout motionLayout) {
        this.f540d = motionLayout;
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractanimationInterpolatorC26312o
    /* renamed from: a */
    public float mo2194a() {
        return this.f540d.v;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = this.f537a;
        if (f2 > 0.0f) {
            float f3 = this.f539c;
            float f4 = f;
            if (f2 / f3 < f) {
                f4 = f2 / f3;
            }
            this.f540d.v = f2 - (f3 * f4);
            return ((f2 * f4) - (((f3 * f4) * f4) / 2.0f)) + this.f538b;
        }
        float f5 = -f2;
        float f6 = this.f539c;
        float f7 = f;
        if (f5 / f6 < f) {
            f7 = (-f2) / f6;
        }
        this.f540d.v = (f6 * f7) + f2;
        return (((f6 * f7) * f7) / 2.0f) + (f2 * f7) + this.f538b;
    }
}
