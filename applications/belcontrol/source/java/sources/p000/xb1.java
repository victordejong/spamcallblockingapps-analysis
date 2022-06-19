package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
@SuppressLint({"ClickableViewAccessibility"})
/* renamed from: xb1 */
/* loaded from: classes3-dex2jar.jar:xb1.class */
public class xb1 implements View.OnTouchListener {

    /* renamed from: A */
    public float f8651A;

    /* renamed from: B */
    public final float f8652B;

    /* renamed from: C */
    public final float f8653C;

    /* renamed from: D */
    public final qc1 f8654D;

    /* renamed from: a */
    public final View f8655a;

    /* renamed from: b */
    public final AbstractC1725c f8656b;

    /* renamed from: c */
    public VelocityTracker f8657c;

    /* renamed from: d */
    public wb1 f8658d;

    /* renamed from: f */
    public boolean f8659f = false;

    /* renamed from: g */
    public boolean f8660g = true;

    /* renamed from: h */
    public boolean f8661h = true;

    /* renamed from: j */
    public int f8662j = -1;

    /* renamed from: k */
    public float f8663k;

    /* renamed from: l */
    public boolean f8664l;

    /* renamed from: m */
    public boolean f8665m;

    /* renamed from: n */
    public boolean f8666n;

    /* renamed from: o */
    public boolean f8667o;

    /* renamed from: p */
    public int f8668p;

    /* renamed from: q */
    public Animator f8669q;

    /* renamed from: r */
    public float f8670r;

    /* renamed from: s */
    public float f8671s;

    /* renamed from: t */
    public float f8672t;

    /* renamed from: u */
    public float f8673u;

    /* renamed from: v */
    public float f8674v;

    /* renamed from: w */
    public float f8675w;

    /* renamed from: x */
    public float f8676x;

    /* renamed from: y */
    public float f8677y;

    /* renamed from: z */
    public float f8678z;

    /* renamed from: xb1$a */
    /* loaded from: classes3-dex2jar.jar:xb1$a.class */
    public class C1723a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f8679a;

