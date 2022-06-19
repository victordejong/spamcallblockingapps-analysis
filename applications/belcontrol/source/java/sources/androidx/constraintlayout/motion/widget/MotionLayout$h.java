package androidx.constraintlayout.motion.widget;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$h.class */
public class MotionLayout$h {

    /* renamed from: a */
    public float f649a = Float.NaN;

    /* renamed from: b */
    public float f650b = Float.NaN;

    /* renamed from: c */
    public int f651c = -1;

    /* renamed from: d */
    public int f652d = -1;

    /* renamed from: e */
    public final /* synthetic */ MotionLayout f653e;

    public MotionLayout$h(MotionLayout motionLayout) {
        this.f653e = motionLayout;
    }

    /* renamed from: a */
    public void m6880a() {
        int i = this.f651c;
        if (i != -1 || this.f652d != -1) {
            if (i == -1) {
                this.f653e.b0(this.f652d);
            } else {
                int i2 = this.f652d;
                if (i2 == -1) {
                    this.f653e.setState(i, -1, -1);
                } else {
                    this.f653e.setTransition(i, i2);
                }
            }
            this.f653e.setState(MotionLayout$j.SETUP);
        }
        if (Float.isNaN(this.f650b)) {
            if (Float.isNaN(this.f649a)) {
                return;
            }
            this.f653e.setProgress(this.f649a);
            return;
        }
        this.f653e.setProgress(this.f649a, this.f650b);
        this.f649a = Float.NaN;
        this.f650b = Float.NaN;
        this.f651c = -1;
        this.f652d = -1;
    }

    /* renamed from: b */
    public Bundle m6879b() {
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", this.f649a);
        bundle.putFloat("motion.velocity", this.f650b);
        bundle.putInt("motion.StartState", this.f651c);
        bundle.putInt("motion.EndState", this.f652d);
        return bundle;
    }

    /* renamed from: c */
    public void m6878c() {
        this.f652d = MotionLayout.i(this.f653e);
        this.f651c = MotionLayout.j(this.f653e);
        this.f650b = this.f653e.getVelocity();
        this.f649a = this.f653e.getProgress();
    }

    /* renamed from: d */
    public void m6877d(int i) {
        this.f652d = i;
    }

    /* renamed from: e */
    public void m6876e(float f) {
        this.f649a = f;
    }

    /* renamed from: f */
    public void m6875f(int i) {
        this.f651c = i;
    }

    /* renamed from: g */
    public void m6874g(Bundle bundle) {
        this.f649a = bundle.getFloat("motion.progress");
        this.f650b = bundle.getFloat("motion.velocity");
        this.f651c = bundle.getInt("motion.StartState");
        this.f652d = bundle.getInt("motion.EndState");
    }

    /* renamed from: h */
    public void m6873h(float f) {
        this.f650b = f;
    }
}
