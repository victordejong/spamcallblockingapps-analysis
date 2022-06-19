package p000;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.content.Context;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
@TargetApi(21)
/* renamed from: wb1 */
/* loaded from: classes3-dex2jar.jar:wb1.class */
public class wb1 {

    /* renamed from: b */
    public float f8537b;

    /* renamed from: c */
    public float f8538c;

    /* renamed from: d */
    public float f8539d;

    /* renamed from: e */
    public C1710b f8540e = new C1710b();

    /* renamed from: a */
    public Interpolator f8536a = new PathInterpolator(0.0f, 0.0f, 0.35f, 1.0f);

    /* renamed from: wb1$b */
    /* loaded from: classes3-dex2jar.jar:wb1$b.class */
    public static class C1710b {

        /* renamed from: a */
        public Interpolator f8541a;

        /* renamed from: b */
        public long f8542b;

        public C1710b() {
        }
    }

    /* renamed from: wb1$c */
    /* loaded from: classes3-dex2jar.jar:wb1$c.class */
    public static final class animationInterpolatorC1711c implements Interpolator {

        /* renamed from: a */
        public Interpolator f8543a;

        /* renamed from: b */
        public Interpolator f8544b;

        /* renamed from: c */
        public Interpolator f8545c;

        public animationInterpolatorC1711c(Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3) {
            this.f8543a = interpolator;
            this.f8544b = interpolator2;
            this.f8545c = interpolator3;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float interpolation = this.f8545c.getInterpolation(f);
            return ((1.0f - interpolation) * this.f8543a.getInterpolation(f)) + (interpolation * this.f8544b.getInterpolation(f));
        }
    }

    /* renamed from: wb1$d */
    /* loaded from: classes3-dex2jar.jar:wb1$d.class */
    public static final class animationInterpolatorC1712d implements Interpolator {

        /* renamed from: a */
        public float f8546a;

        /* renamed from: b */
        public float f8547b;

        /* renamed from: c */
        public float f8548c;

        public animationInterpolatorC1712d(float f, float f2, float f3) {
            this.f8546a = f;
            this.f8547b = f2;
            this.f8548c = f3;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return ((f * this.f8546a) * this.f8547b) / this.f8548c;
        }
    }

    public wb1(Context context, float f) {
        this.f8538c = f;
        this.f8537b = context.getResources().getDisplayMetrics().density * 250.0f;
        this.f8539d = context.getResources().getDisplayMetrics().density * 3000.0f;
    }

    /* renamed from: a */
    public void m268a(Animator animator, float f, float f2, float f3) {
        m267b(animator, f, f2, f3, Math.abs(f2 - f));
    }

    /* renamed from: b */
    public void m267b(Animator animator, float f, float f2, float f3, float f4) {
        C1710b m262g = m262g(f, f2, f3, f4);
        animator.setDuration(m262g.f8542b);
        animator.setInterpolator(m262g.f8541a);
    }

    /* renamed from: c */
    public void m266c(Animator animator, float f, float f2, float f3, float f4) {
        C1710b m264e = m264e(f, f2, f3, f4);
        animator.setDuration(m264e.f8542b);
        animator.setInterpolator(m264e.f8541a);
    }

    /* renamed from: d */
    public final float m265d(float f) {
        float f2 = this.f8537b;
        float max = Math.max(0.0f, Math.min(1.0f, (f - f2) / (this.f8539d - f2)));
        return ((1.0f - max) * 0.4f) + (max * 0.5f);
    }

    /* renamed from: e */
    public final C1710b m264e(float f, float f2, float f3, float f4) {
        float f5 = f2 - f;
        float pow = (float) (this.f8538c * Math.pow(Math.abs(f5) / f4, 0.5d));
        float abs = Math.abs(f5);
        float abs2 = Math.abs(f3);
        float m265d = m265d(abs2);
        float f6 = m265d / 0.5f;
        PathInterpolator pathInterpolator = new PathInterpolator(0.0f, 0.0f, 0.5f, m265d);
        float f7 = (f6 * abs) / abs2;
        if (f7 <= pow) {
            this.f8540e.f8541a = pathInterpolator;
            pow = f7;
        } else if (abs2 >= this.f8537b) {
            this.f8540e.f8541a = new animationInterpolatorC1711c(new animationInterpolatorC1712d(pow, abs2, abs), pathInterpolator, this.f8536a);
        } else {
            this.f8540e.f8541a = zb1.f8788a;
        }
        C1710b c1710b = this.f8540e;
        c1710b.f8542b = pow * 1000.0f;
        return c1710b;
    }

    /* renamed from: f */
    public float m263f() {
        return this.f8537b;
    }

    /* renamed from: g */
    public final C1710b m262g(float f, float f2, float f3, float f4) {
        animationInterpolatorC1711c animationinterpolatorc1711c;
        C1710b c1710b;
        float f5 = f2 - f;
        float sqrt = (float) (this.f8538c * Math.sqrt(Math.abs(f5) / f4));
        float abs = Math.abs(f5);
        float abs2 = Math.abs(f3);
        float f6 = (2.857143f * abs) / abs2;
        if (f6 <= sqrt) {
            this.f8540e.f8541a = this.f8536a;
            sqrt = f6;
        } else {
            if (abs2 >= this.f8537b) {
                animationInterpolatorC1712d animationinterpolatorc1712d = new animationInterpolatorC1712d(sqrt, abs2, abs);
                c1710b = this.f8540e;
                Interpolator interpolator = this.f8536a;
                animationinterpolatorc1711c = new animationInterpolatorC1711c(animationinterpolatorc1712d, interpolator, interpolator);
            } else {
                c1710b = this.f8540e;
                animationinterpolatorc1711c = zb1.f8789b;
            }
            c1710b.f8541a = animationinterpolatorc1711c;
        }
        C1710b c1710b2 = this.f8540e;
        c1710b2.f8542b = sqrt * 1000.0f;
        return c1710b2;
    }
}
