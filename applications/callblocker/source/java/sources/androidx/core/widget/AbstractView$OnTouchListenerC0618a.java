package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.core.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class AbstractView$OnTouchListenerC0618a implements View.OnTouchListener {

    /* renamed from: r */
    private static final int f2154r = ViewConfiguration.getTapTimeout();

    /* renamed from: b */
    final View f2156b;

    /* renamed from: c */
    boolean f2157c;

    /* renamed from: d */
    boolean f2158d;

    /* renamed from: e */
    boolean f2159e;

    /* renamed from: g */
    private Runnable f2161g;

    /* renamed from: j */
    private int f2164j;

    /* renamed from: k */
    private int f2165k;

    /* renamed from: o */
    private boolean f2169o;

    /* renamed from: p */
    private boolean f2170p;

    /* renamed from: q */
    private boolean f2171q;

    /* renamed from: a */
    final C0619a f2155a = new C0619a();

    /* renamed from: f */
    private final Interpolator f2160f = new AccelerateInterpolator();

    /* renamed from: h */
    private float[] f2162h = {0.0f, 0.0f};

    /* renamed from: i */
    private float[] f2163i = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: l */
    private float[] f2166l = {0.0f, 0.0f};

    /* renamed from: m */
    private float[] f2167m = {0.0f, 0.0f};

    /* renamed from: n */
    private float[] f2168n = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: androidx.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static class C0619a {

        /* renamed from: a */
        private int f2172a;

        /* renamed from: b */
        private int f2173b;

        /* renamed from: c */
        private float f2174c;

        /* renamed from: d */
        private float f2175d;

        /* renamed from: j */
        private float f2181j;

        /* renamed from: k */
        private int f2182k;

        /* renamed from: e */
        private long f2176e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f2180i = -1;

        /* renamed from: f */
        private long f2177f = 0;

        /* renamed from: g */
        private int f2178g = 0;

        /* renamed from: h */
        private int f2179h = 0;

        C0619a() {
        }

        /* renamed from: a */
        private float m20175a(float f) {
            return ((-4.0f) * f * f) + (4.0f * f);
        }

        /* renamed from: a */
        private float m20172a(long j) {
            float f = 0.0f;
            if (j >= this.f2176e) {
                if (this.f2180i < 0 || j < this.f2180i) {
                    f = AbstractView$OnTouchListenerC0618a.m20193a(((float) (j - this.f2176e)) / this.f2172a, 0.0f, 1.0f) * 0.5f;
                } else {
                    f = (AbstractView$OnTouchListenerC0618a.m20193a(((float) (j - this.f2180i)) / this.f2182k, 0.0f, 1.0f) * this.f2181j) + (1.0f - this.f2181j);
                }
            }
            return f;
        }

        /* renamed from: a */
        public void m20176a() {
            this.f2176e = AnimationUtils.currentAnimationTimeMillis();
            this.f2180i = -1L;
            this.f2177f = this.f2176e;
            this.f2181j = 0.5f;
            this.f2178g = 0;
            this.f2179h = 0;
        }

        /* renamed from: a */
        public void m20174a(float f, float f2) {
            this.f2174c = f;
            this.f2175d = f2;
        }

        /* renamed from: a */
        public void m20173a(int i) {
            this.f2172a = i;
        }

        /* renamed from: b */
        public void m20171b() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2182k = AbstractView$OnTouchListenerC0618a.m20189a((int) (currentAnimationTimeMillis - this.f2176e), 0, this.f2173b);
            this.f2181j = m20172a(currentAnimationTimeMillis);
            this.f2180i = currentAnimationTimeMillis;
        }

        /* renamed from: b */
        public void m20170b(int i) {
            this.f2173b = i;
        }

        /* renamed from: c */
        public boolean m20169c() {
            return this.f2180i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f2180i + ((long) this.f2182k);
        }

        /* renamed from: d */
        public void m20168d() {
            if (this.f2177f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float m20175a = m20175a(m20172a(currentAnimationTimeMillis));
            long j = currentAnimationTimeMillis - this.f2177f;
            this.f2177f = currentAnimationTimeMillis;
            this.f2178g = (int) (((float) j) * m20175a * this.f2174c);
            this.f2179h = (int) (((float) j) * m20175a * this.f2175d);
        }

        /* renamed from: e */
        public int m20167e() {
            return (int) (this.f2174c / Math.abs(this.f2174c));
        }

        /* renamed from: f */
        public int m20166f() {
            return (int) (this.f2175d / Math.abs(this.f2175d));
        }

        /* renamed from: g */
        public int m20165g() {
            return this.f2178g;
        }

        /* renamed from: h */
        public int m20164h() {
            return this.f2179h;
        }
    }

    /* renamed from: androidx.core.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    public class RunnableC0620b implements Runnable {
        RunnableC0620b() {
            AbstractView$OnTouchListenerC0618a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AbstractView$OnTouchListenerC0618a.this.f2159e) {
                return;
            }
            if (AbstractView$OnTouchListenerC0618a.this.f2157c) {
                AbstractView$OnTouchListenerC0618a.this.f2157c = false;
                AbstractView$OnTouchListenerC0618a.this.f2155a.m20176a();
            }
            C0619a c0619a = AbstractView$OnTouchListenerC0618a.this.f2155a;
            if (c0619a.m20169c() || !AbstractView$OnTouchListenerC0618a.this.m20195a()) {
                AbstractView$OnTouchListenerC0618a.this.f2159e = false;
                return;
            }
            if (AbstractView$OnTouchListenerC0618a.this.f2158d) {
                AbstractView$OnTouchListenerC0618a.this.f2158d = false;
                AbstractView$OnTouchListenerC0618a.this.m20187b();
            }
            c0619a.m20168d();
            AbstractView$OnTouchListenerC0618a.this.mo20154a(c0619a.m20165g(), c0619a.m20164h());
            C0595u.m20341a(AbstractView$OnTouchListenerC0618a.this.f2156b, this);
        }
    }

    public AbstractView$OnTouchListenerC0618a(View view) {
        this.f2156b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * displayMetrics.density) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        m20194a(i, i);
        m20186b(i2, i2);
        m20191a(1);
        m20178e(Float.MAX_VALUE, Float.MAX_VALUE);
        m20180d(0.2f, 0.2f);
        m20183c(1.0f, 1.0f);
        m20185b(f2154r);
        m20182c(500);
        m20179d(500);
    }

    /* renamed from: a */
    static float m20193a(float f, float f2, float f3) {
        if (f <= f3) {
            f3 = f < f2 ? f2 : f;
        }
        return f3;
    }

    /* renamed from: a */
    private float m20192a(float f, float f2, float f3, float f4) {
        float f5;
        float interpolation;
        float m20193a = m20193a(f * f2, 0.0f, f3);
        float m20177f = m20177f(f2 - f4, m20193a) - m20177f(f4, m20193a);
        if (m20177f >= 0.0f) {
            f5 = 0.0f;
            if (m20177f > 0.0f) {
                interpolation = this.f2160f.getInterpolation(m20177f);
            }
            return f5;
        }
        interpolation = -this.f2160f.getInterpolation(-m20177f);
        f5 = m20193a(interpolation, -1.0f, 1.0f);
        return f5;
    }

    /* renamed from: a */
    private float m20190a(int i, float f, float f2, float f3) {
        float m20193a;
        float m20192a = m20192a(this.f2162h[i], f2, this.f2163i[i], f);
        if (m20192a == 0.0f) {
            m20193a = 0.0f;
        } else {
            float f4 = this.f2166l[i];
            float f5 = this.f2167m[i];
            float f6 = this.f2168n[i];
            float f7 = f4 * f3;
            m20193a = m20192a > 0.0f ? m20193a(m20192a * f7, f5, f6) : -m20193a((-m20192a) * f7, f5, f6);
        }
        return m20193a;
    }

    /* renamed from: a */
    static int m20189a(int i, int i2, int i3) {
        if (i <= i3) {
            i3 = i < i2 ? i2 : i;
        }
        return i3;
    }

    /* renamed from: c */
    private void m20184c() {
        if (this.f2161g == null) {
            this.f2161g = new RunnableC0620b();
        }
        this.f2159e = true;
        this.f2157c = true;
        if (this.f2169o || this.f2165k <= 0) {
            this.f2161g.run();
        } else {
            C0595u.m20340a(this.f2156b, this.f2161g, this.f2165k);
        }
        this.f2169o = true;
    }

    /* renamed from: d */
    private void m20181d() {
        if (this.f2157c) {
            this.f2159e = false;
        } else {
            this.f2155a.m20171b();
        }
    }

    /* renamed from: f */
    private float m20177f(float f, float f2) {
        float f3;
        if (f2 != 0.0f) {
            switch (this.f2164j) {
                case 0:
                case 1:
                    f3 = 0.0f;
                    if (f < f2) {
                        if (f < 0.0f) {
                            f3 = 0.0f;
                            if (this.f2159e) {
                                f3 = 0.0f;
                                if (this.f2164j == 1) {
                                    f3 = 1.0f;
                                    break;
                                }
                            }
                        } else {
                            f3 = 1.0f - (f / f2);
                            break;
                        }
                    }
                    break;
                case 2:
                    f3 = 0.0f;
                    if (f < 0.0f) {
                        f3 = f / (-f2);
                        break;
                    }
                    break;
                default:
                    f3 = 0.0f;
                    break;
            }
        } else {
            f3 = 0.0f;
        }
        return f3;
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC0618a m20194a(float f, float f2) {
        this.f2168n[0] = f / 1000.0f;
        this.f2168n[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC0618a m20191a(int i) {
        this.f2164j = i;
        return this;
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC0618a m20188a(boolean z) {
        if (this.f2170p && !z) {
            m20181d();
        }
        this.f2170p = z;
        return this;
    }

    /* renamed from: a */
    public abstract void mo20154a(int i, int i2);

    /* renamed from: a */
    boolean m20195a() {
        C0619a c0619a = this.f2155a;
        int m20166f = c0619a.m20166f();
        int m20167e = c0619a.m20167e();
        return (m20166f != 0 && mo20152f(m20166f)) || (m20167e != 0 && mo20153e(m20167e));
    }

    /* renamed from: b */
    public AbstractView$OnTouchListenerC0618a m20186b(float f, float f2) {
        this.f2167m[0] = f / 1000.0f;
        this.f2167m[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: b */
    public AbstractView$OnTouchListenerC0618a m20185b(int i) {
        this.f2165k = i;
        return this;
    }

    /* renamed from: b */
    void m20187b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f2156b.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: c */
    public AbstractView$OnTouchListenerC0618a m20183c(float f, float f2) {
        this.f2166l[0] = f / 1000.0f;
        this.f2166l[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: c */
    public AbstractView$OnTouchListenerC0618a m20182c(int i) {
        this.f2155a.m20173a(i);
        return this;
    }

    /* renamed from: d */
    public AbstractView$OnTouchListenerC0618a m20180d(float f, float f2) {
        this.f2162h[0] = f;
        this.f2162h[1] = f2;
        return this;
    }

    /* renamed from: d */
    public AbstractView$OnTouchListenerC0618a m20179d(int i) {
        this.f2155a.m20170b(i);
        return this;
    }

    /* renamed from: e */
    public AbstractView$OnTouchListenerC0618a m20178e(float f, float f2) {
        this.f2163i[0] = f;
        this.f2163i[1] = f2;
        return this;
    }

    /* renamed from: e */
    public abstract boolean mo20153e(int i);

    /* renamed from: f */
    public abstract boolean mo20152f(int i);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        if (!this.f2170p) {
            z = false;
        } else {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.f2158d = true;
                    this.f2169o = false;
                    this.f2155a.m20174a(m20190a(0, motionEvent.getX(), view.getWidth(), this.f2156b.getWidth()), m20190a(1, motionEvent.getY(), view.getHeight(), this.f2156b.getHeight()));
                    if (!this.f2159e && m20195a()) {
                        m20184c();
                        break;
                    }
                    break;
                case 1:
                case 3:
                    m20181d();
                    break;
                case 2:
                    this.f2155a.m20174a(m20190a(0, motionEvent.getX(), view.getWidth(), this.f2156b.getWidth()), m20190a(1, motionEvent.getY(), view.getHeight(), this.f2156b.getHeight()));
                    if (!this.f2159e) {
                        m20184c();
                        break;
                    }
                    break;
            }
            if (!this.f2171q || !this.f2159e) {
                z = false;
            }
        }
        return z;
    }
}
