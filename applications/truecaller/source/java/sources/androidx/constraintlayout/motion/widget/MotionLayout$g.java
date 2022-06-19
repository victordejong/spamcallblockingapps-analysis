package androidx.constraintlayout.motion.widget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$g.class */
public class MotionLayout$g {

    /* renamed from: a */
    public float f565a = Float.NaN;

    /* renamed from: b */
    public float f566b = Float.NaN;

    /* renamed from: c */
    public int f567c = -1;

    /* renamed from: d */
    public int f568d = -1;

    /* renamed from: e */
    public final /* synthetic */ MotionLayout f569e;

    public MotionLayout$g(MotionLayout motionLayout) {
        this.f569e = motionLayout;
    }

    /* renamed from: a */
    public void m43040a() {
        int i = this.f567c;
        if (i != -1 || this.f568d != -1) {
            if (i == -1) {
                this.f569e.t1(this.f568d);
            } else {
                int i2 = this.f568d;
                if (i2 == -1) {
                    this.f569e.e1(i, -1, -1);
                } else {
                    this.f569e.q1(i, i2);
                }
            }
            this.f569e.setState(MotionLayout$i.SETUP);
        }
        if (Float.isNaN(this.f566b)) {
            if (Float.isNaN(this.f565a)) {
                return;
            }
            this.f569e.setProgress(this.f565a);
            return;
        }
        MotionLayout motionLayout = this.f569e;
        float f = this.f565a;
        float f2 = this.f566b;
        if (!motionLayout.isAttachedToWindow()) {
            if (motionLayout.H0 == null) {
                motionLayout.H0 = new MotionLayout$g(motionLayout);
            }
            MotionLayout$g motionLayout$g = motionLayout.H0;
            motionLayout$g.f565a = f;
            motionLayout$g.f566b = f2;
        } else {
            motionLayout.setProgress(f);
            motionLayout.setState(MotionLayout$i.MOVING);
            motionLayout.v = f2;
            motionLayout.f1(1.0f);
        }
        this.f565a = Float.NaN;
        this.f566b = Float.NaN;
        this.f567c = -1;
        this.f568d = -1;
    }
}