        public C1723a() {
            xb1.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f8679a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            xb1.this.f8669q = null;
            if (!this.f8679a) {
                xb1.this.m135m();
            }
        }
    }

    /* renamed from: xb1$b */
    /* loaded from: classes3-dex2jar.jar:xb1$b.class */
    public class C1724b implements ValueAnimator.AnimatorUpdateListener {
        public C1724b() {
            xb1.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            xb1.this.m130r(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: xb1$c */
    /* loaded from: classes3-dex2jar.jar:xb1$c.class */
    public interface AbstractC1725c {
        /* renamed from: a */
        void mo126a(boolean z);

        /* renamed from: b */
        void mo125b(boolean z, int i);

        /* renamed from: e */
        void mo124e();

        /* renamed from: f */
        void mo123f(float f, int i);

        /* renamed from: g */
        boolean mo122g(MotionEvent motionEvent);

        /* renamed from: h */
        void mo121h(int i);
    }

    public xb1(View view, AbstractC1725c abstractC1725c, qc1 qc1Var) {
        this.f8655a = view;
        this.f8656b = abstractC1725c;
        Context context = view.getContext();
        this.f8670r = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f8658d = new wb1(context, 0.6f);
        this.f8651A = ub1.m399a(context, 40.0f);
        float m399a = ub1.m399a(context, 150.0f);
        this.f8652B = m399a;
        this.f8653C = ub1.m399a(context, 150.0f);
        Math.max(context.getResources().getDimension(2131165271), m399a);
        this.f8654D = qc1Var;
    }

    /* renamed from: d */
    public static xb1 m144d(View view, AbstractC1725c abstractC1725c, qc1 qc1Var) {
        xb1 xb1Var = new xb1(view, abstractC1725c, qc1Var);
        view.setOnTouchListener(xb1Var);
        return xb1Var;
    }

    /* renamed from: e */
    public final void m143e() {
        Animator animator = this.f8669q;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: f */
    public final ValueAnimator m142f(float f) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f8663k, f);
        ofFloat.addUpdateListener(new C1724b());
        return ofFloat;
    }

    /* renamed from: g */
    public void m141g() {
        m143e();
        m129s(false);
    }

    /* renamed from: h */
    public final void m140h(MotionEvent motionEvent, float f, float f2, boolean z) {
        float f3;
        this.f8668p = -1;
        float f4 = 0.0f;
        if ((!this.f8664l || !this.f8666n) && Math.abs(f - this.f8671s) <= this.f8670r && Math.abs(f2 - this.f8672t) <= this.f8670r && motionEvent.getActionMasked() != 3 && !z) {
            m133o();
            m130r(0.0f);
            m135m();
        } else {
            VelocityTracker velocityTracker = this.f8657c;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000);
                f4 = this.f8657c.getYVelocity();
                f3 = Math.copySign((float) Math.hypot(this.f8657c.getXVelocity(), this.f8657c.getYVelocity()), Math.max(f4, this.f8657c.getYVelocity()));
            } else {
                f3 = 0.0f;
            }
            boolean m136l = m136l();
            m139i(f4, m136l || !this.f8666n || z || motionEvent.getActionMasked() == 3 ? 0 : m138j(f, f2, f3), m136l);
            m133o();
        }
        VelocityTracker velocityTracker2 = this.f8657c;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.f8657c = null;
        }
    }

    /* renamed from: i */
    public final void m139i(float f, int i, boolean z) {
        float f2 = i;
        ValueAnimator m142f = m142f(f2);
        wb1 wb1Var = this.f8658d;
        if (i == 0) {
            wb1Var.m268a(m142f, this.f8663k, f2, f);
        } else {
            wb1Var.m266c(m142f, this.f8663k, f2, f, 1.0f);
        }
        float f3 = f;
        if (i == 0) {
            f3 = f;
            if (z) {
                f3 = 0.0f;
            }
        }
        if (f3 == 0.0f) {
            m142f.setDuration(350L);
        }
        m142f.addListener(new C1723a());
        this.f8669q = m142f;
        m142f.start();
    }

    /* renamed from: j */
    public final int m138j(float f, float f2, float f3) {
        float max = Math.max(Math.abs(m131q(f)), Math.abs(m132p(f2)));
        float m263f = this.f8658d.m263f();
        float f4 = m263f;
        if (f3 > 0.0f) {
            f4 = m263f * 2.0f;
        }
        int i = -1;
        if (!this.f8661h || Math.abs(f3) < f4) {
            if (Math.abs(max) <= 0.8f) {
                return 0;
            }
            if (max > 0.0f) {
                i = 1;
            }
            return i;
        }
        int i2 = (f3 > 0.0f ? 1 : (f3 == 0.0f ? 0 : -1));
        if (!((i2 < 0) == ((max > 0.0f ? 1 : (max == 0.0f ? 0 : -1)) > 0)) && Math.abs(max) >= 0.1f) {
            return 0;
        }
        if (i2 < 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: k */
    public final void m137k() {
        VelocityTracker velocityTracker = this.f8657c;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.f8657c = VelocityTracker.obtain();
    }

    /* renamed from: l */
    public final boolean m136l() {
        return false;
    }

    /* renamed from: m */
    public final void m135m() {
        if (this.f8659f) {
            return;
        }
        boolean z = true;
        this.f8659f = true;
        float f = this.f8663k;
        if (f == 0.0f) {
            this.f8656b.mo126a(true ^ this.f8667o);
            return;
        }
        AbstractC1725c abstractC1725c = this.f8656b;
        if (f <= 0.0f) {
            z = false;
        }
        abstractC1725c.mo125b(z, this.f8662j);
    }

    /* renamed from: n */
    public final void m134n() {
        this.f8664l = true;
        this.f8659f = false;
        this.f8656b.mo121h(this.f8662j);
    }

    /* renamed from: o */
    public final void m133o() {
        this.f8664l = false;
        this.f8656b.mo124e();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int pointerId;
        qc1 qc1Var = this.f8654D;
        if (qc1Var != null) {
            qc1Var.m824e(motionEvent);
        }
        boolean z = false;
        if (!this.f8660g) {
            return false;
        }
        if (this.f8665m && motionEvent.getActionMasked() != 0) {
            return false;
        }
        int findPointerIndex = motionEvent.findPointerIndex(this.f8668p);
        int i = findPointerIndex;
        if (findPointerIndex < 0) {
            this.f8668p = motionEvent.getPointerId(0);
            i = 0;
        }
        float y = motionEvent.getY(i);
        float x = motionEvent.getX(i);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f8665m = false;
            m128t(y, x, false, this.f8663k);
            this.f8656b.mo122g(motionEvent);
            if (this.f8657c == null) {
                m137k();
            }
            m127u(motionEvent);
            m143e();
            if (this.f8669q != null) {
                z = true;
            }
            this.f8666n = z;
            this.f8662j = view.getId();
            m134n();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float f = y - this.f8671s;
                float f2 = x - this.f8672t;
                if (Math.abs(f) > this.f8670r || Math.abs(f2) > this.f8670r) {
                    this.f8666n = true;
                }
                if (Math.abs(f) < this.f8651A) {
                    Math.abs(f2);
                    float f3 = this.f8651A;
                }
                m130r(Math.max(Math.abs(m131q(y)), Math.abs(m132p(x))));
                m127u(motionEvent);
                return true;
            } else if (actionMasked != 3) {
                if (actionMasked == 5) {
                    this.f8665m = true;
                    m140h(motionEvent, y, x, true);
                    return false;
                } else if (actionMasked != 6 || this.f8668p != (pointerId = motionEvent.getPointerId(motionEvent.getActionIndex()))) {
                    return true;
                } else {
                    int i2 = motionEvent.getPointerId(0) != pointerId ? 0 : 1;
                    float y2 = motionEvent.getY(i2);
                    float x2 = motionEvent.getX(i2);
                    this.f8668p = motionEvent.getPointerId(i2);
                    m128t(y2, x2, true, this.f8663k);
                    return true;
                }
            }
        }
        m127u(motionEvent);
        m140h(motionEvent, y, x, false);
        return true;
    }

    /* renamed from: p */
    public final float m132p(float f) {
        float f2 = this.f8678z;
        int i = 1;
        boolean z = f > f2;
        float f3 = (f - f2) / ((z ? this.f8676x : this.f8674v) - f2);
        if (z) {
            i = -1;
        }
        return ac1.m7238a(f3 * i, -1.0f, 1.0f);
    }

    /* renamed from: q */
    public final float m131q(float f) {
        float f2 = this.f8677y;
        int i = 1;
        boolean z = f > f2;
        float f3 = (f - f2) / ((z ? this.f8675w : this.f8673u) - f2);
        if (z) {
            i = -1;
        }
        return ac1.m7238a(f3 * i, -1.0f, 1.0f);
    }

    /* renamed from: r */
    public final void m130r(float f) {
        if (Math.abs(f) > 0.1f) {
            this.f8667o = true;
        }
        this.f8663k = f;
        if (f >= 1.0f) {
            m135m();
        } else {
            this.f8656b.mo123f(f, this.f8662j);
        }
    }

    /* renamed from: s */
    public void m129s(boolean z) {
        this.f8660g = z;
    }

    /* renamed from: t */
    public final void m128t(float f, float f2, boolean z, float f3) {
        this.f8671s = f;
        this.f8672t = f2;
        this.f8667o = false;
        if (f3 <= 0.25d) {
            this.f8673u = Math.max(0.0f, f - this.f8652B);
            this.f8675w = Math.min(this.f8655a.getHeight(), this.f8671s + this.f8653C);
            this.f8677y = this.f8671s;
            this.f8674v = Math.max(0.0f, this.f8672t - this.f8652B);
            this.f8676x = Math.min(this.f8655a.getWidth(), this.f8672t + this.f8653C);
            this.f8678z = this.f8672t;
        }
        if (z) {
            this.f8666n = true;
            m134n();
            m130r(f3);
        }
    }

    /* renamed from: u */
    public final void m127u(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.f8657c;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
    }
}
