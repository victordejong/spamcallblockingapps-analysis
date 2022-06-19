package p1727n3.p1807k.p1824j;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.k.j.e */
/* loaded from: classes-dex2jar.jar:n3/k/j/e.class */
public abstract class AbstractView$OnTouchListenerC26632e implements View.OnTouchListener {

    /* renamed from: q */
    public static final int f74533q = ViewConfiguration.getTapTimeout();

    /* renamed from: a */
    public final C26633a f74534a;

    /* renamed from: c */
    public final View f74536c;

    /* renamed from: d */
    public Runnable f74537d;

    /* renamed from: l */
    public boolean f74545l;

    /* renamed from: m */
    public boolean f74546m;

    /* renamed from: n */
    public boolean f74547n;

    /* renamed from: o */
    public boolean f74548o;

    /* renamed from: p */
    public boolean f74549p;

    /* renamed from: b */
    public final Interpolator f74535b = new AccelerateInterpolator();

    /* renamed from: e */
    public float[] f74538e = {0.0f, 0.0f};

    /* renamed from: f */
    public float[] f74539f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: i */
    public float[] f74542i = {0.0f, 0.0f};

    /* renamed from: j */
    public float[] f74543j = {0.0f, 0.0f};

    /* renamed from: k */
    public float[] f74544k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: g */
    public int f74540g = 1;

    /* renamed from: h */
    public int f74541h = f74533q;

    /* renamed from: n3.k.j.e$a */
    /* loaded from: classes-dex2jar.jar:n3/k/j/e$a.class */
    public static class C26633a {

        /* renamed from: a */
        public int f74550a;

        /* renamed from: b */
        public int f74551b;

        /* renamed from: c */
        public float f74552c;

        /* renamed from: d */
        public float f74553d;

        /* renamed from: j */
        public float f74559j;

        /* renamed from: k */
        public int f74560k;

        /* renamed from: e */
        public long f74554e = Long.MIN_VALUE;

        /* renamed from: i */
        public long f74558i = -1;

        /* renamed from: f */
        public long f74555f = 0;

        /* renamed from: g */
        public int f74556g = 0;

        /* renamed from: h */
        public int f74557h = 0;

