package p020b.p055j.p056a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;
import p020b.p041h.p050l.C1679w;
/* renamed from: b.j.a.c */
/* loaded from: classes-dex2jar.jar:b/j/a/c.class */
public class C1710c {

    /* renamed from: a */
    private static final Interpolator f6397a = new animationInterpolatorC1711a();

    /* renamed from: b */
    private int f6398b;

    /* renamed from: c */
    private int f6399c;

    /* renamed from: e */
    private float[] f6401e;

    /* renamed from: f */
    private float[] f6402f;

    /* renamed from: g */
    private float[] f6403g;

    /* renamed from: h */
    private float[] f6404h;

    /* renamed from: i */
    private int[] f6405i;

    /* renamed from: j */
    private int[] f6406j;

    /* renamed from: k */
    private int[] f6407k;

    /* renamed from: l */
    private int f6408l;

    /* renamed from: m */
    private VelocityTracker f6409m;

    /* renamed from: n */
    private float f6410n;

    /* renamed from: o */
    private float f6411o;

    /* renamed from: p */
    private int f6412p;

    /* renamed from: q */
    private int f6413q;

    /* renamed from: r */
    private OverScroller f6414r;

    /* renamed from: s */
    private final AbstractC1713c f6415s;

    /* renamed from: t */
    private View f6416t;

    /* renamed from: u */
    private boolean f6417u;

    /* renamed from: v */
    private final ViewGroup f6418v;

    /* renamed from: d */
    private int f6400d = -1;

    /* renamed from: w */
    private final Runnable f6419w = new RunnableC1712b();

    /* renamed from: b.j.a.c$a */
    /* loaded from: classes-dex2jar.jar:b/j/a/c$a.class */
    static final class animationInterpolatorC1711a implements Interpolator {
        animationInterpolatorC1711a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.j.a.c$b */
    /* loaded from: classes-dex2jar.jar:b/j/a/c$b.class */
    public class RunnableC1712b implements Runnable {
        RunnableC1712b() {
            C1710c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1710c.this.m29128K(0);
        }
    }

    /* renamed from: b.j.a.c$c */
    /* loaded from: classes-dex2jar.jar:b/j/a/c$c.class */
    public static abstract class AbstractC1713c {
        /* renamed from: a */
        public abstract int mo5407a(View view, int i, int i2);

        /* renamed from: b */
        public abstract int mo5406b(View view, int i, int i2);

        /* renamed from: c */
        public int m29095c(int i) {
            return i;
        }

        /* renamed from: d */
        public int mo5586d(View view) {
            return 0;
        }

        /* renamed from: e */
        public int mo5405e(View view) {
            return 0;
        }

        /* renamed from: f */
        public void mo29094f(int i, int i2) {
        }

        /* renamed from: g */
        public boolean mo29093g(int i) {
            return false;
        }

        /* renamed from: h */
        public void mo29092h(int i, int i2) {
        }

        /* renamed from: i */
        public void mo5585i(View view, int i) {
        }

        /* renamed from: j */
        public abstract void mo5404j(int i);

        /* renamed from: k */
        public abstract void mo5403k(View view, int i, int i2, int i3, int i4);

        /* renamed from: l */
        public abstract void mo5402l(View view, float f, float f2);

        /* renamed from: m */
        public abstract boolean mo5401m(View view, int i);
    }

    private C1710c(Context context, ViewGroup viewGroup, AbstractC1713c abstractC1713c) {
        if (viewGroup != null) {
            if (abstractC1713c == null) {
                throw new IllegalArgumentException("Callback may not be null");
            }
            this.f6418v = viewGroup;
            this.f6415s = abstractC1713c;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f6412p = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f6399c = viewConfiguration.getScaledTouchSlop();
            this.f6410n = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f6411o = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f6414r = new OverScroller(context, f6397a);
            return;
        }
        throw new IllegalArgumentException("Parent view may not be null");
    }

    /* renamed from: D */
    private boolean m29135D(int i) {
        if (!m29136C(i)) {
            Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            return false;
        }
        return true;
    }

