package androidx.p029d.p031b;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.p026h.C0595u;
import java.util.Arrays;
/* renamed from: androidx.d.b.c */
/* loaded from: classes-dex2jar.jar:androidx/d/b/c.class */
public class C0644c {

    /* renamed from: v */
    private static final Interpolator f2222v = new Interpolator() { // from class: androidx.d.b.c.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a */
    private int f2223a;

    /* renamed from: b */
    private int f2224b;

    /* renamed from: d */
    private float[] f2226d;

    /* renamed from: e */
    private float[] f2227e;

    /* renamed from: f */
    private float[] f2228f;

    /* renamed from: g */
    private float[] f2229g;

    /* renamed from: h */
    private int[] f2230h;

    /* renamed from: i */
    private int[] f2231i;

    /* renamed from: j */
    private int[] f2232j;

    /* renamed from: k */
    private int f2233k;

    /* renamed from: l */
    private VelocityTracker f2234l;

    /* renamed from: m */
    private float f2235m;

    /* renamed from: n */
    private float f2236n;

    /* renamed from: o */
    private int f2237o;

    /* renamed from: p */
    private int f2238p;

    /* renamed from: q */
    private OverScroller f2239q;

    /* renamed from: r */
    private final AbstractC0647a f2240r;

    /* renamed from: s */
    private View f2241s;

    /* renamed from: t */
    private boolean f2242t;

    /* renamed from: u */
    private final ViewGroup f2243u;

    /* renamed from: c */
    private int f2225c = -1;

    /* renamed from: w */
    private final Runnable f2244w = new Runnable() { // from class: androidx.d.b.c.2
        @Override // java.lang.Runnable
        public void run() {
            C0644c.this.m20044b(0);
        }
    };

    /* renamed from: androidx.d.b.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/b/c$a.class */
    public static abstract class AbstractC0647a {
        /* renamed from: a */
        public int mo3676a(View view) {
            return 0;
        }

        /* renamed from: a */
        public int mo3527a(View view, int i, int i2) {
            return 0;
        }

        /* renamed from: a */
        public void mo3529a(int i) {
        }

        /* renamed from: a */
        public void m20028a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo3528a(View view, float f, float f2) {
        }

        /* renamed from: a */
        public void mo3674a(View view, int i) {
        }

        /* renamed from: a */
        public void mo3526a(View view, int i, int i2, int i3, int i4) {
        }

        /* renamed from: b */
        public int mo3525b(View view) {
            return 0;
        }

        /* renamed from: b */
        public int mo3523b(View view, int i, int i2) {
            return 0;
        }

        /* renamed from: b */
        public void m20026b(int i, int i2) {
        }

        /* renamed from: b */
        public boolean m20027b(int i) {
            return false;
        }

        /* renamed from: b */
        public abstract boolean mo3524b(View view, int i);

        /* renamed from: c */
        public int m20025c(int i) {
            return i;
        }
    }

    private C0644c(Context context, ViewGroup viewGroup, AbstractC0647a abstractC0647a) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0647a == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f2243u = viewGroup;
        this.f2240r = abstractC0647a;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2237o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f2224b = viewConfiguration.getScaledTouchSlop();
        this.f2235m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f2236n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2239q = new OverScroller(context, f2222v);
    }

    /* renamed from: a */
    private float m20063a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    private float m20061a(float f, float f2, float f3) {
        float f4;
        float abs = Math.abs(f);
        if (abs < f2) {
            f4 = 0.0f;
        } else if (abs > f3) {
            f4 = f3;
            if (f <= 0.0f) {
                f4 = -f3;
            }
        } else {
            f4 = f;
        }
        return f4;
    }

