package p193e.p1411b.p1412a.p1414b0;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import p193e.p1411b.p1412a.C21913e;
/* renamed from: e.b.a.b0.b */
/* loaded from: classes-dex2jar.jar:e/b/a/b0/b.class */
public class Choreographer$FrameCallbackC21902b extends AbstractC21901a implements Choreographer.FrameCallback {

    /* renamed from: j */
    public C21913e f60790j;

    /* renamed from: c */
    public float f60783c = 1.0f;

    /* renamed from: d */
    public boolean f60784d = false;

    /* renamed from: e */
    public long f60785e = 0;

    /* renamed from: f */
    public float f60786f = 0.0f;

    /* renamed from: g */
    public int f60787g = 0;

    /* renamed from: h */
    public float f60788h = -2.14748365E9f;

    /* renamed from: i */
    public float f60789i = 2.14748365E9f;

    /* renamed from: k */
    public boolean f60791k = false;

    /* renamed from: c */
    public float m8934c() {
        C21913e c21913e = this.f60790j;
        if (c21913e == null) {
            return 0.0f;
        }
        float f = this.f60786f;
        float f2 = c21913e.f60834k;
        return (f - f2) / (c21913e.f60835l - f2);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        for (Animator.AnimatorListener animatorListener : this.f60782b) {
            animatorListener.onAnimationCancel(this);
        }
        m8929i();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        m8930h();
        if (this.f60790j == null || !this.f60791k) {
            return;
        }
        long nanoTime = System.nanoTime();
        long j2 = this.f60785e;
        C21913e c21913e = this.f60790j;
        float abs = ((float) (nanoTime - j2)) / (c21913e == null ? Float.MAX_VALUE : (1.0E9f / c21913e.f60836m) / Math.abs(this.f60783c));
        float f = this.f60786f;
        float f2 = abs;
        if (m8931g()) {
            f2 = -abs;
        }
        float f3 = f + f2;
        this.f60786f = f3;
        float m8932f = m8932f();
        float m8933e = m8933e();
        PointF pointF = C21904d.f60794a;
        boolean z = f3 >= m8932f && f3 <= m8933e;
        this.f60786f = C21904d.m8925b(this.f60786f, m8932f(), m8933e());
        this.f60785e = nanoTime;
        m8935b();
        if (!z) {
            if (getRepeatCount() == -1 || this.f60787g < getRepeatCount()) {
                for (Animator.AnimatorListener animatorListener : this.f60782b) {
                    animatorListener.onAnimationRepeat(this);
                }
                this.f60787g++;
                if (getRepeatMode() == 2) {
                    this.f60784d = !this.f60784d;
                    this.f60783c = -this.f60783c;
                } else {
                    this.f60786f = m8931g() ? m8933e() : m8932f();
                }
                this.f60785e = nanoTime;
            } else {
                this.f60786f = m8933e();
                m8929i();
                m8936a(m8931g());
            }
        }
        if (this.f60790j == null) {
            return;
        }
        float f4 = this.f60786f;
        if (f4 >= this.f60788h && f4 <= this.f60789i) {
            return;
        }
        throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f60788h), Float.valueOf(this.f60789i), Float.valueOf(this.f60786f)));
    }

    /* renamed from: e */
    public float m8933e() {
        C21913e c21913e = this.f60790j;
        if (c21913e == null) {
            return 0.0f;
        }
        float f = this.f60789i;
        float f2 = f;
        if (f == 2.14748365E9f) {
            f2 = c21913e.f60835l;
        }
        return f2;
    }

    /* renamed from: f */
    public float m8932f() {
        C21913e c21913e = this.f60790j;
        if (c21913e == null) {
            return 0.0f;
        }
        float f = this.f60788h;
        float f2 = f;
        if (f == -2.14748365E9f) {
            f2 = c21913e.f60834k;
        }
        return f2;
    }

    /* renamed from: g */
    public final boolean m8931g() {
        return this.f60783c < 0.0f;
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float m8932f;
        float m8933e;
        float m8932f2;
        if (this.f60790j == null) {
            return 0.0f;
        }
        if (m8931g()) {
            m8932f = m8933e() - this.f60786f;
            m8933e = m8933e();
            m8932f2 = m8932f();
        } else {
            m8932f = this.f60786f - m8932f();
            m8933e = m8933e();
            m8932f2 = m8932f();
        }
        return m8932f / (m8933e - m8932f2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(m8934c());
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        C21913e c21913e = this.f60790j;
        return c21913e == null ? (char) 0 : c21913e.m8907a();
    }

    /* renamed from: h */
    public void m8930h() {
        if (this.f60791k) {
            Choreographer.getInstance().removeFrameCallback(this);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    /* renamed from: i */
    public void m8929i() {
        Choreographer.getInstance().removeFrameCallback(this);
        this.f60791k = false;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f60791k;
    }

    /* renamed from: j */
    public void m8928j(int i) {
        float f = i;
        if (this.f60786f == f) {
            return;
        }
        this.f60786f = C21904d.m8925b(f, m8932f(), m8933e());
        this.f60785e = System.nanoTime();
        m8935b();
    }

    /* renamed from: k */
    public void m8927k(float f, float f2) {
        if (f <= f2) {
            C21913e c21913e = this.f60790j;
            float f3 = c21913e == null ? -3.4028235E38f : c21913e.f60834k;
            float f4 = c21913e == null ? Float.MAX_VALUE : c21913e.f60835l;
            this.f60788h = C21904d.m8925b(f, f3, f4);
            this.f60789i = C21904d.m8925b(f2, f3, f4);
            m8928j((int) C21904d.m8925b(this.f60786f, f, f2));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f), Float.valueOf(f2)));
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.f60784d) {
            return;
        }
        this.f60784d = false;
        this.f60783c = -this.f60783c;
    }
}
