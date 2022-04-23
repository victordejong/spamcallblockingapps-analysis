package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoScrollHelper.class */
public abstract class AutoScrollHelper implements View.OnTouchListener {

    /* renamed from: w */
    private static final int f3358w = ViewConfiguration.getTapTimeout();

    /* renamed from: h */
    final View f3361h;

    /* renamed from: i */
    private Runnable f3362i;

    /* renamed from: l */
    private int f3365l;

    /* renamed from: m */
    private int f3366m;

    /* renamed from: q */
    private boolean f3370q;

    /* renamed from: r */
    boolean f3371r;

    /* renamed from: s */
    boolean f3372s;

    /* renamed from: t */
    boolean f3373t;

    /* renamed from: u */
    private boolean f3374u;

    /* renamed from: v */
    private boolean f3375v;

    /* renamed from: f */
    final ClampedScroller f3359f = new ClampedScroller();

    /* renamed from: g */
    private final Interpolator f3360g = new AccelerateInterpolator();

    /* renamed from: j */
    private float[] f3363j = {0.0f, 0.0f};

    /* renamed from: k */
    private float[] f3364k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: n */
    private float[] f3367n = {0.0f, 0.0f};

    /* renamed from: o */
    private float[] f3368o = {0.0f, 0.0f};

    /* renamed from: p */
    private float[] f3369p = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoScrollHelper$ClampedScroller.class */
    public static class ClampedScroller {

        /* renamed from: a */
        private int f3376a;

        /* renamed from: b */
        private int f3377b;

        /* renamed from: c */
        private float f3378c;

        /* renamed from: d */
        private float f3379d;

        /* renamed from: j */
        private float f3385j;

        /* renamed from: k */
        private int f3386k;

        /* renamed from: e */
        private long f3380e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f3384i = -1;

        /* renamed from: f */
        private long f3381f = 0;

        /* renamed from: g */
        private int f3382g = 0;

        /* renamed from: h */
        private int f3383h = 0;

        ClampedScroller() {
        }

