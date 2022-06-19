package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.core.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/c.class */
public abstract class AbstractView$OnTouchListenerC0639c implements View.OnTouchListener {

    /* renamed from: d */
    private static final int f3067d = ViewConfiguration.getTapTimeout();

    /* renamed from: g */
    final View f3070g;

    /* renamed from: h */
    private Runnable f3071h;

    /* renamed from: k */
    private int f3074k;

    /* renamed from: l */
    private int f3075l;

    /* renamed from: p */
    private boolean f3079p;

    /* renamed from: q */
    boolean f3080q;

    /* renamed from: r */
    boolean f3081r;

    /* renamed from: s */
    boolean f3082s;

    /* renamed from: t */
    private boolean f3083t;

    /* renamed from: u */
    private boolean f3084u;

    /* renamed from: e */
    final C0640a f3068e = new C0640a();

    /* renamed from: f */
    private final Interpolator f3069f = new AccelerateInterpolator();

    /* renamed from: i */
    private float[] f3072i = {0.0f, 0.0f};

    /* renamed from: j */
    private float[] f3073j = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: m */
    private float[] f3076m = {0.0f, 0.0f};

    /* renamed from: n */
    private float[] f3077n = {0.0f, 0.0f};

    /* renamed from: o */
    private float[] f3078o = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: androidx.core.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/c$a.class */
    public static class C0640a {

        /* renamed from: a */
        private int f3085a;

        /* renamed from: b */
        private int f3086b;

        /* renamed from: c */
        private float f3087c;

        /* renamed from: d */
        private float f3088d;

        /* renamed from: j */
        private float f3094j;

        /* renamed from: k */
        private int f3095k;

        /* renamed from: e */
        private long f3089e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f3093i = -1;

        /* renamed from: f */
        private long f3090f = 0;

        /* renamed from: g */
        private int f3091g = 0;

        /* renamed from: h */
        private int f3092h = 0;

        C0640a() {
        }

        /* renamed from: e */
        private float m33116e(long j) {
            long j2 = this.f3089e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f3093i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC0639c.m33133e(((float) (j - j2)) / this.f3085a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f3094j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0639c.m33133e(((float) (j - j3)) / this.f3095k, 0.0f, 1.0f));
        }

