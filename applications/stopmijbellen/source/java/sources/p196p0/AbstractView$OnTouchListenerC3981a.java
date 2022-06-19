package p196p0;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: p0.a */
/* loaded from: classes-dex2jar.jar:p0/a.class */
public abstract class AbstractView$OnTouchListenerC3981a implements View.OnTouchListener {

    /* renamed from: q */
    public static final int f12505q = ViewConfiguration.getTapTimeout();

    /* renamed from: a */
    public final C3982a f12506a;

    /* renamed from: c */
    public final View f12508c;

    /* renamed from: d */
    public Runnable f12509d;

    /* renamed from: l */
    public boolean f12517l;

    /* renamed from: m */
    public boolean f12518m;

    /* renamed from: n */
    public boolean f12519n;

    /* renamed from: o */
    public boolean f12520o;

    /* renamed from: p */
    public boolean f12521p;

    /* renamed from: b */
    public final Interpolator f12507b = new AccelerateInterpolator();

    /* renamed from: e */
    public float[] f12510e = {0.0f, 0.0f};

    /* renamed from: f */
    public float[] f12511f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: i */
    public float[] f12514i = {0.0f, 0.0f};

    /* renamed from: j */
    public float[] f12515j = {0.0f, 0.0f};

    /* renamed from: k */
    public float[] f12516k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: g */
    public int f12512g = 1;

    /* renamed from: h */
    public int f12513h = f12505q;

    /* renamed from: p0.a$a */
    /* loaded from: classes-dex2jar.jar:p0/a$a.class */
    public static class C3982a {

        /* renamed from: a */
        public int f12522a;

        /* renamed from: b */
        public int f12523b;

        /* renamed from: c */
        public float f12524c;

        /* renamed from: d */
        public float f12525d;

        /* renamed from: j */
        public float f12531j;

        /* renamed from: k */
        public int f12532k;

        /* renamed from: e */
        public long f12526e = Long.MIN_VALUE;

        /* renamed from: i */
        public long f12530i = -1;

        /* renamed from: f */
        public long f12527f = 0;

        /* renamed from: g */
        public int f12528g = 0;

        /* renamed from: h */
        public int f12529h = 0;

        /* renamed from: a */
        public final float m1575a(long j) {
            long j2 = this.f12526e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f12530i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC3981a.m1579b(((float) (j - j2)) / this.f12522a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f12531j;
            return (AbstractView$OnTouchListenerC3981a.m1579b(((float) (j - j3)) / this.f12532k, 0.0f, 1.0f) * f) + (1.0f - f);
        }
    }