        /* renamed from: e */
        private float m18922e(long j) {
            if (j < this.f3380e) {
                return 0.0f;
            }
            long j2 = this.f3384i;
            if (j2 < 0 || j < j2) {
                return AutoScrollHelper.m18943e(((float) (j - this.f3380e)) / this.f3376a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f3385j;
            return (1.0f - f) + (f * AutoScrollHelper.m18943e(((float) (j - j2)) / this.f3386k, 0.0f, 1.0f));
        }

        /* renamed from: g */
        private float m18920g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: a */
        public void m18926a() {
            if (this.f3381f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float g = m18920g(m18922e(currentAnimationTimeMillis));
                long j = this.f3381f;
                this.f3381f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * g;
                this.f3382g = (int) (this.f3378c * f);
                this.f3383h = (int) (f * this.f3379d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: b */
        public int m18925b() {
            return this.f3382g;
        }

        /* renamed from: c */
        public int m18924c() {
            return this.f3383h;
        }

        /* renamed from: d */
        public int m18923d() {
            float f = this.f3378c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public int m18921f() {
            float f = this.f3379d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: h */
        public boolean m18919h() {
            return this.f3384i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f3384i + ((long) this.f3386k);
        }

        /* renamed from: i */
        public void m18918i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f3386k = AutoScrollHelper.m18942f((int) (currentAnimationTimeMillis - this.f3380e), 0, this.f3377b);
            this.f3385j = m18922e(currentAnimationTimeMillis);
            this.f3384i = currentAnimationTimeMillis;
        }

        /* renamed from: j */
        public void m18917j(int i) {
            this.f3377b = i;
        }

        /* renamed from: k */
        public void m18916k(int i) {
            this.f3376a = i;
        }

        /* renamed from: l */
        public void m18915l(float f, float f2) {
            this.f3378c = f;
            this.f3379d = f2;
        }

        /* renamed from: m */
        public void m18914m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f3380e = currentAnimationTimeMillis;
            this.f3384i = -1L;
            this.f3381f = currentAnimationTimeMillis;
            this.f3385j = 0.5f;
            this.f3382g = 0;
            this.f3383h = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable.class */
    public class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.f3373t) {
                if (autoScrollHelper.f3371r) {
                    autoScrollHelper.f3371r = false;
                    autoScrollHelper.f3359f.m18914m();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.f3359f;
                if (clampedScroller.m18919h() || !AutoScrollHelper.this.m18928u()) {
                    AutoScrollHelper.this.f3373t = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.f3372s) {
                    autoScrollHelper2.f3372s = false;
                    autoScrollHelper2.m18945c();
                }
                clampedScroller.m18926a();
                AutoScrollHelper.this.mo18895j(clampedScroller.m18925b(), clampedScroller.m18924c());
                ViewCompat.m19199f0(AutoScrollHelper.this.f3361h, this);
            }
        }
    }

    public AutoScrollHelper(@NonNull View view) {
        this.f3361h = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        m18934o(f2, f2);
        float f3 = i2;
        m18933p(f3, f3);
        m18937l(1);
        m18935n(Float.MAX_VALUE, Float.MAX_VALUE);
        m18930s(0.2f, 0.2f);
        m18929t(1.0f, 1.0f);
        m18938k(f3358w);
        m18931r(500);
        m18932q(500);
    }

    /* renamed from: d */
    private float m18944d(int i, float f, float f2, float f3) {
        float h = m18940h(this.f3363j[i], f2, this.f3364k[i], f);
        int i2 = (h > 0.0f ? 1 : (h == 0.0f ? 0 : -1));
        if (i2 == 0) {
            return 0.0f;
        }
        float f4 = this.f3367n[i];
        float f5 = this.f3368o[i];
        float f6 = this.f3369p[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m18943e(h * f7, f5, f6) : -m18943e((-h) * f7, f5, f6);
    }

    /* renamed from: e */
    static float m18943e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: f */
    static int m18942f(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: g */
    private float m18941g(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f3365l;
        if (i == 0 || i == 1) {
            if (f < f2) {
                return f >= 0.0f ? 1.0f - (f / f2) : (!this.f3373t || this.f3365l != 1) ? 0.0f : 1.0f;
            }
            return 0.0f;
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        } else {
            return 0.0f;
        }
    }

    /* renamed from: h */
    private float m18940h(float f, float f2, float f3, float f4) {
        float f5;
        float e = m18943e(f * f2, 0.0f, f3);
        float g = m18941g(f2 - f4, e) - m18941g(f4, e);
        if (g < 0.0f) {
            f5 = -this.f3360g.getInterpolation(-g);
        } else if (g <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f3360g.getInterpolation(g);
        }
        return m18943e(f5, -1.0f, 1.0f);
    }

    /* renamed from: i */
    private void m18939i() {
        if (this.f3371r) {
            this.f3373t = false;
        } else {
            this.f3359f.m18918i();
        }
    }

    /* renamed from: v */
    private void m18927v() {
        int i;
        if (this.f3362i == null) {
            this.f3362i = new ScrollAnimationRunnable();
        }
        this.f3373t = true;
        this.f3371r = true;
        if (this.f3370q || (i = this.f3366m) <= 0) {
            this.f3362i.run();
        } else {
            ViewCompat.m19197g0(this.f3361h, this.f3362i, i);
        }
        this.f3370q = true;
    }

    /* renamed from: a */
    public abstract boolean mo18897a(int i);

    /* renamed from: b */
    public abstract boolean mo18896b(int i);

    /* renamed from: c */
    void m18945c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f3361h.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: j */
    public abstract void mo18895j(int i, int i2);

    @NonNull
    /* renamed from: k */
    public AutoScrollHelper m18938k(int i) {
        this.f3366m = i;
        return this;
    }

    @NonNull
    /* renamed from: l */
    public AutoScrollHelper m18937l(int i) {
        this.f3365l = i;
        return this;
    }

    /* renamed from: m */
    public AutoScrollHelper m18936m(boolean z) {
        if (this.f3374u && !z) {
            m18939i();
        }
        this.f3374u = z;
        return this;
    }

    @NonNull
    /* renamed from: n */
    public AutoScrollHelper m18935n(float f, float f2) {
        float[] fArr = this.f3364k;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    /* renamed from: o */
    public AutoScrollHelper m18934o(float f, float f2) {
        float[] fArr = this.f3369p;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r0 != 3) goto L_0x008c;
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
            boolean r0 = r0.f3374u
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r8
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0035
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x002e
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x003f
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L_0x002e
            goto L_0x008c
        L_0x002e:
            r0 = r6
            r0.m18939i()
            goto L_0x008c
        L_0x0035:
            r0 = r6
            r1 = 1
            r0.f3372s = r1
            r0 = r6
            r1 = 0
            r0.f3370q = r1
        L_0x003f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f3361h
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m18944d(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f3361h
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m18944d(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            androidx.core.widget.AutoScrollHelper$ClampedScroller r0 = r0.f3359f
            r1 = r12
            r2 = r13
            r0.m18915l(r1, r2)
            r0 = r6
            boolean r0 = r0.f3373t
            if (r0 != 0) goto L_0x008c
            r0 = r6
            boolean r0 = r0.m18928u()
            if (r0 == 0) goto L_0x008c
            r0 = r6
            r0.m18927v()
        L_0x008c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f3375v
            if (r0 == 0) goto L_0x00a2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f3373t
            if (r0 == 0) goto L_0x00a2
            r0 = 1
            r9 = r0
        L_0x00a2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @NonNull
    /* renamed from: p */
    public AutoScrollHelper m18933p(float f, float f2) {
        float[] fArr = this.f3368o;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    /* renamed from: q */
    public AutoScrollHelper m18932q(int i) {
        this.f3359f.m18917j(i);
        return this;
    }

    @NonNull
    /* renamed from: r */
    public AutoScrollHelper m18931r(int i) {
        this.f3359f.m18916k(i);
        return this;
    }

    @NonNull
    /* renamed from: s */
    public AutoScrollHelper m18930s(float f, float f2) {
        float[] fArr = this.f3363j;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    /* renamed from: t */
    public AutoScrollHelper m18929t(float f, float f2) {
        float[] fArr = this.f3367n;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: u */
    boolean m18928u() {
        ClampedScroller clampedScroller = this.f3359f;
        int f = clampedScroller.m18921f();
        int d = clampedScroller.m18923d();
        return (f != 0 && mo18896b(f)) || (d != 0 && mo18897a(d));
    }
}