        /* renamed from: a */
        public final float m1539a(long j) {
            long j2 = this.f74554e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f74558i;
            if (j3 < 0 || j < j3) {
                return AbstractView$OnTouchListenerC26632e.m1543b(((float) (j - j2)) / this.f74550a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f74559j;
            return (AbstractView$OnTouchListenerC26632e.m1543b(((float) (j - j3)) / this.f74560k, 0.0f, 1.0f) * f) + (1.0f - f);
        }
    }

    /* renamed from: n3.k.j.e$b */
    /* loaded from: classes-dex2jar.jar:n3/k/j/e$b.class */
    public class RunnableC26634b implements Runnable {
        public RunnableC26634b() {
            AbstractView$OnTouchListenerC26632e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC26632e abstractView$OnTouchListenerC26632e = AbstractView$OnTouchListenerC26632e.this;
            if (!abstractView$OnTouchListenerC26632e.f74548o) {
                return;
            }
            if (abstractView$OnTouchListenerC26632e.f74546m) {
                abstractView$OnTouchListenerC26632e.f74546m = false;
                C26633a c26633a = abstractView$OnTouchListenerC26632e.f74534a;
                Objects.requireNonNull(c26633a);
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                c26633a.f74554e = currentAnimationTimeMillis;
                c26633a.f74558i = -1L;
                c26633a.f74555f = currentAnimationTimeMillis;
                c26633a.f74559j = 0.5f;
                c26633a.f74556g = 0;
                c26633a.f74557h = 0;
            }
            C26633a c26633a2 = AbstractView$OnTouchListenerC26632e.this.f74534a;
            if ((c26633a2.f74558i > 0 && AnimationUtils.currentAnimationTimeMillis() > c26633a2.f74558i + ((long) c26633a2.f74560k)) || !AbstractView$OnTouchListenerC26632e.this.m1540e()) {
                AbstractView$OnTouchListenerC26632e.this.f74548o = false;
                return;
            }
            AbstractView$OnTouchListenerC26632e abstractView$OnTouchListenerC26632e2 = AbstractView$OnTouchListenerC26632e.this;
            if (abstractView$OnTouchListenerC26632e2.f74547n) {
                abstractView$OnTouchListenerC26632e2.f74547n = false;
                Objects.requireNonNull(abstractView$OnTouchListenerC26632e2);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                abstractView$OnTouchListenerC26632e2.f74536c.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (c26633a2.f74555f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
            float m1539a = c26633a2.m1539a(currentAnimationTimeMillis2);
            long j = c26633a2.f74555f;
            c26633a2.f74555f = currentAnimationTimeMillis2;
            float f = ((float) (currentAnimationTimeMillis2 - j)) * ((m1539a * 4.0f) + ((-4.0f) * m1539a * m1539a));
            c26633a2.f74556g = (int) (c26633a2.f74552c * f);
            int i = (int) (f * c26633a2.f74553d);
            c26633a2.f74557h = i;
            ((C26636g) AbstractView$OnTouchListenerC26632e.this).f74563r.scrollListBy(i);
            View view = AbstractView$OnTouchListenerC26632e.this.f74536c;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.postOnAnimation(this);
        }
    }

    public AbstractView$OnTouchListenerC26632e(View view) {
        C26633a c26633a = new C26633a();
        this.f74534a = c26633a;
        this.f74536c = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        float[] fArr = this.f74544k;
        float f3 = f2 / 1000.0f;
        fArr[0] = f3;
        fArr[1] = f3;
        float f4 = i2;
        float[] fArr2 = this.f74543j;
        float f5 = f4 / 1000.0f;
        fArr2[0] = f5;
        fArr2[1] = f5;
        float[] fArr3 = this.f74539f;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f74538e;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.f74542i;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        c26633a.f74550a = 500;
        c26633a.f74551b = 500;
    }

    /* renamed from: b */
    public static float m1543b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m1544a(int r6, float r7, float r8, float r9) {
        /*
            Method dump skipped, instructions count: 165
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1824j.AbstractView$OnTouchListenerC26632e.m1544a(int, float, float, float):float");
    }

    /* renamed from: c */
    public final float m1542c(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f74540g;
        if (i == 0 || i == 1) {
            if (f >= f2) {
                return 0.0f;
            }
            return f >= 0.0f ? 1.0f - (f / f2) : (!this.f74548o || i != 1) ? 0.0f : 1.0f;
        } else if (i != 2 || f >= 0.0f) {
            return 0.0f;
        } else {
            return f / (-f2);
        }
    }

    /* renamed from: d */
    public final void m1541d() {
        if (this.f74546m) {
            this.f74548o = false;
            return;
        }
        C26633a c26633a = this.f74534a;
        Objects.requireNonNull(c26633a);
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i = (int) (currentAnimationTimeMillis - c26633a.f74554e);
        int i2 = c26633a.f74551b;
        if (i > i2) {
            i = i2;
        } else if (i < 0) {
            i = 0;
        }
        c26633a.f74560k = i;
        c26633a.f74559j = c26633a.m1539a(currentAnimationTimeMillis);
        c26633a.f74558i = currentAnimationTimeMillis;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0088, code lost:
        if (r7 != false) goto L23;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1540e() {
        /*
            r4 = this;
            r0 = r4
            n3.k.j.e$a r0 = r0.f74534a
            r5 = r0
            r0 = r5
            float r0 = r0.f74553d
            r6 = r0
            r0 = r6
            r1 = r6
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 / r1
            int r0 = (int) r0
            r7 = r0
            r0 = r5
            float r0 = r0.f74552c
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
            n3.k.j.g r0 = (p1727n3.p1807k.p1824j.C26636g) r0
            android.widget.ListView r0 = r0.f74563r
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1824j.AbstractView$OnTouchListenerC26632e.m1540e():boolean");
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        if (!this.f74549p) {
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
            m1541d();
            return false;
        }
        this.f74547n = true;
        this.f74545l = false;
        float m1544a = m1544a(0, motionEvent.getX(), view.getWidth(), this.f74536c.getWidth());
        float m1544a2 = m1544a(1, motionEvent.getY(), view.getHeight(), this.f74536c.getHeight());
        C26633a c26633a = this.f74534a;
        c26633a.f74552c = m1544a;
        c26633a.f74553d = m1544a2;
        if (this.f74548o || !m1540e()) {
            return false;
        }
        if (this.f74537d == null) {
            this.f74537d = new RunnableC26634b();
        }
        this.f74548o = true;
        this.f74546m = true;
        if (this.f74545l || (i = this.f74541h) <= 0) {
            this.f74537d.run();
        } else {
            View view2 = this.f74536c;
            Runnable runnable = this.f74537d;
            long j = i;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view2.postOnAnimationDelayed(runnable, j);
        }
        this.f74545l = true;
        return false;
    }
}