    /* renamed from: p0.a$b */
    /* loaded from: classes-dex2jar.jar:p0/a$b.class */
    public class RunnableC3983b implements Runnable {
        public RunnableC3983b() {
            AbstractView$OnTouchListenerC3981a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC3981a abstractView$OnTouchListenerC3981a = AbstractView$OnTouchListenerC3981a.this;
            if (!abstractView$OnTouchListenerC3981a.f12520o) {
                return;
            }
            if (abstractView$OnTouchListenerC3981a.f12518m) {
                abstractView$OnTouchListenerC3981a.f12518m = false;
                C3982a c3982a = abstractView$OnTouchListenerC3981a.f12506a;
                Objects.requireNonNull(c3982a);
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                c3982a.f12526e = currentAnimationTimeMillis;
                c3982a.f12530i = -1L;
                c3982a.f12527f = currentAnimationTimeMillis;
                c3982a.f12531j = 0.5f;
                c3982a.f12528g = 0;
                c3982a.f12529h = 0;
            }
            C3982a c3982a2 = AbstractView$OnTouchListenerC3981a.this.f12506a;
            if ((c3982a2.f12530i > 0 && AnimationUtils.currentAnimationTimeMillis() > c3982a2.f12530i + ((long) c3982a2.f12532k)) || !AbstractView$OnTouchListenerC3981a.this.m1576e()) {
                AbstractView$OnTouchListenerC3981a.this.f12520o = false;
                return;
            }
            AbstractView$OnTouchListenerC3981a abstractView$OnTouchListenerC3981a2 = AbstractView$OnTouchListenerC3981a.this;
            if (abstractView$OnTouchListenerC3981a2.f12519n) {
                abstractView$OnTouchListenerC3981a2.f12519n = false;
                Objects.requireNonNull(abstractView$OnTouchListenerC3981a2);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                abstractView$OnTouchListenerC3981a2.f12508c.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (c3982a2.f12527f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
            float m1575a = c3982a2.m1575a(currentAnimationTimeMillis2);
            long j = c3982a2.f12527f;
            c3982a2.f12527f = currentAnimationTimeMillis2;
            float f = ((float) (currentAnimationTimeMillis2 - j)) * ((m1575a * 4.0f) + ((-4.0f) * m1575a * m1575a));
            c3982a2.f12528g = (int) (c3982a2.f12524c * f);
            int i = (int) (f * c3982a2.f12525d);
            c3982a2.f12529h = i;
            ((C3988e) AbstractView$OnTouchListenerC3981a.this).f12537r.scrollListBy(i);
            View view = AbstractView$OnTouchListenerC3981a.this.f12508c;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2081m(view, this);
        }
    }

    public AbstractView$OnTouchListenerC3981a(View view) {
        C3982a c3982a = new C3982a();
        this.f12506a = c3982a;
        this.f12508c = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        float[] fArr = this.f12516k;
        float f3 = f2 / 1000.0f;
        fArr[0] = f3;
        fArr[1] = f3;
        float f4 = i2;
        float[] fArr2 = this.f12515j;
        float f5 = f4 / 1000.0f;
        fArr2[0] = f5;
        fArr2[1] = f5;
        float[] fArr3 = this.f12511f;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f12510e;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.f12514i;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        c3982a.f12522a = 500;
        c3982a.f12523b = 500;
    }

    /* renamed from: b */
    public static float m1579b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m1580a(int r6, float r7, float r8, float r9) {
        /*
            Method dump skipped, instructions count: 165
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p196p0.AbstractView$OnTouchListenerC3981a.m1580a(int, float, float, float):float");
    }

    /* renamed from: c */
    public final float m1578c(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f12512g;
        if (i == 0 || i == 1) {
            if (f >= f2) {
                return 0.0f;
            }
            return f >= 0.0f ? 1.0f - (f / f2) : (!this.f12520o || i != 1) ? 0.0f : 1.0f;
        } else if (i != 2 || f >= 0.0f) {
            return 0.0f;
        } else {
            return f / (-f2);
        }
    }

    /* renamed from: d */
    public final void m1577d() {
        if (this.f12518m) {
            this.f12520o = false;
            return;
        }
        C3982a c3982a = this.f12506a;
        Objects.requireNonNull(c3982a);
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i = (int) (currentAnimationTimeMillis - c3982a.f12526e);
        int i2 = c3982a.f12523b;
        if (i > i2) {
            i = i2;
        } else if (i < 0) {
            i = 0;
        }
        c3982a.f12532k = i;
        c3982a.f12531j = c3982a.m1575a(currentAnimationTimeMillis);
        c3982a.f12530i = currentAnimationTimeMillis;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0088, code lost:
        if (r7 != false) goto L23;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1576e() {
        /*
            r4 = this;
            r0 = r4
            p0.a$a r0 = r0.f12506a
            r5 = r0
            r0 = r5
            float r0 = r0.f12525d
            r6 = r0
            r0 = r6
            r1 = r6
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 / r1
            int r0 = (int) r0
            r7 = r0
            r0 = r5
            float r0 = r0.f12524c
            r6 = r0
            r0 = r6
            r1 = r6
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 / r1
            int r0 = (int) r0
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L8b
            r0 = r4
            p0.e r0 = (p196p0.C3988e) r0
            android.widget.ListView r0 = r0.f12537r
            r5 = r0
            r0 = r5
            int r0 = r0.getCount()
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L3f
        L3a:
            r0 = 0
            r7 = r0
            goto L87
        L3f:
            r0 = r5
            int r0 = r0.getChildCount()
            r8 = r0
            r0 = r5
            int r0 = r0.getFirstVisiblePosition()
            r11 = r0
            r0 = r7
            if (r0 <= 0) goto L6e
            r0 = r11
            r1 = r8
            int r0 = r0 + r1
            r1 = r10
            if (r0 < r1) goto L85
            r0 = r5
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getBottom()
            r1 = r5
            int r1 = r1.getHeight()
            if (r0 > r1) goto L85
            goto L3a
        L6e:
            r0 = r7
            if (r0 >= 0) goto L3a
            r0 = r11
            if (r0 > 0) goto L85
            r0 = r5
            r1 = 0
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getTop()
            if (r0 < 0) goto L85
            goto L3a
        L85:
            r0 = 1
            r7 = r0
        L87:
            r0 = r7
            if (r0 != 0) goto L8e
        L8b:
            r0 = 0
            r9 = r0
        L8e:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p196p0.AbstractView$OnTouchListenerC3981a.m1576e():boolean");
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        if (!this.f12521p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                }
            }
            m1577d();
            return false;
        }
        this.f12519n = true;
        this.f12517l = false;
        float m1580a = m1580a(0, motionEvent.getX(), view.getWidth(), this.f12508c.getWidth());
        float m1580a2 = m1580a(1, motionEvent.getY(), view.getHeight(), this.f12508c.getHeight());
        C3982a c3982a = this.f12506a;
        c3982a.f12524c = m1580a;
        c3982a.f12525d = m1580a2;
        if (this.f12520o || !m1576e()) {
            return false;
        }
        if (this.f12509d == null) {
            this.f12509d = new RunnableC3983b();
        }
        this.f12520o = true;
        this.f12518m = true;
        if (this.f12517l || (i = this.f12513h) <= 0) {
            this.f12509d.run();
        } else {
            View view2 = this.f12508c;
            Runnable runnable = this.f12509d;
            long j = i;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2080n(view2, runnable, j);
        }
        this.f12517l = true;
        return false;
    }
}