    /* renamed from: G */
    private void m29132G() {
        this.f6409m.computeCurrentVelocity(1000, this.f6410n);
        m29105q(m29114h(this.f6409m.getXVelocity(this.f6400d), this.f6411o, this.f6410n), m29114h(this.f6409m.getYVelocity(this.f6400d), this.f6411o, this.f6410n));
    }

    /* renamed from: H */
    private void m29131H(float f, float f2, int i) {
        int i2 = 1;
        if (!m29118d(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (m29118d(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (m29118d(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (m29118d(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.f6406j;
            iArr[i] = iArr[i] | i5;
            this.f6415s.mo29094f(i5, i);
        }
    }

    /* renamed from: I */
    private void m29130I(float f, float f2, int i) {
        m29102t(i);
        float[] fArr = this.f6401e;
        this.f6403g[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f6402f;
        this.f6404h[i] = f2;
        fArr2[i] = f2;
        this.f6405i[i] = m29097y((int) f, (int) f2);
        this.f6408l |= 1 << i;
    }

    /* renamed from: J */
    private void m29129J(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m29135D(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f6403g[pointerId] = x;
                this.f6404h[pointerId] = y;
            }
        }
    }

    /* renamed from: d */
    private boolean m29118d(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f6405i[i] & i2) == i2) {
            z = false;
            if ((this.f6413q & i2) != 0) {
                z = false;
                if ((this.f6407k[i] & i2) != i2) {
                    z = false;
                    if ((this.f6406j[i] & i2) != i2) {
                        int i3 = this.f6399c;
                        if (abs <= i3 && abs2 <= i3) {
                            z = false;
                        } else if (abs < abs2 * 0.5f && this.f6415s.mo29093g(i2)) {
                            int[] iArr = this.f6407k;
                            iArr[i] = iArr[i] | i2;
                            return false;
                        } else {
                            z = false;
                            if ((this.f6406j[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f6399c) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private boolean m29115g(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.f6415s.mo5586d(view) > 0;
        boolean z3 = this.f6415s.mo5405e(view) > 0;
        if (z2 && z3) {
            int i = this.f6399c;
            if ((f * f) + (f2 * f2) > i * i) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.f6399c) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.f6399c) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: h */
    private float m29114h(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= 0.0f) {
            f3 = -f3;
        }
        return f3;
    }

    /* renamed from: i */
    private int m29113i(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        if (abs <= i3) {
            return i;
        }
        if (i <= 0) {
            i3 = -i3;
        }
        return i3;
    }

    /* renamed from: j */
    private void m29112j() {
        float[] fArr = this.f6401e;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f6402f, 0.0f);
        Arrays.fill(this.f6403g, 0.0f);
        Arrays.fill(this.f6404h, 0.0f);
        Arrays.fill(this.f6405i, 0);
        Arrays.fill(this.f6406j, 0);
        Arrays.fill(this.f6407k, 0);
        this.f6408l = 0;
    }

    /* renamed from: k */
    private void m29111k(int i) {
        if (this.f6401e == null || !m29136C(i)) {
            return;
        }
        this.f6401e[i] = 0.0f;
        this.f6402f[i] = 0.0f;
        this.f6403g[i] = 0.0f;
        this.f6404h[i] = 0.0f;
        this.f6405i[i] = 0;
        this.f6406j[i] = 0;
        this.f6407k[i] = 0;
        this.f6408l = ((1 << i) ^ (-1)) & this.f6408l;
    }

    /* renamed from: l */
    private int m29110l(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f6418v.getWidth();
        float f = width / 2;
        float m29104r = m29104r(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (m29104r * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: m */
    private int m29109m(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int m29113i = m29113i(i3, (int) this.f6411o, (int) this.f6410n);
        int m29113i2 = m29113i(i4, (int) this.f6411o, (int) this.f6410n);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(m29113i);
        int abs4 = Math.abs(m29113i2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (m29113i != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (m29113i2 != 0) {
            f3 = abs4;
            f4 = i5;
        } else {
            f3 = abs2;
            f4 = i6;
        }
        return (int) ((m29110l(i, m29113i, this.f6415s.mo5586d(view)) * f5) + (m29110l(i2, m29113i2, this.f6415s.mo5405e(view)) * (f3 / f4)));
    }

    /* renamed from: o */
    public static C1710c m29107o(ViewGroup viewGroup, float f, AbstractC1713c abstractC1713c) {
        C1710c m29106p = m29106p(viewGroup, abstractC1713c);
        m29106p.f6399c = (int) (m29106p.f6399c * (1.0f / f));
        return m29106p;
    }

    /* renamed from: p */
    public static C1710c m29106p(ViewGroup viewGroup, AbstractC1713c abstractC1713c) {
        return new C1710c(viewGroup.getContext(), viewGroup, abstractC1713c);
    }

    /* renamed from: q */
    private void m29105q(float f, float f2) {
        this.f6417u = true;
        this.f6415s.mo5402l(this.f6416t, f, f2);
        this.f6417u = false;
        if (this.f6398b == 1) {
            m29128K(0);
        }
    }

    /* renamed from: r */
    private float m29104r(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: s */
    private void m29103s(int i, int i2, int i3, int i4) {
        int left = this.f6416t.getLeft();
        int top = this.f6416t.getTop();
        int i5 = i;
        if (i3 != 0) {
            i5 = this.f6415s.mo5407a(this.f6416t, i, i3);
            C1679w.m29307a0(this.f6416t, i5 - left);
        }
        int i6 = i2;
        if (i4 != 0) {
            i6 = this.f6415s.mo5406b(this.f6416t, i2, i4);
            C1679w.m29305b0(this.f6416t, i6 - top);
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f6415s.mo5403k(this.f6416t, i5, i6, i5 - left, i6 - top);
    }

    /* renamed from: t */
    private void m29102t(int i) {
        float[] fArr = this.f6401e;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f6402f;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f6403g;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f6404h;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f6405i;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f6406j;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f6407k;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f6401e = fArr2;
            this.f6402f = fArr3;
            this.f6403g = fArr4;
            this.f6404h = fArr5;
            this.f6405i = iArr;
            this.f6406j = iArr2;
            this.f6407k = iArr3;
        }
    }

    /* renamed from: v */
    private boolean m29100v(int i, int i2, int i3, int i4) {
        int left = this.f6416t.getLeft();
        int top = this.f6416t.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f6414r.abortAnimation();
            m29128K(0);
            return false;
        }
        this.f6414r.startScroll(left, top, i5, i6, m29109m(this.f6416t, i5, i6, i3, i4));
        m29128K(2);
        return true;
    }

    /* renamed from: y */
    private int m29097y(int i, int i2) {
        int i3 = i < this.f6418v.getLeft() + this.f6412p ? 1 : 0;
        int i4 = i3;
        if (i2 < this.f6418v.getTop() + this.f6412p) {
            i4 = i3 | 4;
        }
        int i5 = i4;
        if (i > this.f6418v.getRight() - this.f6412p) {
            i5 = i4 | 2;
        }
        int i6 = i5;
        if (i2 > this.f6418v.getBottom() - this.f6412p) {
            i6 = i5 | 8;
        }
        return i6;
    }

    /* renamed from: A */
    public int m29138A() {
        return this.f6398b;
    }

    /* renamed from: B */
    public boolean m29137B(int i, int i2) {
        return m29134E(this.f6416t, i, i2);
    }

    /* renamed from: C */
    public boolean m29136C(int i) {
        boolean z = true;
        if (((1 << i) & this.f6408l) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: E */
    public boolean m29134E(View view, int i, int i2) {
        if (view == null) {
            return false;
        }
        boolean z = false;
        if (i >= view.getLeft()) {
            z = false;
            if (i < view.getRight()) {
                z = false;
                if (i2 >= view.getTop()) {
                    z = false;
                    if (i2 < view.getBottom()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: F */
    public void m29133F(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m29120b();
        }
        if (this.f6409m == null) {
            this.f6409m = VelocityTracker.obtain();
        }
        this.f6409m.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m29101u = m29101u((int) x, (int) y);
            m29130I(x, y, pointerId);
            m29122Q(m29101u, pointerId);
            int i3 = this.f6405i[pointerId];
            int i4 = this.f6413q;
            if ((i3 & i4) == 0) {
                return;
            }
            this.f6415s.mo29092h(i3 & i4, pointerId);
        } else if (actionMasked == 1) {
            if (this.f6398b == 1) {
                m29132G();
            }
            m29120b();
        } else if (actionMasked == 2) {
            if (this.f6398b == 1) {
                if (!m29135D(this.f6400d)) {
                    return;
                }
                int findPointerIndex = motionEvent.findPointerIndex(this.f6400d);
                float x2 = motionEvent.getX(findPointerIndex);
                float y2 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f6403g;
                int i5 = this.f6400d;
                int i6 = (int) (x2 - fArr[i5]);
                int i7 = (int) (y2 - this.f6404h[i5]);
                m29103s(this.f6416t.getLeft() + i6, this.f6416t.getTop() + i7, i6, i7);
                m29129J(motionEvent);
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            for (int i8 = 0; i8 < pointerCount; i8++) {
                int pointerId2 = motionEvent.getPointerId(i8);
                if (m29135D(pointerId2)) {
                    float x3 = motionEvent.getX(i8);
                    float y3 = motionEvent.getY(i8);
                    float f = x3 - this.f6401e[pointerId2];
                    float f2 = y3 - this.f6402f[pointerId2];
                    m29131H(f, f2, pointerId2);
                    if (this.f6398b == 1) {
                        break;
                    }
                    View m29101u2 = m29101u((int) x3, (int) y3);
                    if (m29115g(m29101u2, f, f2) && m29122Q(m29101u2, pointerId2)) {
                        break;
                    }
                }
            }
            m29129J(motionEvent);
        } else if (actionMasked == 3) {
            if (this.f6398b == 1) {
                m29105q(0.0f, 0.0f);
            }
            m29120b();
        } else if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m29130I(x4, y4, pointerId3);
            if (this.f6398b != 0) {
                if (!m29137B((int) x4, (int) y4)) {
                    return;
                }
                m29122Q(this.f6416t, pointerId3);
                return;
            }
            m29122Q(m29101u((int) x4, (int) y4), pointerId3);
            int i9 = this.f6405i[pointerId3];
            int i10 = this.f6413q;
            if ((i9 & i10) == 0) {
                return;
            }
            this.f6415s.mo29092h(i9 & i10, pointerId3);
        } else if (actionMasked == 6) {
            int pointerId4 = motionEvent.getPointerId(actionIndex);
            if (this.f6398b == 1 && pointerId4 == this.f6400d) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount2) {
                        i = -1;
                        break;
                    }
                    int pointerId5 = motionEvent.getPointerId(i2);
                    if (pointerId5 != this.f6400d) {
                        View m29101u3 = m29101u((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view = this.f6416t;
                        if (m29101u3 == view && m29122Q(view, pointerId5)) {
                            i = this.f6400d;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    m29132G();
                }
            }
            m29111k(pointerId4);
        }
    }

    /* renamed from: K */
    void m29128K(int i) {
        this.f6418v.removeCallbacks(this.f6419w);
        if (this.f6398b != i) {
            this.f6398b = i;
            this.f6415s.mo5404j(i);
            if (this.f6398b != 0) {
                return;
            }
            this.f6416t = null;
        }
    }

    /* renamed from: L */
    public void m29127L(int i) {
        this.f6413q = i;
    }

    /* renamed from: M */
    public void m29126M(float f) {
        this.f6411o = f;
    }

    /* renamed from: N */
    public boolean m29125N(int i, int i2) {
        if (this.f6417u) {
            return m29100v(i, i2, (int) this.f6409m.getXVelocity(this.f6400d), (int) this.f6409m.getYVelocity(this.f6400d));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
        if (r0 != r0) goto L60;
     */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m29124O(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p055j.p056a.C1710c.m29124O(android.view.MotionEvent):boolean");
    }

    /* renamed from: P */
    public boolean m29123P(View view, int i, int i2) {
        this.f6416t = view;
        this.f6400d = -1;
        boolean m29100v = m29100v(i, i2, 0, 0);
        if (!m29100v && this.f6398b == 0 && this.f6416t != null) {
            this.f6416t = null;
        }
        return m29100v;
    }

    /* renamed from: Q */
    boolean m29122Q(View view, int i) {
        if (view == this.f6416t && this.f6400d == i) {
            return true;
        }
        if (view == null || !this.f6415s.mo5401m(view, i)) {
            return false;
        }
        this.f6400d = i;
        m29119c(view, i);
        return true;
    }

    /* renamed from: a */
    public void m29121a() {
        m29120b();
        if (this.f6398b == 2) {
            int currX = this.f6414r.getCurrX();
            int currY = this.f6414r.getCurrY();
            this.f6414r.abortAnimation();
            int currX2 = this.f6414r.getCurrX();
            int currY2 = this.f6414r.getCurrY();
            this.f6415s.mo5403k(this.f6416t, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        m29128K(0);
    }

    /* renamed from: b */
    public void m29120b() {
        this.f6400d = -1;
        m29112j();
        VelocityTracker velocityTracker = this.f6409m;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f6409m = null;
        }
    }

    /* renamed from: c */
    public void m29119c(View view, int i) {
        if (view.getParent() == this.f6418v) {
            this.f6416t = view;
            this.f6400d = i;
            this.f6415s.mo5585i(view, i);
            m29128K(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f6418v + ")");
    }

    /* renamed from: e */
    public boolean m29117e(int i) {
        int length = this.f6401e.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (m29116f(i, i2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public boolean m29116f(int i, int i2) {
        boolean z = false;
        if (!m29136C(i2)) {
            return false;
        }
        boolean z2 = (i & 1) == 1;
        boolean z3 = (i & 2) == 2;
        float f = this.f6403g[i2] - this.f6401e[i2];
        float f2 = this.f6404h[i2] - this.f6402f[i2];
        if (z2 && z3) {
            int i3 = this.f6399c;
            if ((f * f) + (f2 * f2) > i3 * i3) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.f6399c) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.f6399c) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: n */
    public boolean m29108n(boolean z) {
        if (this.f6398b == 2) {
            boolean computeScrollOffset = this.f6414r.computeScrollOffset();
            int currX = this.f6414r.getCurrX();
            int currY = this.f6414r.getCurrY();
            int left = currX - this.f6416t.getLeft();
            int top = currY - this.f6416t.getTop();
            if (left != 0) {
                C1679w.m29307a0(this.f6416t, left);
            }
            if (top != 0) {
                C1679w.m29305b0(this.f6416t, top);
            }
            if (left != 0 || top != 0) {
                this.f6415s.mo5403k(this.f6416t, currX, currY, left, top);
            }
            boolean z2 = computeScrollOffset;
            if (computeScrollOffset) {
                z2 = computeScrollOffset;
                if (currX == this.f6414r.getFinalX()) {
                    z2 = computeScrollOffset;
                    if (currY == this.f6414r.getFinalY()) {
                        this.f6414r.abortAnimation();
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                if (z) {
                    this.f6418v.post(this.f6419w);
                } else {
                    m29128K(0);
                }
            }
        }
        boolean z3 = false;
        if (this.f6398b == 2) {
            z3 = true;
        }
        return z3;
    }

    /* renamed from: u */
    public View m29101u(int i, int i2) {
        for (int childCount = this.f6418v.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f6418v.getChildAt(this.f6415s.m29095c(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: w */
    public View m29099w() {
        return this.f6416t;
    }

    /* renamed from: x */
    public int m29098x() {
        return this.f6412p;
    }

    /* renamed from: z */
    public int m29096z() {
        return this.f6399c;
    }
}