    /* renamed from: a */
    private int m20056a(int i, int i2, int i3) {
        int min;
        if (i == 0) {
            min = 0;
        } else {
            int width = this.f2243u.getWidth();
            int i4 = width / 2;
            float f = i4;
            float f2 = i4;
            float m20063a = m20063a(Math.min(1.0f, Math.abs(i) / width));
            int abs = Math.abs(i2);
            min = Math.min(abs > 0 ? Math.round(Math.abs(((m20063a * f2) + f) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
        }
        return min;
    }

    /* renamed from: a */
    private int m20050a(View view, int i, int i2, int i3, int i4) {
        int m20042b = m20042b(i3, (int) this.f2236n, (int) this.f2235m);
        int m20042b2 = m20042b(i4, (int) this.f2236n, (int) this.f2235m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(m20042b);
        int abs4 = Math.abs(m20042b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        float f = m20042b != 0 ? abs3 / i5 : abs / i6;
        return (int) (((m20042b2 != 0 ? abs4 / i5 : abs2 / i6) * m20056a(i2, m20042b2, this.f2240r.mo3525b(view))) + (f * m20056a(i, m20042b, this.f2240r.mo3676a(view))));
    }

    /* renamed from: a */
    public static C0644c m20049a(ViewGroup viewGroup, float f, AbstractC0647a abstractC0647a) {
        C0644c m20048a = m20048a(viewGroup, abstractC0647a);
        m20048a.f2224b = (int) (m20048a.f2224b * (1.0f / f));
        return m20048a;
    }

    /* renamed from: a */
    public static C0644c m20048a(ViewGroup viewGroup, AbstractC0647a abstractC0647a) {
        return new C0644c(viewGroup.getContext(), viewGroup, abstractC0647a);
    }

    /* renamed from: a */
    private void m20062a(float f, float f2) {
        this.f2242t = true;
        this.f2240r.mo3528a(this.f2241s, f, f2);
        this.f2242t = false;
        if (this.f2223a == 1) {
            m20044b(0);
        }
    }

    /* renamed from: a */
    private void m20060a(float f, float f2, int i) {
        m20032d(i);
        float[] fArr = this.f2226d;
        this.f2228f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f2227e;
        this.f2229g[i] = f2;
        fArr2[i] = f2;
        this.f2230h[i] = m20031d((int) f, (int) f2);
        this.f2233k |= 1 << i;
    }

    /* renamed from: a */
    private boolean m20059a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f2230h[i] & i2) == i2) {
            z = false;
            if ((this.f2238p & i2) != 0) {
                z = false;
                if ((this.f2232j[i] & i2) != i2) {
                    z = false;
                    if ((this.f2231i[i] & i2) != i2) {
                        if (abs <= this.f2224b && abs2 <= this.f2224b) {
                            z = false;
                        } else if (abs >= abs2 * 0.5f || !this.f2240r.m20027b(i2)) {
                            z = false;
                            if ((this.f2231i[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f2224b) {
                                    z = true;
                                }
                            }
                        } else {
                            int[] iArr = this.f2232j;
                            iArr[i] = iArr[i] | i2;
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private boolean m20055a(int i, int i2, int i3, int i4) {
        boolean z = false;
        int left = this.f2241s.getLeft();
        int top = this.f2241s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f2239q.abortAnimation();
            m20044b(0);
        } else {
            this.f2239q.startScroll(left, top, i5, i6, m20050a(this.f2241s, i5, i6, i3, i4));
            m20044b(2);
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private boolean m20053a(View view, float f, float f2) {
        boolean z = true;
        if (view == null) {
            z = false;
        } else {
            boolean z2 = this.f2240r.mo3676a(view) > 0;
            boolean z3 = this.f2240r.mo3525b(view) > 0;
            if (!z2 || !z3) {
                if (z2) {
                    if (Math.abs(f) <= this.f2224b) {
                        z = false;
                    }
                } else if (!z3) {
                    z = false;
                } else if (Math.abs(f2) <= this.f2224b) {
                    z = false;
                }
            } else if ((f * f) + (f2 * f2) <= this.f2224b * this.f2224b) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private int m20042b(int i, int i2, int i3) {
        int i4;
        int abs = Math.abs(i);
        if (abs < i2) {
            i4 = 0;
        } else if (abs > i3) {
            i4 = i3;
            if (i <= 0) {
                i4 = -i3;
            }
        } else {
            i4 = i;
        }
        return i4;
    }

    /* renamed from: b */
    private void m20045b(float f, float f2, int i) {
        int i2 = 1;
        if (!m20059a(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (m20059a(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (m20059a(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (m20059a(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.f2231i;
            iArr[i] = iArr[i] | i5;
            this.f2240r.m20026b(i5, i);
        }
    }

    /* renamed from: b */
    private void m20041b(int i, int i2, int i3, int i4) {
        int left = this.f2241s.getLeft();
        int top = this.f2241s.getTop();
        if (i3 != 0) {
            i = this.f2240r.mo3527a(this.f2241s, i, i3);
            C0595u.m20321f(this.f2241s, i - left);
        }
        if (i4 != 0) {
            i2 = this.f2240r.mo3523b(this.f2241s, i2, i4);
            C0595u.m20323e(this.f2241s, i2 - top);
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f2240r.mo3526a(this.f2241s, i, i2, i - left, i2 - top);
    }

    /* renamed from: c */
    private void m20036c(int i) {
        if (this.f2226d == null || !m20058a(i)) {
            return;
        }
        this.f2226d[i] = 0.0f;
        this.f2227e[i] = 0.0f;
        this.f2228f[i] = 0.0f;
        this.f2229g[i] = 0.0f;
        this.f2230h[i] = 0;
        this.f2231i[i] = 0;
        this.f2232j[i] = 0;
        this.f2233k &= (1 << i) ^ (-1);
    }

    /* renamed from: c */
    private void m20034c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m20029e(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f2228f[pointerId] = x;
                this.f2229g[pointerId] = y;
            }
        }
    }

    /* renamed from: d */
    private int m20031d(int i, int i2) {
        int i3 = 0;
        if (i < this.f2243u.getLeft() + this.f2237o) {
            i3 = 1;
        }
        int i4 = i3;
        if (i2 < this.f2243u.getTop() + this.f2237o) {
            i4 = i3 | 4;
        }
        int i5 = i4;
        if (i > this.f2243u.getRight() - this.f2237o) {
            i5 = i4 | 2;
        }
        int i6 = i5;
        if (i2 > this.f2243u.getBottom() - this.f2237o) {
            i6 = i5 | 8;
        }
        return i6;
    }

    /* renamed from: d */
    private void m20033d() {
        if (this.f2226d == null) {
            return;
        }
        Arrays.fill(this.f2226d, 0.0f);
        Arrays.fill(this.f2227e, 0.0f);
        Arrays.fill(this.f2228f, 0.0f);
        Arrays.fill(this.f2229g, 0.0f);
        Arrays.fill(this.f2230h, 0);
        Arrays.fill(this.f2231i, 0);
        Arrays.fill(this.f2232j, 0);
        this.f2233k = 0;
    }

    /* renamed from: d */
    private void m20032d(int i) {
        if (this.f2226d == null || this.f2226d.length <= i) {
            float[] fArr = new float[i + 1];
            float[] fArr2 = new float[i + 1];
            float[] fArr3 = new float[i + 1];
            float[] fArr4 = new float[i + 1];
            int[] iArr = new int[i + 1];
            int[] iArr2 = new int[i + 1];
            int[] iArr3 = new int[i + 1];
            if (this.f2226d != null) {
                System.arraycopy(this.f2226d, 0, fArr, 0, this.f2226d.length);
                System.arraycopy(this.f2227e, 0, fArr2, 0, this.f2227e.length);
                System.arraycopy(this.f2228f, 0, fArr3, 0, this.f2228f.length);
                System.arraycopy(this.f2229g, 0, fArr4, 0, this.f2229g.length);
                System.arraycopy(this.f2230h, 0, iArr, 0, this.f2230h.length);
                System.arraycopy(this.f2231i, 0, iArr2, 0, this.f2231i.length);
                System.arraycopy(this.f2232j, 0, iArr3, 0, this.f2232j.length);
            }
            this.f2226d = fArr;
            this.f2227e = fArr2;
            this.f2228f = fArr3;
            this.f2229g = fArr4;
            this.f2230h = iArr;
            this.f2231i = iArr2;
            this.f2232j = iArr3;
        }
    }

    /* renamed from: e */
    private void m20030e() {
        this.f2234l.computeCurrentVelocity(1000, this.f2235m);
        m20062a(m20061a(this.f2234l.getXVelocity(this.f2225c), this.f2236n, this.f2235m), m20061a(this.f2234l.getYVelocity(this.f2225c), this.f2236n, this.f2235m));
    }

    /* renamed from: e */
    private boolean m20029e(int i) {
        boolean z;
        if (!m20058a(i)) {
            Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public float m20064a() {
        return this.f2236n;
    }

    /* renamed from: a */
    public void m20052a(View view, int i) {
        if (view.getParent() != this.f2243u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f2243u + ")");
        }
        this.f2241s = view;
        this.f2225c = i;
        this.f2240r.mo3674a(view, i);
        m20044b(1);
    }

    /* renamed from: a */
    public boolean m20058a(int i) {
        boolean z = true;
        if ((this.f2233k & (1 << i)) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m20057a(int i, int i2) {
        if (!this.f2242t) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return m20055a(i, i2, (int) this.f2234l.getXVelocity(this.f2225c), (int) this.f2234l.getYVelocity(this.f2225c));
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0208, code lost:
        if (r0 != r0) goto L64;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20054a(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p029d.p031b.C0644c.m20054a(android.view.MotionEvent):boolean");
    }

    /* renamed from: a */
    public boolean m20051a(View view, int i, int i2) {
        this.f2241s = view;
        this.f2225c = -1;
        boolean m20055a = m20055a(i, i2, 0, 0);
        if (!m20055a && this.f2223a == 0 && this.f2241s != null) {
            this.f2241s = null;
        }
        return m20055a;
    }

    /* renamed from: a */
    public boolean m20047a(boolean z) {
        if (this.f2223a == 2) {
            boolean computeScrollOffset = this.f2239q.computeScrollOffset();
            int currX = this.f2239q.getCurrX();
            int currY = this.f2239q.getCurrY();
            int left = currX - this.f2241s.getLeft();
            int top = currY - this.f2241s.getTop();
            if (left != 0) {
                C0595u.m20321f(this.f2241s, left);
            }
            if (top != 0) {
                C0595u.m20323e(this.f2241s, top);
            }
            if (left != 0 || top != 0) {
                this.f2240r.mo3526a(this.f2241s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.f2239q.getFinalX() && currY == this.f2239q.getFinalY()) {
                this.f2239q.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.f2243u.post(this.f2244w);
                } else {
                    m20044b(0);
                }
            }
        }
        return this.f2223a == 2;
    }

    /* renamed from: b */
    public int m20046b() {
        return this.f2224b;
    }

    /* renamed from: b */
    void m20044b(int i) {
        this.f2243u.removeCallbacks(this.f2244w);
        if (this.f2223a != i) {
            this.f2223a = i;
            this.f2240r.mo3529a(i);
            if (this.f2223a != 0) {
                return;
            }
            this.f2241s = null;
        }
    }

    /* renamed from: b */
    public void m20040b(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m20037c();
        }
        if (this.f2234l == null) {
            this.f2234l = VelocityTracker.obtain();
        }
        this.f2234l.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int pointerId = motionEvent.getPointerId(0);
                View m20035c = m20035c((int) x, (int) y);
                m20060a(x, y, pointerId);
                m20039b(m20035c, pointerId);
                int i3 = this.f2230h[pointerId];
                if ((this.f2238p & i3) == 0) {
                    return;
                }
                this.f2240r.m20028a(i3 & this.f2238p, pointerId);
                return;
            case 1:
                if (this.f2223a == 1) {
                    m20030e();
                }
                m20037c();
                return;
            case 2:
                if (this.f2223a == 1) {
                    if (!m20029e(this.f2225c)) {
                        return;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(this.f2225c);
                    float x2 = motionEvent.getX(findPointerIndex);
                    float y2 = motionEvent.getY(findPointerIndex);
                    int i4 = (int) (x2 - this.f2228f[this.f2225c]);
                    int i5 = (int) (y2 - this.f2229g[this.f2225c]);
                    m20041b(this.f2241s.getLeft() + i4, this.f2241s.getTop() + i5, i4, i5);
                    m20034c(motionEvent);
                    return;
                }
                int pointerCount = motionEvent.getPointerCount();
                for (int i6 = 0; i6 < pointerCount; i6++) {
                    int pointerId2 = motionEvent.getPointerId(i6);
                    if (m20029e(pointerId2)) {
                        float x3 = motionEvent.getX(i6);
                        float y3 = motionEvent.getY(i6);
                        float f = x3 - this.f2226d[pointerId2];
                        float f2 = y3 - this.f2227e[pointerId2];
                        m20045b(f, f2, pointerId2);
                        if (this.f2223a != 1) {
                            View m20035c2 = m20035c((int) x3, (int) y3);
                            if (m20053a(m20035c2, f, f2) && m20039b(m20035c2, pointerId2)) {
                            }
                        }
                        m20034c(motionEvent);
                        return;
                    }
                }
                m20034c(motionEvent);
                return;
            case 3:
                if (this.f2223a == 1) {
                    m20062a(0.0f, 0.0f);
                }
                m20037c();
                return;
            case 4:
            default:
                return;
            case 5:
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                float x4 = motionEvent.getX(actionIndex);
                float y4 = motionEvent.getY(actionIndex);
                m20060a(x4, y4, pointerId3);
                if (this.f2223a != 0) {
                    if (!m20043b((int) x4, (int) y4)) {
                        return;
                    }
                    m20039b(this.f2241s, pointerId3);
                    return;
                }
                m20039b(m20035c((int) x4, (int) y4), pointerId3);
                int i7 = this.f2230h[pointerId3];
                if ((this.f2238p & i7) == 0) {
                    return;
                }
                this.f2240r.m20028a(i7 & this.f2238p, pointerId3);
                return;
            case 6:
                int pointerId4 = motionEvent.getPointerId(actionIndex);
                if (this.f2223a == 1 && pointerId4 == this.f2225c) {
                    int pointerCount2 = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 < pointerCount2) {
                            int pointerId5 = motionEvent.getPointerId(i2);
                            if (pointerId5 != this.f2225c) {
                                if (m20035c((int) motionEvent.getX(i2), (int) motionEvent.getY(i2)) == this.f2241s && m20039b(this.f2241s, pointerId5)) {
                                    i = this.f2225c;
                                }
                            }
                            i2++;
                        } else {
                            i = -1;
                        }
                    }
                    if (i == -1) {
                        m20030e();
                    }
                }
                m20036c(pointerId4);
                return;
        }
    }

    /* renamed from: b */
    public boolean m20043b(int i, int i2) {
        return m20038b(this.f2241s, i, i2);
    }

    /* renamed from: b */
    boolean m20039b(View view, int i) {
        boolean z = true;
        if (view != this.f2241s || this.f2225c != i) {
            if (view == null || !this.f2240r.mo3524b(view, i)) {
                z = false;
            } else {
                this.f2225c = i;
                m20052a(view, i);
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m20038b(View view, int i, int i2) {
        boolean z;
        if (view == null) {
            z = false;
        } else {
            z = false;
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
        }
        return z;
    }

    /* renamed from: c */
    public View m20035c(int i, int i2) {
        View view;
        int childCount = this.f2243u.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                view = null;
                break;
            }
            view = this.f2243u.getChildAt(this.f2240r.m20025c(childCount));
            if (i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom()) {
                break;
            }
            childCount--;
        }
        return view;
    }

    /* renamed from: c */
    public void m20037c() {
        this.f2225c = -1;
        m20033d();
        if (this.f2234l != null) {
            this.f2234l.recycle();
            this.f2234l = null;
        }
    }
}
