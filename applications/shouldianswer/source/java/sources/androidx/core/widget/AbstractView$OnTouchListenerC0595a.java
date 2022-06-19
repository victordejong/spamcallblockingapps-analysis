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
import androidx.core.p023g.C0552u;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.core.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class AbstractView$OnTouchListenerC0595a implements View.OnTouchListener {

    /* renamed from: r */
    private static final int f1997r = ViewConfiguration.getTapTimeout();

    /* renamed from: b */
    final View f1999b;

    /* renamed from: c */
    boolean f2000c;

    /* renamed from: d */
    boolean f2001d;

    /* renamed from: e */
    boolean f2002e;

    /* renamed from: g */
    private Runnable f2004g;

    /* renamed from: j */
    private int f2007j;

    /* renamed from: k */
    private int f2008k;

    /* renamed from: o */
    private boolean f2012o;

    /* renamed from: p */
    private boolean f2013p;

    /* renamed from: q */
    private boolean f2014q;

    /* renamed from: a */
    final C0596a f1998a = new C0596a();

    /* renamed from: f */
    private final Interpolator f2003f = new AccelerateInterpolator();

    /* renamed from: h */
    private float[] f2005h = {FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT};

    /* renamed from: i */
    private float[] f2006i = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: l */
    private float[] f2009l = {FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT};

    /* renamed from: m */
    private float[] f2010m = {FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT};

    /* renamed from: n */
    private float[] f2011n = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: androidx.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static class C0596a {

        /* renamed from: a */
        private int f2015a;

        /* renamed from: b */
        private int f2016b;

        /* renamed from: c */
        private float f2017c;

        /* renamed from: d */
        private float f2018d;

        /* renamed from: j */
        private float f2024j;

        /* renamed from: k */
        private int f2025k;

        /* renamed from: e */
        private long f2019e = Long.MIN_VALUE;

        /* renamed from: i */
        private long f2023i = -1;

        /* renamed from: f */
        private long f2020f = 0;

        /* renamed from: g */
        private int f2021g = 0;

        /* renamed from: h */
        private int f2022h = 0;

        C0596a() {
        }

        /* renamed from: a */
        private float m6008a(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: a */
        private float m6005a(long j) {
            if (j < this.f2019e) {
                return FlexItem.FLEX_GROW_DEFAULT;
            }
            long j2 = this.f2023i;
            if (j2 < 0 || j < j2) {
                return AbstractView$OnTouchListenerC0595a.m6026a(((float) (j - this.f2019e)) / this.f2015a, (float) FlexItem.FLEX_GROW_DEFAULT, 1.0f) * 0.5f;
            }
            float f = this.f2024j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0595a.m6026a(((float) (j - j2)) / this.f2025k, (float) FlexItem.FLEX_GROW_DEFAULT, 1.0f));
        }

        /* renamed from: a */
        public void m6009a() {
            this.f2019e = AnimationUtils.currentAnimationTimeMillis();
            this.f2023i = -1L;
            this.f2020f = this.f2019e;
            this.f2024j = 0.5f;
            this.f2021g = 0;
            this.f2022h = 0;
        }

        /* renamed from: a */
        public void m6007a(float f, float f2) {
            this.f2017c = f;
            this.f2018d = f2;
        }

        /* renamed from: a */
        public void m6006a(int i) {
            this.f2015a = i;
        }

        /* renamed from: b */
        public void m6004b() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2025k = AbstractView$OnTouchListenerC0595a.m6022a((int) (currentAnimationTimeMillis - this.f2019e), 0, this.f2016b);
            this.f2024j = m6005a(currentAnimationTimeMillis);
            this.f2023i = currentAnimationTimeMillis;
        }

        /* renamed from: b */
        public void m6003b(int i) {
            this.f2016b = i;
        }

        /* renamed from: c */
        public boolean m6002c() {
            return this.f2023i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f2023i + ((long) this.f2025k);
        }

        /* renamed from: d */
        public void m6001d() {
            if (this.f2020f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float m6008a = m6008a(m6005a(currentAnimationTimeMillis));
                long j = this.f2020f;
                this.f2020f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * m6008a;
                this.f2021g = (int) (this.f2017c * f);
                this.f2022h = (int) (f * this.f2018d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: e */
        public int m6000e() {
            float f = this.f2017c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public int m5999f() {
            float f = this.f2018d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: g */
        public int m5998g() {
            return this.f2021g;
        }

        /* renamed from: h */
        public int m5997h() {
            return this.f2022h;
        }
    }

    /* renamed from: androidx.core.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    public class RunnableC0597b implements Runnable {
        RunnableC0597b() {
            AbstractView$OnTouchListenerC0595a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AbstractView$OnTouchListenerC0595a.this.f2002e) {
                return;
            }
            if (AbstractView$OnTouchListenerC0595a.this.f2000c) {
                AbstractView$OnTouchListenerC0595a abstractView$OnTouchListenerC0595a = AbstractView$OnTouchListenerC0595a.this;
                abstractView$OnTouchListenerC0595a.f2000c = false;
                abstractView$OnTouchListenerC0595a.f1998a.m6009a();
            }
            C0596a c0596a = AbstractView$OnTouchListenerC0595a.this.f1998a;
            if (c0596a.m6002c() || !AbstractView$OnTouchListenerC0595a.this.m6028a()) {
                AbstractView$OnTouchListenerC0595a.this.f2002e = false;
                return;
            }
            if (AbstractView$OnTouchListenerC0595a.this.f2001d) {
                AbstractView$OnTouchListenerC0595a abstractView$OnTouchListenerC0595a2 = AbstractView$OnTouchListenerC0595a.this;
                abstractView$OnTouchListenerC0595a2.f2001d = false;
                abstractView$OnTouchListenerC0595a2.m6020b();
            }
            c0596a.m6001d();
            AbstractView$OnTouchListenerC0595a.this.mo5988a(c0596a.m5998g(), c0596a.m5997h());
            C0552u.m6265a(AbstractView$OnTouchListenerC0595a.this.f1999b, this);
        }
    }

    public AbstractView$OnTouchListenerC0595a(View view) {
        this.f1999b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((displayMetrics.density * 1575.0f) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        float f = i;
        m6027a(f, f);
        float f2 = i2;
        m6019b(f2, f2);
        m6024a(1);
        m6011e(Float.MAX_VALUE, Float.MAX_VALUE);
        m6013d(0.2f, 0.2f);
        m6016c(1.0f, 1.0f);
        m6018b(f1997r);
        m6015c(500);
        m6012d(500);
    }

    /* renamed from: a */
    static float m6026a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: a */
    private float m6025a(float f, float f2, float f3, float f4) {
        float f5;
        float m6026a = m6026a(f * f2, (float) FlexItem.FLEX_GROW_DEFAULT, f3);
        float m6010f = m6010f(f2 - f4, m6026a) - m6010f(f4, m6026a);
        if (m6010f < FlexItem.FLEX_GROW_DEFAULT) {
            f5 = -this.f2003f.getInterpolation(-m6010f);
        } else if (m6010f <= FlexItem.FLEX_GROW_DEFAULT) {
            return FlexItem.FLEX_GROW_DEFAULT;
        } else {
            f5 = this.f2003f.getInterpolation(m6010f);
        }
        return m6026a(f5, -1.0f, 1.0f);
    }

    /* renamed from: a */
    private float m6023a(int i, float f, float f2, float f3) {
        float m6025a = m6025a(this.f2005h[i], f2, this.f2006i[i], f);
        int i2 = (m6025a > FlexItem.FLEX_GROW_DEFAULT ? 1 : (m6025a == FlexItem.FLEX_GROW_DEFAULT ? 0 : -1));
        if (i2 == 0) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        float f4 = this.f2009l[i];
        float f5 = this.f2010m[i];
        float f6 = this.f2011n[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m6026a(m6025a * f7, f5, f6) : -m6026a((-m6025a) * f7, f5, f6);
    }

    /* renamed from: a */
    static int m6022a(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: c */
    private void m6017c() {
        int i;
        if (this.f2004g == null) {
            this.f2004g = new RunnableC0597b();
        }
        this.f2002e = true;
        this.f2000c = true;
        if (this.f2012o || (i = this.f2008k) <= 0) {
            this.f2004g.run();
        } else {
            C0552u.m6264a(this.f1999b, this.f2004g, i);
        }
        this.f2012o = true;
    }

    /* renamed from: d */
    private void m6014d() {
        if (this.f2000c) {
            this.f2002e = false;
        } else {
            this.f1998a.m6004b();
        }
    }

    /* renamed from: f */
    private float m6010f(float f, float f2) {
        if (f2 == FlexItem.FLEX_GROW_DEFAULT) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        int i = this.f2007j;
        if (i != 0 && i != 1) {
            return (i == 2 && f < FlexItem.FLEX_GROW_DEFAULT) ? f / (-f2) : FlexItem.FLEX_GROW_DEFAULT;
        } else if (f >= f2) {
            return FlexItem.FLEX_GROW_DEFAULT;
        } else {
            if (f >= FlexItem.FLEX_GROW_DEFAULT) {
                return 1.0f - (f / f2);
            }
            if (this.f2002e && this.f2007j == 1) {
                return 1.0f;
            }
            return FlexItem.FLEX_GROW_DEFAULT;
        }
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC0595a m6027a(float f, float f2) {
        float[] fArr = this.f2011n;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC0595a m6024a(int i) {
        this.f2007j = i;
        return this;
    }

    /* renamed from: a */
    public AbstractView$OnTouchListenerC0595a m6021a(boolean z) {
        if (this.f2013p && !z) {
            m6014d();
        }
        this.f2013p = z;
        return this;
    }

    /* renamed from: a */
    public abstract void mo5988a(int i, int i2);

    /* renamed from: a */
    boolean m6028a() {
        C0596a c0596a = this.f1998a;
        int m5999f = c0596a.m5999f();
        int m6000e = c0596a.m6000e();
        return (m5999f != 0 && mo5986f(m5999f)) || (m6000e != 0 && mo5987e(m6000e));
    }

    /* renamed from: b */
    public AbstractView$OnTouchListenerC0595a m6019b(float f, float f2) {
        float[] fArr = this.f2010m;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: b */
    public AbstractView$OnTouchListenerC0595a m6018b(int i) {
        this.f2008k = i;
        return this;
    }

    /* renamed from: b */
    void m6020b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0);
        this.f1999b.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: c */
    public AbstractView$OnTouchListenerC0595a m6016c(float f, float f2) {
        float[] fArr = this.f2009l;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: c */
    public AbstractView$OnTouchListenerC0595a m6015c(int i) {
        this.f1998a.m6006a(i);
        return this;
    }

    /* renamed from: d */
    public AbstractView$OnTouchListenerC0595a m6013d(float f, float f2) {
        float[] fArr = this.f2005h;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: d */
    public AbstractView$OnTouchListenerC0595a m6012d(int i) {
        this.f1998a.m6003b(i);
        return this;
    }

    /* renamed from: e */
    public AbstractView$OnTouchListenerC0595a m6011e(float f, float f2) {
        float[] fArr = this.f2006i;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: e */
    public abstract boolean mo5987e(int i);

    /* renamed from: f */
    public abstract boolean mo5986f(int i);

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
            boolean r0 = r0.f2013p
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
            r0.m6014d()
            goto L8c
        L35:
            r0 = r6
            r1 = 1
            r0.f2001d = r1
            r0 = r6
            r1 = 0
            r0.f2012o = r1
        L3f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f1999b
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.m6023a(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.f1999b
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.m6023a(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            androidx.core.widget.a$a r0 = r0.f1998a
            r1 = r12
            r2 = r13
            r0.m6007a(r1, r2)
            r0 = r6
            boolean r0 = r0.f2002e
            if (r0 != 0) goto L8c
            r0 = r6
            boolean r0 = r0.m6028a()
            if (r0 == 0) goto L8c
            r0 = r6
            r0.m6017c()
        L8c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f2014q
            if (r0 == 0) goto La2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.f2002e
            if (r0 == 0) goto La2
            r0 = 1
            r9 = r0
        La2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AbstractView$OnTouchListenerC0595a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
