package com.airbnb.lottie.utils;

import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieComposition;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/utils/LottieValueAnimator.class */
public class LottieValueAnimator extends BaseLottieAnimator implements Choreographer.FrameCallback {
    @Nullable

    /* renamed from: o */
    private LottieComposition f6395o;

    /* renamed from: h */
    private float f6388h = 1.0f;

    /* renamed from: i */
    private boolean f6389i = false;

    /* renamed from: j */
    private long f6390j = 0;

    /* renamed from: k */
    private float f6391k = 0.0f;

    /* renamed from: l */
    private int f6392l = 0;

    /* renamed from: m */
    private float f6393m = -2.14748365E9f;

    /* renamed from: n */
    private float f6394n = 2.14748365E9f;
    @VisibleForTesting

    /* renamed from: p */
    protected boolean f6396p = false;

    /* renamed from: F */
    private void m15730F() {
        if (this.f6395o != null) {
            float f = this.f6391k;
            if (f < this.f6393m || f > this.f6394n) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f6393m), Float.valueOf(this.f6394n), Float.valueOf(this.f6391k)));
            }
        }
    }

    /* renamed from: m */
    private float m15725m() {
        LottieComposition lottieComposition = this.f6395o;
        if (lottieComposition == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / lottieComposition.m16339h()) / Math.abs(this.f6388h);
    }

    /* renamed from: q */
    private boolean m15721q() {
        return m15722p() < 0.0f;
    }

    /* renamed from: A */
    public void m15734A(float f) {
        m15733C(this.f6393m, f);
    }

    /* renamed from: C */
    public void m15733C(float f, float f2) {
        if (f <= f2) {
            LottieComposition lottieComposition = this.f6395o;
            float o = lottieComposition == null ? -3.4028235E38f : lottieComposition.m16332o();
            LottieComposition lottieComposition2 = this.f6395o;
            float f3 = lottieComposition2 == null ? Float.MAX_VALUE : lottieComposition2.m16341f();
            this.f6393m = MiscUtils.m15708c(f, o, f3);
            this.f6394n = MiscUtils.m15708c(f2, o, f3);
            m15712z((int) MiscUtils.m15708c(this.f6391k, f, f2));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f), Float.valueOf(f2)));
    }

    /* renamed from: D */
    public void m15732D(int i) {
        m15733C(i, (int) this.f6394n);
    }

    /* renamed from: E */
    public void m15731E(float f) {
        this.f6388h = f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        m15751a();
        m15717u();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        m15718t();
        if (this.f6395o != null && isRunning()) {
            C0611L.m16372a("LottieValueAnimator#doFrame");
            long j2 = this.f6390j;
            long j3 = 0;
            if (j2 != 0) {
                j3 = j - j2;
            }
            float m = ((float) j3) / m15725m();
            float f = this.f6391k;
            float f2 = m;
            if (m15721q()) {
                f2 = -m;
            }
            float f3 = f + f2;
            this.f6391k = f3;
            boolean e = MiscUtils.m15706e(f3, m15723o(), m15724n());
            this.f6391k = MiscUtils.m15708c(this.f6391k, m15723o(), m15724n());
            this.f6390j = j;
            m15747f();
            if (!e) {
                if (getRepeatCount() == -1 || this.f6392l < getRepeatCount()) {
                    m15749c();
                    this.f6392l++;
                    if (getRepeatMode() == 2) {
                        this.f6389i = !this.f6389i;
                        m15714x();
                    } else {
                        this.f6391k = m15721q() ? m15724n() : m15723o();
                    }
                    this.f6390j = j;
                } else {
                    this.f6391k = this.f6388h < 0.0f ? m15723o() : m15724n();
                    m15717u();
                    m15750b(m15721q());
                }
            }
            m15730F();
            C0611L.m16371b("LottieValueAnimator#doFrame");
        }
    }

    /* renamed from: g */
    public void m15729g() {
        this.f6395o = null;
        this.f6393m = -2.14748365E9f;
        this.f6394n = 2.14748365E9f;
    }

    @Override // android.animation.ValueAnimator
    @FloatRange
    public float getAnimatedFraction() {
        float o;
        float n;
        float o2;
        if (this.f6395o == null) {
            return 0.0f;
        }
        if (m15721q()) {
            o = m15724n() - this.f6391k;
            n = m15724n();
            o2 = m15723o();
        } else {
            o = this.f6391k - m15723o();
            n = m15724n();
            o2 = m15723o();
        }
        return o / (n - o2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(m15727j());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        LottieComposition lottieComposition = this.f6395o;
        return lottieComposition == null ? 0L : lottieComposition.m16343d();
    }

    @MainThread
    /* renamed from: i */
    public void m15728i() {
        m15717u();
        m15750b(m15721q());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f6396p;
    }

    @FloatRange
    /* renamed from: j */
    public float m15727j() {
        LottieComposition lottieComposition = this.f6395o;
        if (lottieComposition == null) {
            return 0.0f;
        }
        return (this.f6391k - lottieComposition.m16332o()) / (this.f6395o.m16341f() - this.f6395o.m16332o());
    }

    /* renamed from: l */
    public float m15726l() {
        return this.f6391k;
    }

    /* renamed from: n */
    public float m15724n() {
        LottieComposition lottieComposition = this.f6395o;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.f6394n;
        float f2 = f;
        if (f == 2.14748365E9f) {
            f2 = lottieComposition.m16341f();
        }
        return f2;
    }

    /* renamed from: o */
    public float m15723o() {
        LottieComposition lottieComposition = this.f6395o;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.f6393m;
        float f2 = f;
        if (f == -2.14748365E9f) {
            f2 = lottieComposition.m16332o();
        }
        return f2;
    }

    /* renamed from: p */
    public float m15722p() {
        return this.f6388h;
    }

    @MainThread
    /* renamed from: r */
    public void m15720r() {
        m15717u();
    }

    @MainThread
    /* renamed from: s */
    public void m15719s() {
        this.f6396p = true;
        m15748d(m15721q());
        m15712z((int) (m15721q() ? m15724n() : m15723o()));
        this.f6390j = 0L;
        this.f6392l = 0;
        m15718t();
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i != 2 && this.f6389i) {
            this.f6389i = false;
            m15714x();
        }
    }

    /* renamed from: t */
    protected void m15718t() {
        if (isRunning()) {
            m15716v(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    /* renamed from: u */
    protected void m15717u() {
        m15716v(true);
    }

    @MainThread
    /* renamed from: v */
    protected void m15716v(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.f6396p = false;
        }
    }

    @MainThread
    /* renamed from: w */
    public void m15715w() {
        this.f6396p = true;
        m15718t();
        this.f6390j = 0L;
        if (m15721q() && m15726l() == m15723o()) {
            this.f6391k = m15724n();
        } else if (!m15721q() && m15726l() == m15724n()) {
            this.f6391k = m15723o();
        }
    }

    /* renamed from: x */
    public void m15714x() {
        m15731E(-m15722p());
    }

    /* renamed from: y */
    public void m15713y(LottieComposition lottieComposition) {
        boolean z = this.f6395o == null;
        this.f6395o = lottieComposition;
        if (z) {
            m15733C((int) Math.max(this.f6393m, lottieComposition.m16332o()), (int) Math.min(this.f6394n, lottieComposition.m16341f()));
        } else {
            m15733C((int) lottieComposition.m16332o(), (int) lottieComposition.m16341f());
        }
        float f = this.f6391k;
        this.f6391k = 0.0f;
        m15712z((int) f);
        m15747f();
    }

    /* renamed from: z */
    public void m15712z(float f) {
        if (this.f6391k != f) {
            this.f6391k = MiscUtils.m15708c(f, m15723o(), m15724n());
            this.f6390j = 0L;
            m15747f();
        }
    }
}
