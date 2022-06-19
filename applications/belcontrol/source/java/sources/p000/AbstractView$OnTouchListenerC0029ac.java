package p000;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
/* renamed from: ac */
/* loaded from: classes-dex2jar.jar:ac.class */
public abstract class AbstractView$OnTouchListenerC0029ac implements View.OnTouchListener {

    /* renamed from: t */
    public static final int f237t = ViewConfiguration.getTapTimeout();

    /* renamed from: c */
    public final View f240c;

    /* renamed from: d */
    public Runnable f241d;

    /* renamed from: h */
    public int f244h;

    /* renamed from: j */
    public int f245j;

    /* renamed from: n */
    public boolean f249n;

    /* renamed from: o */
    public boolean f250o;

    /* renamed from: p */
    public boolean f251p;

    /* renamed from: q */
    public boolean f252q;

    /* renamed from: r */
    public boolean f253r;

    /* renamed from: s */
    public boolean f254s;

    /* renamed from: a */
    public final C0030a f238a = new C0030a();

    /* renamed from: b */
    public final Interpolator f239b = new AccelerateInterpolator();

    /* renamed from: f */
    public float[] f242f = {0.0f, 0.0f};

    /* renamed from: g */
    public float[] f243g = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: k */
    public float[] f246k = {0.0f, 0.0f};

    /* renamed from: l */
    public float[] f247l = {0.0f, 0.0f};

    /* renamed from: m */
    public float[] f248m = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: ac$a */
    /* loaded from: classes-dex2jar.jar:ac$a.class */
    public static class C0030a {

        /* renamed from: a */
        public int f255a;

        /* renamed from: b */
        public int f256b;

        /* renamed from: c */
        public float f257c;

        /* renamed from: d */
        public float f258d;

        /* renamed from: j */
        public float f264j;

        /* renamed from: k */
        public int f265k;

        /* renamed from: e */
        public long f259e = Long.MIN_VALUE;

        /* renamed from: i */
        public long f263i = -1;

        /* renamed from: f */
        public long f260f = 0;

        /* renamed from: g */
        public int f261g = 0;

        /* renamed from: h */
        public int f262h = 0;

