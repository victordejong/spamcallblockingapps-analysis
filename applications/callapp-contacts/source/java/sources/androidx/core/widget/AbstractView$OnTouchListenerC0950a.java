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
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.core.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class AbstractView$OnTouchListenerC0950a implements View.OnTouchListener {

    /* renamed from: r */
    private static final int f3829r = ViewConfiguration.getTapTimeout();

    /* renamed from: a */
    final C0951a f3830a;

    /* renamed from: b */
    final View f3831b;

    /* renamed from: c */
    boolean f3832c;

    /* renamed from: d */
    boolean f3833d;

    /* renamed from: e */
    boolean f3834e;

    /* renamed from: g */
    private Runnable f3836g;

    /* renamed from: o */
    private boolean f3844o;

    /* renamed from: p */
    private boolean f3845p;

    /* renamed from: q */
    private boolean f3846q;

    /* renamed from: f */
    private final Interpolator f3835f = new AccelerateInterpolator();

    /* renamed from: h */
    private float[] f3837h = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: i */
    private float[] f3838i = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: l */
    private float[] f3841l = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: m */
    private float[] f3842m = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: n */
    private float[] f3843n = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: j */
    private int f3839j = 1;

    /* renamed from: k */
    private int f3840k = f3829r;

    /* renamed from: androidx.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static final class C0951a {

        /* renamed from: a */
        int f3847a;

        /* renamed from: b */
        int f3848b;

        /* renamed from: c */
        float f3849c;

        /* renamed from: d */
        float f3850d;

        /* renamed from: j */
        float f3856j;

        /* renamed from: k */
        int f3857k;

        /* renamed from: e */
        long f3851e = Long.MIN_VALUE;

        /* renamed from: i */
        long f3855i = -1;

        /* renamed from: f */
        long f3852f = 0;

        /* renamed from: g */
        int f3853g = 0;

        /* renamed from: h */
        int f3854h = 0;

        C0951a() {
        }

        /* renamed from: a */
        final float m43986a(long j) {
            long j2 = this.f3851e;
            if (j < j2) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            long j3 = this.f3855i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC0950a.m43993a(((float) (j - j2)) / this.f3847a, BitmapDescriptorFactory.HUE_RED, 1.0f) * 0.5f;
            }
            float f = this.f3856j;
            return (1.0f - f) + (f * AbstractView$OnTouchListenerC0950a.m43993a(((float) (j - j3)) / this.f3857k, BitmapDescriptorFactory.HUE_RED, 1.0f));
        }

        /* renamed from: a */
        public final void m43987a() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f3857k = AbstractView$OnTouchListenerC0950a.m43990a((int) (currentAnimationTimeMillis - this.f3851e), this.f3848b);
            this.f3856j = m43986a(currentAnimationTimeMillis);
            this.f3855i = currentAnimationTimeMillis;
        }

        /* renamed from: b */
        public final int m43985b() {
            float f = this.f3849c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: c */
        public final int m43984c() {
            float f = this.f3850d;
            return (int) (f / Math.abs(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    public final class RunnableC0952b implements Runnable {
        RunnableC0952b() {
            AbstractView$OnTouchListenerC0950a.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!AbstractView$OnTouchListenerC0950a.this.f3834e) {
                return;
            }
            if (AbstractView$OnTouchListenerC0950a.this.f3832c) {
                AbstractView$OnTouchListenerC0950a.this.f3832c = false;
                C0951a c0951a = AbstractView$OnTouchListenerC0950a.this.f3830a;
                c0951a.f3851e = AnimationUtils.currentAnimationTimeMillis();
                c0951a.f3855i = -1L;
                c0951a.f3852f = c0951a.f3851e;
                c0951a.f3856j = 0.5f;
                c0951a.f3853g = 0;
                c0951a.f3854h = 0;
            }
            C0951a c0951a2 = AbstractView$OnTouchListenerC0950a.this.f3830a;
            if ((c0951a2.f3855i > 0 && AnimationUtils.currentAnimationTimeMillis() > c0951a2.f3855i + ((long) c0951a2.f3857k)) || !AbstractView$OnTouchListenerC0950a.this.m43995a()) {
                AbstractView$OnTouchListenerC0950a.this.f3834e = false;
                return;
            }
            if (AbstractView$OnTouchListenerC0950a.this.f3833d) {
                AbstractView$OnTouchListenerC0950a.this.f3833d = false;
                AbstractView$OnTouchListenerC0950a abstractView$OnTouchListenerC0950a = AbstractView$OnTouchListenerC0950a.this;
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                abstractView$OnTouchListenerC0950a.f3831b.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (c0951a2.f3852f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float m43986a = c0951a2.m43986a(currentAnimationTimeMillis);
            long j = c0951a2.f3852f;
            c0951a2.f3852f = currentAnimationTimeMillis;
            float f = ((float) (currentAnimationTimeMillis - j)) * (((-4.0f) * m43986a * m43986a) + (m43986a * 4.0f));
            c0951a2.f3853g = (int) (c0951a2.f3849c * f);
            c0951a2.f3854h = (int) (f * c0951a2.f3850d);
            AbstractView$OnTouchListenerC0950a.this.mo43970a(c0951a2.f3854h);
            C0926v.m44117a(AbstractView$OnTouchListenerC0950a.this.f3831b, this);
        }
    }

    public AbstractView$OnTouchListenerC0950a(View view) {
        C0951a c0951a = new C0951a();
        this.f3830a = c0951a;
        this.f3831b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((displayMetrics.density * 1575.0f) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        float f = i;
        float[] fArr = this.f3843n;
        float f2 = f / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float f3 = i2;
        float[] fArr2 = this.f3842m;
        float f4 = f3 / 1000.0f;
        fArr2[0] = f4;
        fArr2[1] = f4;
        float[] fArr3 = this.f3838i;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f3837h;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.f3841l;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        c0951a.f3847a = 500;
        c0951a.f3848b = 500;
    }

    /* renamed from: a */
    private float m43994a(float f, float f2) {
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i = this.f3839j;
        if (i != 0 && i != 1) {
            return (i == 2 && f < BitmapDescriptorFactory.HUE_RED) ? f / (-f2) : BitmapDescriptorFactory.HUE_RED;
        } else if (f >= f2) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            if (f >= BitmapDescriptorFactory.HUE_RED) {
                return 1.0f - (f / f2);
            }
            if (this.f3834e && i == 1) {
                return 1.0f;
            }
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* renamed from: a */
    static float m43993a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: a */
    private float m43992a(float f, float f2, float f3, float f4) {
        float f5;
        float m43993a = m43993a(f * f2, BitmapDescriptorFactory.HUE_RED, f3);
        float m43994a = m43994a(f2 - f4, m43993a) - m43994a(f4, m43993a);
        if (m43994a < BitmapDescriptorFactory.HUE_RED) {
            f5 = -this.f3835f.getInterpolation(-m43994a);
        } else if (m43994a <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            f5 = this.f3835f.getInterpolation(m43994a);
        }
        return m43993a(f5, -1.0f, 1.0f);
    }

    /* renamed from: a */
    private float m43991a(int i, float f, float f2, float f3) {
        float m43992a = m43992a(this.f3837h[i], f2, this.f3838i[i], f);
        int i2 = (m43992a > BitmapDescriptorFactory.HUE_RED ? 1 : (m43992a == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i2 == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = this.f3841l[i];
        float f5 = this.f3842m[i];
        float f6 = this.f3843n[i];
        float f7 = f4 * f3;
        return i2 > 0 ? m43993a(m43992a * f7, f5, f6) : -m43993a((-m43992a) * f7, f5, f6);
    }

    /* renamed from: a */
    static int m43990a(int i, int i2) {
        if (i > i2) {
            return i2;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        return i3;
    }

    /* renamed from: b */
    private void m43988b() {
        if (this.f3832c) {
            this.f3834e = false;
        } else {
            this.f3830a.m43987a();
        }
    }

    /* renamed from: a */
    public final AbstractView$OnTouchListenerC0950a m43989a(boolean z) {
        if (this.f3845p && !z) {
            m43988b();
        }
        this.f3845p = z;
        return this;
    }

    /* renamed from: a */
    public abstract void mo43970a(int i);

    /* renamed from: a */
    final boolean m43995a() {
        C0951a c0951a = this.f3830a;
        int m43984c = c0951a.m43984c();
        c0951a.m43985b();
        return m43984c != 0 && mo43969b(m43984c);
    }

    /* renamed from: b */
    public abstract boolean mo43969b(int i);

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (r0 != 3) goto L29;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AbstractView$OnTouchListenerC0950a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
