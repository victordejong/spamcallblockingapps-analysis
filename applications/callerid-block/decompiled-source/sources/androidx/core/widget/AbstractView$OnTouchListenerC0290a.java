package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import d.h.m.t;
/* renamed from: androidx.core.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class AbstractView$OnTouchListenerC0290a implements View.OnTouchListener {

    /* renamed from: s */
    private static final int f1705s = ViewConfiguration.getTapTimeout();

    /* renamed from: d */
    final View f1708d;

    /* renamed from: e */
    private Runnable f1709e;

    /* renamed from: h */
    private int f1712h;

    /* renamed from: i */
    private int f1713i;

    /* renamed from: m */
    private boolean f1717m;

    /* renamed from: n */
    boolean f1718n;

    /* renamed from: o */
    boolean f1719o;

    /* renamed from: p */
    boolean f1720p;

    /* renamed from: q */
    private boolean f1721q;

    /* renamed from: r */
    private boolean f1722r;

    /* renamed from: b */
    final C0291a f1706b = new C0291a();

    /* renamed from: c */
    private final Interpolator f1707c = new AccelerateInterpolator();

    /* renamed from: f */
    private float[] f1710f = {0.0f, 0.0f};

    /* renamed from: g */
    private float[] f1711g = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: j */
    private float[] f1714j = {0.0f, 0.0f};

    /* renamed from: k */
    private float[] f1715k = {0.0f, 0.0f};

    /* renamed from: l */
    private float[] f1716l = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static class C0291a {

        /* renamed from: a */
        private int f1723a;

        /* renamed from: b */
        private int f1724b;

        /* renamed from: c */
        private float f1725c;

        /* renamed from: d */
        private float f1726d;

        /* renamed from: j */
        private float f1732j;

        /* renamed from: k */
        private int f1733k;

        /* renamed from: e */
        private long f1727e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f1731i = -1;

        /* renamed from: f */
        private long f1728f = 0;

        /* renamed from: g */
        private int f1729g = 0;

        /* renamed from: h */
        private int f1730h = 0;

        C0291a() {
        }

        /* renamed from: e */
        private float m13427e(long j) {
            long j2 = this.f1727e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f1731i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC0290a.m13446f(((float) (j - j2)) / this.f1723a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f1732j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0290a.m13446f(((float) (j - j3)) / this.f1733k, 0.0f, 1.0f));
        }

        /* renamed from: g */
        private float m13425g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: a */
        public void m13431a() {
            if (this.f1728f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float g = m13425g(m13427e(currentAnimationTimeMillis));
                long j = this.f1728f;
                this.f1728f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * g;
                this.f1729g = (int) (this.f1725c * f);
                this.f1730h = (int) (f * this.f1726d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: b */
        public int m13430b() {
            return this.f1729g;
        }

        /* renamed from: c */
        public int m13429c() {
            return this.f1730h;
        }

        /* renamed from: d */
        public int m13428d() {
            float f = this.f1725c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public int m13426f() {
            float f = this.f1726d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: h */
        public boolean m13424h() {
            return this.f1731i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f1731i + ((long) this.f1733k);
        }

        /* renamed from: i */
        public void m13423i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1733k = AbstractView$OnTouchListenerC0290a.m13445g((int) (currentAnimationTimeMillis - this.f1727e), 0, this.f1724b);
            this.f1732j = m13427e(currentAnimationTimeMillis);
            this.f1731i = currentAnimationTimeMillis;
        }

        /* renamed from: j */
        public void m13422j(int i) {
            this.f1724b = i;
        }

        /* renamed from: k */
        public void m13421k(int i) {
            this.f1723a = i;
        }

        /* renamed from: l */
        public void m13420l(float f, float f2) {
            this.f1725c = f;
            this.f1726d = f2;
        }

        /* renamed from: m */
        public void m13419m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1727e = currentAnimationTimeMillis;
            this.f1731i = -1L;
            this.f1728f = currentAnimationTimeMillis;
            this.f1732j = 0.5f;
            this.f1729g = 0;
            this.f1730h = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    public class RunnableC0292b implements Runnable {
        RunnableC0292b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0290a aVar = AbstractView$OnTouchListenerC0290a.this;
            if (aVar.f1720p) {
                if (aVar.f1718n) {
                    aVar.f1718n = false;
                    aVar.f1706b.m13419m();
                }
                C0291a aVar2 = AbstractView$OnTouchListenerC0290a.this.f1706b;
                if (aVar2.m13424h() || !AbstractView$OnTouchListenerC0290a.this.m13452B()) {
                    AbstractView$OnTouchListenerC0290a.this.f1720p = false;
                    return;
                }
                AbstractView$OnTouchListenerC0290a aVar3 = AbstractView$OnTouchListenerC0290a.this;
                if (aVar3.f1719o) {
                    aVar3.f1719o = false;
                    aVar3.m13448c();
                }
                aVar2.m13431a();
                AbstractView$OnTouchListenerC0290a.this.m13441o(aVar2.m13430b(), aVar2.m13429c());
                t.f0(AbstractView$OnTouchListenerC0290a.this.f1708d, this);
            }
        }
    }

    public AbstractView$OnTouchListenerC0290a(View view) {
        this.f1708d = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        m13436v(f2, f2);
        float f3 = i2;
        m13435w(f3, f3);
        m13439s(1);
        m13437u(Float.MAX_VALUE, Float.MAX_VALUE);
        m13432z(0.2f, 0.2f);
        m13453A(1.0f, 1.0f);
        m13440r(f1705s);
        m13433y(500);
        m13434x(500);
    }

    /* renamed from: C */
    private void m13451C() {
        int i;
        if (this.f1709e == null) {
            this.f1709e = new RunnableC0292b();
        }
        this.f1720p = true;
        this.f1718n = true;
        if (this.f1717m || (i = this.f1713i) <= 0) {
            this.f1709e.run();
        } else {
            t.g0(this.f1708d, this.f1709e, i);
        }
        this.f1717m = true;
    }

    /* renamed from: d */
    private float m13447d(int i, float f, float f2, float f3) {
        float l = m13443l(this.f1710f[i], f2, this.f1711g[i], f);
        if (l == 0.0f) {
            return 0.0f;
        }
        float f4 = this.f1714j[i];
        float f5 = this.f1715k[i];
        float f6 = this.f1716l[i];
        float f7 = f4 * f3;
        return l > 0.0f ? m13446f(l * f7, f5, f6) : -m13446f((-l) * f7, f5, f6);
    }

    /* renamed from: f */
    static float m13446f(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: g */
    static int m13445g(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: i */
    private float m13444i(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f1712h;
        if (i == 0 || i == 1) {
            if (f < f2) {
                return f >= 0.0f ? 1.0f - (f / f2) : (!this.f1720p || i != 1) ? 0.0f : 1.0f;
            }
            return 0.0f;
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        } else {
            return 0.0f;
        }
    }

    /* renamed from: l */
    private float m13443l(float f, float f2, float f3, float f4) {
        float f5;
        float f6 = m13446f(f * f2, 0.0f, f3);
        float i = m13444i(f2 - f4, f6) - m13444i(f4, f6);
        if (i < 0.0f) {
            f5 = -this.f1707c.getInterpolation(-i);
        } else if (i <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.f1707c.getInterpolation(i);
        }
        return m13446f(f5, -1.0f, 1.0f);
    }

    /* renamed from: m */
    private void m13442m() {
        if (this.f1718n) {
            this.f1720p = false;
        } else {
            this.f1706b.m13423i();
        }
    }

    /* renamed from: A */
    public AbstractView$OnTouchListenerC0290a m13453A(float f, float f2) {
        float[] fArr = this.f1714j;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: B */
    boolean m13452B() {
        C0291a aVar = this.f1706b;
        int f = aVar.m13426f();
        int d = aVar.m13428d();
        return (f != 0 && m13449b(f)) || (d != 0 && m13450a(d));
    }

    /* renamed from: a */
    public abstract boolean m13450a(int i);

    /* renamed from: b */
    public abstract boolean m13449b(int i);

    /* renamed from: c */
    void m13448c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f1708d.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: o */
    public abstract void m13441o(int i, int i2);

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
            boolean r0 = r0.f1721q
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
            r0.m13442m()
            goto L_0x008c
        L_0x0035:
            r0 = r6
            r1 = 1
            r0.f1719o = r1
            r0 = r6
            r1 = 0
            r0.f1717m = r1
        L_0x003f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f1708d
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m13447d(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f1708d
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m13447d(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            androidx.core.widget.a$a r0 = r0.f1706b
            r1 = r12
            r2 = r13
            r0.m13420l(r1, r2)
            r0 = r6
            boolean r0 = r0.f1720p
            if (r0 != 0) goto L_0x008c
            r0 = r6
            boolean r0 = r0.m13452B()
            if (r0 == 0) goto L_0x008c
            r0 = r6
            r0.m13451C()
        L_0x008c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f1722r
            if (r0 == 0) goto L_0x00a2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f1720p
            if (r0 == 0) goto L_0x00a2
            r0 = 1
            r9 = r0
        L_0x00a2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AbstractView$OnTouchListenerC0290a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: r */
    public AbstractView$OnTouchListenerC0290a m13440r(int i) {
        this.f1713i = i;
        return this;
    }

    /* renamed from: s */
    public AbstractView$OnTouchListenerC0290a m13439s(int i) {
        this.f1712h = i;
        return this;
    }

    /* renamed from: t */
    public AbstractView$OnTouchListenerC0290a m13438t(boolean z) {
        if (this.f1721q && !z) {
            m13442m();
        }
        this.f1721q = z;
        return this;
    }

    /* renamed from: u */
    public AbstractView$OnTouchListenerC0290a m13437u(float f, float f2) {
        float[] fArr = this.f1711g;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: v */
    public AbstractView$OnTouchListenerC0290a m13436v(float f, float f2) {
        float[] fArr = this.f1716l;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: w */
    public AbstractView$OnTouchListenerC0290a m13435w(float f, float f2) {
        float[] fArr = this.f1715k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: x */
    public AbstractView$OnTouchListenerC0290a m13434x(int i) {
        this.f1706b.m13422j(i);
        return this;
    }

    /* renamed from: y */
    public AbstractView$OnTouchListenerC0290a m13433y(int i) {
        this.f1706b.m13421k(i);
        return this;
    }

    /* renamed from: z */
    public AbstractView$OnTouchListenerC0290a m13432z(float f, float f2) {
        float[] fArr = this.f1710f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }
}