        /* renamed from: g */
        private float m33114g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: a */
        public void m33120a() {
            if (this.f3090f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float m33114g = m33114g(m33116e(currentAnimationTimeMillis));
                long j = this.f3090f;
                this.f3090f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * m33114g;
                this.f3091g = (int) (this.f3087c * f);
                this.f3092h = (int) (f * this.f3088d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: b */
        public int m33119b() {
            return this.f3091g;
        }

        /* renamed from: c */
        public int m33118c() {
            return this.f3092h;
        }

        /* renamed from: d */
        public int m33117d() {
            float f = this.f3087c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public int m33115f() {
            float f = this.f3088d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: h */
        public boolean m33113h() {
            return this.f3093i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f3093i + ((long) this.f3095k);
        }

        /* renamed from: i */
        public void m33112i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f3095k = AbstractView$OnTouchListenerC0639c.m33132j((int) (currentAnimationTimeMillis - this.f3089e), 0, this.f3086b);
            this.f3094j = m33116e(currentAnimationTimeMillis);
            this.f3093i = currentAnimationTimeMillis;
        }

        /* renamed from: j */
        public void m33111j(int i) {
            this.f3086b = i;
        }

        /* renamed from: k */
        public void m33110k(int i) {
            this.f3085a = i;
        }

        /* renamed from: l */
        public void m33109l(float f, float f2) {
            this.f3087c = f;
            this.f3088d = f2;
        }

        /* renamed from: m */
        public void m33108m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f3089e = currentAnimationTimeMillis;
            this.f3093i = -1L;
            this.f3090f = currentAnimationTimeMillis;
            this.f3094j = 0.5f;
            this.f3091g = 0;
            this.f3092h = 0;
        }
    }

    /* renamed from: androidx.core.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/c$b.class */
    public class RunnableC0641b implements Runnable {
        RunnableC0641b() {
            AbstractView$OnTouchListenerC0639c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0639c abstractView$OnTouchListenerC0639c = AbstractView$OnTouchListenerC0639c.this;
            if (!abstractView$OnTouchListenerC0639c.f3082s) {
                return;
            }
            if (abstractView$OnTouchListenerC0639c.f3080q) {
                abstractView$OnTouchListenerC0639c.f3080q = false;
                abstractView$OnTouchListenerC0639c.f3068e.m33108m();
            }
            C0640a c0640a = AbstractView$OnTouchListenerC0639c.this.f3068e;
            if (c0640a.m33113h() || !AbstractView$OnTouchListenerC0639c.this.m33137C()) {
                AbstractView$OnTouchListenerC0639c.this.f3082s = false;
                return;
            }
            AbstractView$OnTouchListenerC0639c abstractView$OnTouchListenerC0639c2 = AbstractView$OnTouchListenerC0639c.this;
            if (abstractView$OnTouchListenerC0639c2.f3081r) {
                abstractView$OnTouchListenerC0639c2.f3081r = false;
                abstractView$OnTouchListenerC0639c2.m33135c();
            }
            c0640a.m33120a();
            AbstractView$OnTouchListenerC0639c.this.mo33096r(c0640a.m33119b(), c0640a.m33118c());
            C1679w.m29289j0(AbstractView$OnTouchListenerC0639c.this.f3070g, this);
        }
    }

    public AbstractView$OnTouchListenerC0639c(View view) {
        this.f3070g = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        m33124w(f2, f2);
        float f3 = i2;
        m33123x(f3, f3);
        m33127t(1);
        m33125v(Float.MAX_VALUE, Float.MAX_VALUE);
        m33139A(0.2f, 0.2f);
        m33138B(1.0f, 1.0f);
        m33128s(f3067d);
        m33121z(500);
        m33122y(500);
    }

    /* renamed from: D */
    private void m33136D() {
        int i;
        if (this.f3071h == null) {
            this.f3071h = new RunnableC0641b();
        }
        this.f3082s = true;
        this.f3080q = true;
        if (this.f3079p || (i = this.f3075l) <= 0) {
            this.f3071h.run();
        } else {
            C1679w.m29287k0(this.f3070g, this.f3071h, i);
        }
        this.f3079p = true;
    }

    /* renamed from: d */
    private float m33134d(int i, float f, float f2, float f3) {
        float m33130p = m33130p(this.f3072i[i], f2, this.f3073j[i], f);
        int i2 = (m33130p > 0.0f ? 1 : (m33130p == 0.0f ? 0 : -1));
        if (i2 == 0) {
            return 0.0f;
        }
        float f4 = this.f3076m[i];
        float f5 = this.f3077n[i];
        float f6 = this.f3078o[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m33133e(m33130p * f7, f5, f6) : -m33133e((-m33130p) * f7, f5, f6);
    }

    /* renamed from: e */
    static float m33133e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: j */
    static int m33132j(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: o */
    private float m33131o(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f3074k;
        if (i == 0 || i == 1) {
            if (f >= f2) {
                return 0.0f;
            }
            return f >= 0.0f ? 1.0f - (f / f2) : (!this.f3082s || i != 1) ? 0.0f : 1.0f;
        } else if (i != 2 || f >= 0.0f) {
            return 0.0f;
        } else {
            return f / (-f2);
        }
    }

    /* renamed from: p */
    private float m33130p(float f, float f2, float f3, float f4) {
        float f5;
        float m33133e = m33133e(f * f2, 0.0f, f3);
        float m33131o = m33131o(f2 - f4, m33133e) - m33131o(f4, m33133e);
        if (m33131o < 0.0f) {
            f5 = -this.f3069f.getInterpolation(-m33131o);
        } else if (m33131o <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f3069f.getInterpolation(m33131o);
        }
        return m33133e(f5, -1.0f, 1.0f);
    }

    /* renamed from: q */
    private void m33129q() {
        if (this.f3080q) {
            this.f3082s = false;
        } else {
            this.f3068e.m33112i();
        }
    }

    /* renamed from: A */
    public AbstractView$OnTouchListenerC0639c m33139A(float f, float f2) {
        float[] fArr = this.f3072i;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: B */
    public AbstractView$OnTouchListenerC0639c m33138B(float f, float f2) {
        float[] fArr = this.f3076m;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: C */
    boolean m33137C() {
        C0640a c0640a = this.f3068e;
        int m33115f = c0640a.m33115f();
        int m33117d = c0640a.m33117d();
        return (m33115f != 0 && mo33097b(m33115f)) || (m33117d != 0 && mo33098a(m33117d));
    }

    /* renamed from: a */
    public abstract boolean mo33098a(int i);

    /* renamed from: b */
    public abstract boolean mo33097b(int i);

    /* renamed from: c */
    void m33135c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f3070g.onTouchEvent(obtain);
        obtain.recycle();
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
            boolean r0 = r0.f3083t
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
            r0.m33129q()
            goto L8c
        L35:
            r0 = r6
            r1 = 1
            r0.f3081r = r1
            r0 = r6
            r1 = 0
            r0.f3079p = r1
        L3f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f3070g
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m33134d(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f3070g
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m33134d(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            androidx.core.widget.c$a r0 = r0.f3068e
            r1 = r12
            r2 = r13
            r0.m33109l(r1, r2)
            r0 = r6
            boolean r0 = r0.f3082s
            if (r0 != 0) goto L8c
            r0 = r6
            boolean r0 = r0.m33137C()
            if (r0 == 0) goto L8c
            r0 = r6
            r0.m33136D()
        L8c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f3084u
            if (r0 == 0) goto La2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f3082s
            if (r0 == 0) goto La2
            r0 = 1
            r9 = r0
        La2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AbstractView$OnTouchListenerC0639c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: r */
    public abstract void mo33096r(int i, int i2);

    /* renamed from: s */
    public AbstractView$OnTouchListenerC0639c m33128s(int i) {
        this.f3075l = i;
        return this;
    }

    /* renamed from: t */
    public AbstractView$OnTouchListenerC0639c m33127t(int i) {
        this.f3074k = i;
        return this;
    }

    /* renamed from: u */
    public AbstractView$OnTouchListenerC0639c m33126u(boolean z) {
        if (this.f3083t && !z) {
            m33129q();
        }
        this.f3083t = z;
        return this;
    }

    /* renamed from: v */
    public AbstractView$OnTouchListenerC0639c m33125v(float f, float f2) {
        float[] fArr = this.f3073j;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: w */
    public AbstractView$OnTouchListenerC0639c m33124w(float f, float f2) {
        float[] fArr = this.f3078o;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: x */
    public AbstractView$OnTouchListenerC0639c m33123x(float f, float f2) {
        float[] fArr = this.f3077n;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: y */
    public AbstractView$OnTouchListenerC0639c m33122y(int i) {
        this.f3068e.m33111j(i);
        return this;
    }

    /* renamed from: z */
    public AbstractView$OnTouchListenerC0639c m33121z(int i) {
        this.f3068e.m33110k(i);
        return this;
    }
}
