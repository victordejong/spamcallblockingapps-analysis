package androidx.constraintlayout.motion.widget;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$h.class */
class MotionLayout$h {

    /* renamed from: a */
    float f831a = Float.NaN;

    /* renamed from: b */
    float f832b = Float.NaN;

    /* renamed from: c */
    int f833c = -1;

    /* renamed from: d */
    int f834d = -1;

    /* renamed from: e */
    final /* synthetic */ MotionLayout f835e;

    MotionLayout$h(MotionLayout motionLayout) {
        this.f835e = motionLayout;
    }

    /* renamed from: a */
    void m14296a() {
        int i = this.f833c;
        if (!(i == -1 && this.f834d == -1)) {
            if (i == -1) {
                this.f835e.r0(this.f834d);
            } else {
                int i2 = this.f834d;
                if (i2 == -1) {
                    this.f835e.setState(i, -1, -1);
                } else {
                    this.f835e.setTransition(i, i2);
                }
            }
            this.f835e.setState(MotionLayout$TransitionState.SETUP);
        }
        if (!Float.isNaN(this.f832b)) {
            this.f835e.setProgress(this.f831a, this.f832b);
            this.f831a = Float.NaN;
            this.f832b = Float.NaN;
            this.f833c = -1;
            this.f834d = -1;
        } else if (!Float.isNaN(this.f831a)) {
            this.f835e.setProgress(this.f831a);
        }
    }

    /* renamed from: b */
    public Bundle m14295b() {
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", this.f831a);
        bundle.putFloat("motion.velocity", this.f832b);
        bundle.putInt("motion.StartState", this.f833c);
        bundle.putInt("motion.EndState", this.f834d);
        return bundle;
    }

    /* renamed from: c */
    public void m14294c() {
        this.f834d = MotionLayout.y(this.f835e);
        this.f833c = MotionLayout.z(this.f835e);
        this.f832b = this.f835e.getVelocity();
        this.f831a = this.f835e.getProgress();
    }

    /* renamed from: d */
    public void m14293d(int i) {
        this.f834d = i;
    }

    /* renamed from: e */
    public void m14292e(float f) {
        this.f831a = f;
    }

    /* renamed from: f */
    public void m14291f(int i) {
        this.f833c = i;
    }

    /* renamed from: g */
    public void m14290g(Bundle bundle) {
        this.f831a = bundle.getFloat("motion.progress");
        this.f832b = bundle.getFloat("motion.velocity");
        this.f833c = bundle.getInt("motion.StartState");
        this.f834d = bundle.getInt("motion.EndState");
    }

    /* renamed from: h */
    public void m14289h(float f) {
        this.f832b = f;
    }
}