        /* renamed from: a */
        public void m7253a() {
            if (this.f260f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float m7247g = m7247g(m7249e(currentAnimationTimeMillis));
                long j = this.f260f;
                this.f260f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * m7247g;
                this.f261g = (int) (this.f257c * f);
                this.f262h = (int) (f * this.f258d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: b */
        public int m7252b() {
            return this.f261g;
        }

        /* renamed from: c */
        public int m7251c() {
            return this.f262h;
        }

        /* renamed from: d */
        public int m7250d() {
            float f = this.f257c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: e */
        public final float m7249e(long j) {
            long j2 = this.f259e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f263i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC0029ac.m7271e(((float) (j - j2)) / this.f255a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f264j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0029ac.m7271e(((float) (j - j3)) / this.f265k, 0.0f, 1.0f));
        }

        /* renamed from: f */
        public int m7248f() {
            float f = this.f258d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: g */
        public final float m7247g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: h */
        public boolean m7246h() {
            return this.f263i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f263i + ((long) this.f265k);
        }

        /* renamed from: i */
        public void m7245i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f265k = AbstractView$OnTouchListenerC0029ac.m7270f((int) (currentAnimationTimeMillis - this.f259e), 0, this.f256b);
            this.f264j = m7249e(currentAnimationTimeMillis);
            this.f263i = currentAnimationTimeMillis;
        }

        /* renamed from: j */
        public void m7244j(int i) {
            this.f256b = i;
        }

        /* renamed from: k */
        public void m7243k(int i) {
            this.f255a = i;
        }

        /* renamed from: l */
        public void m7242l(float f, float f2) {
            this.f257c = f;
            this.f258d = f2;
        }

        /* renamed from: m */
        public void m7241m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f259e = currentAnimationTimeMillis;
            this.f263i = -1L;
            this.f260f = currentAnimationTimeMillis;
            this.f264j = 0.5f;
            this.f261g = 0;
            this.f262h = 0;
        }
    }

    /* renamed from: ac$b */
    /* loaded from: classes-dex2jar.jar:ac$b.class */
    public class RunnableC0031b implements Runnable {
        public RunnableC0031b() {
            AbstractView$OnTouchListenerC0029ac.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0029ac abstractView$OnTouchListenerC0029ac = AbstractView$OnTouchListenerC0029ac.this;
            if (!abstractView$OnTouchListenerC0029ac.f252q) {
                return;
            }
            if (abstractView$OnTouchListenerC0029ac.f250o) {
                abstractView$OnTouchListenerC0029ac.f250o = false;
                abstractView$OnTouchListenerC0029ac.f238a.m7241m();
            }
            C0030a c0030a = AbstractView$OnTouchListenerC0029ac.this.f238a;
            if (c0030a.m7246h() || !AbstractView$OnTouchListenerC0029ac.this.m7255u()) {
                AbstractView$OnTouchListenerC0029ac.this.f252q = false;
                return;
            }
            AbstractView$OnTouchListenerC0029ac abstractView$OnTouchListenerC0029ac2 = AbstractView$OnTouchListenerC0029ac.this;
            if (abstractView$OnTouchListenerC0029ac2.f251p) {
                abstractView$OnTouchListenerC0029ac2.f251p = false;
                abstractView$OnTouchListenerC0029ac2.m7273c();
            }
            c0030a.m7253a();
            AbstractView$OnTouchListenerC0029ac.this.m7266j(c0030a.m7252b(), c0030a.m7251c());
            jb.f0(AbstractView$OnTouchListenerC0029ac.this.f240c, this);
        }
    }

    public AbstractView$OnTouchListenerC0029ac(View view) {
        this.f240c = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        m7261o(f2, f2);
        float f3 = i2;
        m7260p(f3, f3);
        m7264l(1);
        m7262n(Float.MAX_VALUE, Float.MAX_VALUE);
        m7257s(0.2f, 0.2f);
        m7256t(1.0f, 1.0f);
        m7265k(f237t);
        m7258r(500);
        m7259q(500);
    }

    /* renamed from: e */
    public static float m7271e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: f */
    public static int m7270f(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: a */
    public abstract boolean m7275a(int i);

    /* renamed from: b */
    public abstract boolean m7274b(int i);

    /* renamed from: c */
    public void m7273c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f240c.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: d */
    public final float m7272d(int i, float f, float f2, float f3) {
        float m7268h = m7268h(this.f242f[i], f2, this.f243g[i], f);
        int i2 = (m7268h > 0.0f ? 1 : (m7268h == 0.0f ? 0 : -1));
        if (i2 == 0) {
            return 0.0f;
        }
        float f4 = this.f246k[i];
        float f5 = this.f247l[i];
        float f6 = this.f248m[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m7271e(m7268h * f7, f5, f6) : -m7271e((-m7268h) * f7, f5, f6);
    }

    /* renamed from: g */
    public final float m7269g(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f244h;
        if (i == 0 || i == 1) {
            if (f >= f2) {
                return 0.0f;
            }
            return f >= 0.0f ? 1.0f - (f / f2) : (!this.f252q || i != 1) ? 0.0f : 1.0f;
        } else if (i != 2 || f >= 0.0f) {
            return 0.0f;
        } else {
            return f / (-f2);
        }
    }

    /* renamed from: h */
    public final float m7268h(float f, float f2, float f3, float f4) {
        float f5;
        float m7271e = m7271e(f * f2, 0.0f, f3);
        float m7269g = m7269g(f2 - f4, m7271e) - m7269g(f4, m7271e);
        if (m7269g < 0.0f) {
            f5 = -this.f239b.getInterpolation(-m7269g);
        } else if (m7269g <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f239b.getInterpolation(m7269g);
        }
        return m7271e(f5, -1.0f, 1.0f);
    }

    /* renamed from: i */
    public final void m7267i() {
        if (this.f250o) {
            this.f252q = false;
        } else {
            this.f238a.m7245i();
        }
    }

    /* renamed from: j */
    public abstract void m7266j(int i, int i2);

    /* renamed from: k */
    public AbstractView$OnTouchListenerC0029ac m7265k(int i) {
        this.f245j = i;
        return this;
    }

    /* renamed from: l */
    public AbstractView$OnTouchListenerC0029ac m7264l(int i) {
        this.f244h = i;
        return this;
    }

    /* renamed from: m */
    public AbstractView$OnTouchListenerC0029ac m7263m(boolean z) {
        if (this.f253r && !z) {
            m7267i();
        }
        this.f253r = z;
        return this;
    }

    /* renamed from: n */
    public AbstractView$OnTouchListenerC0029ac m7262n(float f, float f2) {
        float[] fArr = this.f243g;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: o */
    public AbstractView$OnTouchListenerC0029ac m7261o(float f, float f2) {
        float[] fArr = this.f248m;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r0 != 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f253r
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto Le
            r0 = 0
            return r0
        Le:
            r0 = r8
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L35
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L2e
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L3f
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L2e
            goto L8c
        L2e:
            r0 = r6
            r0.m7267i()
            goto L8c
        L35:
            r0 = r6
            r1 = 1
            r0.f251p = r1
            r0 = r6
            r1 = 0
            r0.f249n = r1
        L3f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f240c
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m7272d(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f240c
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m7272d(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            ac$a r0 = r0.f238a
            r1 = r12
            r2 = r13
            r0.m7242l(r1, r2)
            r0 = r6
            boolean r0 = r0.f252q
            if (r0 != 0) goto L8c
            r0 = r6
            boolean r0 = r0.m7255u()
            if (r0 == 0) goto L8c
            r0 = r6
            r0.m7254v()
        L8c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f254s
            if (r0 == 0) goto La2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f252q
            if (r0 == 0) goto La2
            r0 = 1
            r9 = r0
        La2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.AbstractView$OnTouchListenerC0029ac.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public AbstractView$OnTouchListenerC0029ac m7260p(float f, float f2) {
        float[] fArr = this.f247l;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: q */
    public AbstractView$OnTouchListenerC0029ac m7259q(int i) {
        this.f238a.m7244j(i);
        return this;
    }

    /* renamed from: r */
    public AbstractView$OnTouchListenerC0029ac m7258r(int i) {
        this.f238a.m7243k(i);
        return this;
    }

    /* renamed from: s */
    public AbstractView$OnTouchListenerC0029ac m7257s(float f, float f2) {
        float[] fArr = this.f242f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: t */
    public AbstractView$OnTouchListenerC0029ac m7256t(float f, float f2) {
        float[] fArr = this.f246k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: u */
    public boolean m7255u() {
        C0030a c0030a = this.f238a;
        int m7248f = c0030a.m7248f();
        int m7250d = c0030a.m7250d();
        return (m7248f != 0 && m7274b(m7248f)) || (m7250d != 0 && m7275a(m7250d));
    }

    /* renamed from: v */
    public final void m7254v() {
        int i;
        if (this.f241d == null) {
            this.f241d = new RunnableC0031b();
        }
        this.f252q = true;
        this.f250o = true;
        if (this.f249n || (i = this.f245j) <= 0) {
            this.f241d.run();
        } else {
            jb.g0(this.f240c, this.f241d, i);
        }
        this.f249n = true;
    }
}
