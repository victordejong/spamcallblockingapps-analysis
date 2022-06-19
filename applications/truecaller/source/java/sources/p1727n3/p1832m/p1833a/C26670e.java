package p1727n3.p1832m.p1833a;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m.a.e */
/* loaded from: classes-dex2jar.jar:n3/m/a/e.class */
public class C26670e {

    /* renamed from: w */
    public static final Interpolator f74636w = new animationInterpolatorC26671a();

    /* renamed from: a */
    public int f74637a;

    /* renamed from: b */
    public int f74638b;

    /* renamed from: d */
    public float[] f74640d;

    /* renamed from: e */
    public float[] f74641e;

    /* renamed from: f */
    public float[] f74642f;

    /* renamed from: g */
    public float[] f74643g;

    /* renamed from: h */
    public int[] f74644h;

    /* renamed from: i */
    public int[] f74645i;

    /* renamed from: j */
    public int[] f74646j;

    /* renamed from: k */
    public int f74647k;

    /* renamed from: l */
    public VelocityTracker f74648l;

    /* renamed from: m */
    public float f74649m;

    /* renamed from: n */
    public float f74650n;

    /* renamed from: o */
    public int f74651o;

    /* renamed from: p */
    public int f74652p;

    /* renamed from: q */
    public OverScroller f74653q;

    /* renamed from: r */
    public final AbstractC26673c f74654r;

    /* renamed from: s */
    public View f74655s;

    /* renamed from: t */
    public boolean f74656t;

    /* renamed from: u */
    public final ViewGroup f74657u;

    /* renamed from: c */
    public int f74639c = -1;

    /* renamed from: v */
    public final Runnable f74658v = new RunnableC26672b();

    /* renamed from: n3.m.a.e$a */
    /* loaded from: classes-dex2jar.jar:n3/m/a/e$a.class */
    public static final class animationInterpolatorC26671a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: n3.m.a.e$b */
    /* loaded from: classes-dex2jar.jar:n3/m/a/e$b.class */
    public class RunnableC26672b implements Runnable {
        public RunnableC26672b() {
            C26670e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C26670e.this.m1468u(0);
        }
    }

    /* renamed from: n3.m.a.e$c */
    /* loaded from: classes-dex2jar.jar:n3/m/a/e$c.class */
    public static abstract class AbstractC26673c {
        /* renamed from: a */
        public int mo1463a(View view, int i, int i2) {
            return 0;
        }

        /* renamed from: b */
        public abstract int mo1462b(View view, int i, int i2);

        /* renamed from: c */
        public int mo1461c(View view) {
            return 0;
        }

        /* renamed from: d */
        public int mo1460d(View view) {
            return 0;
        }

        /* renamed from: e */
        public void mo1459e(int i, int i2) {
        }

        /* renamed from: f */
        public boolean mo1458f(int i) {
            return false;
        }

        /* renamed from: g */
        public void mo1457g(int i, int i2) {
        }

        /* renamed from: h */
        public void mo1456h(View view, int i) {
        }

        /* renamed from: i */
        public abstract void mo1455i(int i);

        /* renamed from: j */
        public void mo1454j(View view, int i, int i2, int i3, int i4) {
        }

        /* renamed from: k */
        public abstract void mo1453k(View view, float f, float f2);

        /* renamed from: l */
        public abstract boolean mo1452l(View view, int i);
    }

    public C26670e(Context context, ViewGroup viewGroup, AbstractC26673c abstractC26673c) {
        if (abstractC26673c != null) {
            this.f74657u = viewGroup;
            this.f74654r = abstractC26673c;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f74651o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f74638b = viewConfiguration.getScaledTouchSlop();
            this.f74649m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f74650n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f74653q = new OverScroller(context, f74636w);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    /* renamed from: j */
    public static C26670e m1479j(ViewGroup viewGroup, float f, AbstractC26673c abstractC26673c) {
        C26670e c26670e = new C26670e(viewGroup.getContext(), viewGroup, abstractC26673c);
        c26670e.f74638b = (int) ((1.0f / f) * c26670e.f74638b);
        return c26670e;
    }

    /* renamed from: a */
    public void m1488a() {
        this.f74639c = -1;
        float[] fArr = this.f74640d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f74641e, 0.0f);
            Arrays.fill(this.f74642f, 0.0f);
            Arrays.fill(this.f74643g, 0.0f);
            Arrays.fill(this.f74644h, 0);
            Arrays.fill(this.f74645i, 0);
            Arrays.fill(this.f74646j, 0);
            this.f74647k = 0;
        }
        VelocityTracker velocityTracker = this.f74648l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f74648l = null;
        }
    }

    /* renamed from: b */
    public void m1487b(View view, int i) {
        if (view.getParent() != this.f74657u) {
            StringBuilder m8728C = C22128a.m8728C("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            m8728C.append(this.f74657u);
            m8728C.append(")");
            throw new IllegalArgumentException(m8728C.toString());
        }
        this.f74655s = view;
        this.f74639c = i;
        this.f74654r.mo1456h(view, i);
        m1468u(1);
    }

    /* renamed from: c */
    public final boolean m1486c(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f74644h[i] & i2) == i2) {
            z = false;
            if ((this.f74652p & i2) != 0) {
                z = false;
                if ((this.f74646j[i] & i2) != i2) {
                    z = false;
                    if ((this.f74645i[i] & i2) != i2) {
                        int i3 = this.f74638b;
                        if (abs <= i3 && abs2 <= i3) {
                            z = false;
                        } else if (abs < abs2 * 0.5f && this.f74654r.mo1458f(i2)) {
                            int[] iArr = this.f74646j;
                            iArr[i] = iArr[i] | i2;
                            return false;
                        } else {
                            z = false;
                            if ((this.f74645i[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f74638b) {
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

    /* renamed from: d */
    public final boolean m1485d(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.f74654r.mo1461c(view) > 0;
        boolean z3 = this.f74654r.mo1460d(view) > 0;
        if (z2 && z3) {
            int i = this.f74638b;
            if ((f2 * f2) + (f * f) > i * i) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.f74638b) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.f74638b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: e */
    public final float m1484e(float f, float f2, float f3) {
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

    /* renamed from: f */
    public final int m1483f(int i, int i2, int i3) {
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

    /* renamed from: g */
    public final void m1482g(int i) {
        if (this.f74640d == null || !m1475n(i)) {
            return;
        }
        this.f74640d[i] = 0.0f;
        this.f74641e[i] = 0.0f;
        this.f74642f[i] = 0.0f;
        this.f74643g[i] = 0.0f;
        this.f74644h[i] = 0;
        this.f74645i[i] = 0;
        this.f74646j[i] = 0;
        this.f74647k = ((1 << i) ^ (-1)) & this.f74647k;
    }

    /* renamed from: h */
    public final int m1481h(int i, int i2, int i3) {
        int width;
        if (i == 0) {
            return 0;
        }
        float width2 = this.f74657u.getWidth() / 2;
        float sin = (float) Math.sin((Math.min(1.0f, Math.abs(i) / width) - 0.5f) * 0.47123894f);
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(((sin * width2) + width2) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: i */
    public boolean m1480i(boolean z) {
        if (this.f74637a == 2) {
            boolean computeScrollOffset = this.f74653q.computeScrollOffset();
            int currX = this.f74653q.getCurrX();
            int currY = this.f74653q.getCurrY();
            int left = currX - this.f74655s.getLeft();
            int top = currY - this.f74655s.getTop();
            if (left != 0) {
                View view = this.f74655s;
                AtomicInteger atomicInteger = C26614s.f74505a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f74655s;
                AtomicInteger atomicInteger2 = C26614s.f74505a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f74654r.mo1454j(this.f74655s, currX, currY, left, top);
            }
            boolean z2 = computeScrollOffset;
            if (computeScrollOffset) {
                z2 = computeScrollOffset;
                if (currX == this.f74653q.getFinalX()) {
                    z2 = computeScrollOffset;
                    if (currY == this.f74653q.getFinalY()) {
                        this.f74653q.abortAnimation();
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                if (z) {
                    this.f74657u.post(this.f74658v);
                } else {
                    m1468u(0);
                }
            }
        }
        boolean z3 = false;
        if (this.f74637a == 2) {
            z3 = true;
        }
        return z3;
    }

    /* renamed from: k */
    public final void m1478k(float f, float f2) {
        this.f74656t = true;
        this.f74654r.mo1453k(this.f74655s, f, f2);
        this.f74656t = false;
        if (this.f74637a == 1) {
            m1468u(0);
        }
    }

    /* renamed from: l */
    public View m1477l(int i, int i2) {
        for (int childCount = this.f74657u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.f74657u;
            Objects.requireNonNull(this.f74654r);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: m */
    public final boolean m1476m(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f74655s.getLeft();
        int top = this.f74655s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f74653q.abortAnimation();
            m1468u(0);
            return false;
        }
        View view = this.f74655s;
        int m1483f = m1483f(i3, (int) this.f74650n, (int) this.f74649m);
        int m1483f2 = m1483f(i4, (int) this.f74650n, (int) this.f74649m);
        int abs = Math.abs(i5);
        int abs2 = Math.abs(i6);
        int abs3 = Math.abs(m1483f);
        int abs4 = Math.abs(m1483f2);
        int i7 = abs3 + abs4;
        int i8 = abs + abs2;
        if (m1483f != 0) {
            f2 = abs3;
            f = i7;
        } else {
            f2 = abs;
            f = i8;
        }
        float f5 = f2 / f;
        if (m1483f2 != 0) {
            f4 = abs4;
            f3 = i7;
        } else {
            f4 = abs2;
            f3 = i8;
        }
        this.f74653q.startScroll(left, top, i5, i6, (int) ((m1481h(i6, m1483f2, this.f74654r.mo1460d(view)) * (f4 / f3)) + (m1481h(i5, m1483f, this.f74654r.mo1461c(view)) * f5)));
        m1468u(2);
        return true;
    }

    /* renamed from: n */
    public boolean m1475n(int i) {
        boolean z = true;
        if (((1 << i) & this.f74647k) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public final boolean m1474o(int i) {
        return m1475n(i);
    }

    /* renamed from: p */
    public void m1473p(MotionEvent motionEvent) {
        boolean z;
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m1488a();
        }
        if (this.f74648l == null) {
            this.f74648l = VelocityTracker.obtain();
        }
        this.f74648l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m1477l = m1477l((int) x, (int) y);
            m1470s(x, y, pointerId);
            m1464y(m1477l, pointerId);
            int i3 = this.f74644h[pointerId];
            int i4 = this.f74652p;
            if ((i3 & i4) == 0) {
                return;
            }
            this.f74654r.mo1457g(i3 & i4, pointerId);
        } else if (actionMasked == 1) {
            if (this.f74637a == 1) {
                m1472q();
            }
            m1488a();
        } else if (actionMasked == 2) {
            if (this.f74637a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i5 = 0; i5 < pointerCount; i5++) {
                    int pointerId2 = motionEvent.getPointerId(i5);
                    if (m1474o(pointerId2)) {
                        float x2 = motionEvent.getX(i5);
                        float y2 = motionEvent.getY(i5);
                        float f = x2 - this.f74640d[pointerId2];
                        float f2 = y2 - this.f74641e[pointerId2];
                        m1471r(f, f2, pointerId2);
                        if (this.f74637a == 1) {
                            break;
                        }
                        View m1477l2 = m1477l((int) x2, (int) y2);
                        if (m1485d(m1477l2, f, f2) && m1464y(m1477l2, pointerId2)) {
                            break;
                        }
                    }
                }
                m1469t(motionEvent);
            } else if (m1474o(this.f74639c)) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f74639c);
                float x3 = motionEvent.getX(findPointerIndex);
                float y3 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f74642f;
                int i6 = this.f74639c;
                int i7 = (int) (x3 - fArr[i6]);
                int i8 = (int) (y3 - this.f74643g[i6]);
                int left = this.f74655s.getLeft() + i7;
                int top = this.f74655s.getTop() + i8;
                int left2 = this.f74655s.getLeft();
                int top2 = this.f74655s.getTop();
                int i9 = left;
                if (i7 != 0) {
                    i9 = this.f74654r.mo1463a(this.f74655s, left, i7);
                    View view = this.f74655s;
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    view.offsetLeftAndRight(i9 - left2);
                }
                int i10 = top;
                if (i8 != 0) {
                    i10 = this.f74654r.mo1462b(this.f74655s, top, i8);
                    View view2 = this.f74655s;
                    AtomicInteger atomicInteger2 = C26614s.f74505a;
                    view2.offsetTopAndBottom(i10 - top2);
                }
                if (i7 != 0 || i8 != 0) {
                    this.f74654r.mo1454j(this.f74655s, i9, i10, i9 - left2, i10 - top2);
                }
                m1469t(motionEvent);
            }
        } else if (actionMasked == 3) {
            if (this.f74637a == 1) {
                m1478k(0.0f, 0.0f);
            }
            m1488a();
        } else if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f74637a == 1 && pointerId3 == this.f74639c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount2) {
                        i = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i2);
                    if (pointerId4 != this.f74639c) {
                        View m1477l3 = m1477l((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view3 = this.f74655s;
                        if (m1477l3 == view3 && m1464y(view3, pointerId4)) {
                            i = this.f74639c;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    m1472q();
                }
            }
            m1482g(pointerId3);
        } else {
            int pointerId5 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m1470s(x4, y4, pointerId5);
            if (this.f74637a == 0) {
                m1464y(m1477l((int) x4, (int) y4), pointerId5);
                int i11 = this.f74644h[pointerId5];
                int i12 = this.f74652p;
                if ((i11 & i12) == 0) {
                    return;
                }
                this.f74654r.mo1457g(i11 & i12, pointerId5);
                return;
            }
            int i13 = (int) x4;
            int i14 = (int) y4;
            View view4 = this.f74655s;
            if (view4 == null) {
                z = false;
            } else {
                z = false;
                if (i13 >= view4.getLeft()) {
                    z = false;
                    if (i13 < view4.getRight()) {
                        z = false;
                        if (i14 >= view4.getTop()) {
                            z = false;
                            if (i14 < view4.getBottom()) {
                                z = true;
                            }
                        }
                    }
                }
            }
            if (!z) {
                return;
            }
            m1464y(this.f74655s, pointerId5);
        }
    }

    /* renamed from: q */
    public final void m1472q() {
        this.f74648l.computeCurrentVelocity(1000, this.f74649m);
        m1478k(m1484e(this.f74648l.getXVelocity(this.f74639c), this.f74650n, this.f74649m), m1484e(this.f74648l.getYVelocity(this.f74639c), this.f74650n, this.f74649m));
    }

    /* renamed from: r */
    public final void m1471r(float f, float f2, int i) {
        int i2 = 1;
        if (!m1486c(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (m1486c(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (m1486c(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (m1486c(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.f74645i;
            iArr[i] = iArr[i] | i5;
            this.f74654r.mo1459e(i5, i);
        }
    }

    /* renamed from: s */
    public final void m1470s(float f, float f2, int i) {
        float[] fArr = this.f74640d;
        int i2 = 0;
        if (fArr == null || fArr.length <= i) {
            int i3 = i + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f74641e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f74642f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f74643g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f74644h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f74645i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f74646j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f74640d = fArr2;
            this.f74641e = fArr3;
            this.f74642f = fArr4;
            this.f74643g = fArr5;
            this.f74644h = iArr;
            this.f74645i = iArr2;
            this.f74646j = iArr3;
        }
        float[] fArr9 = this.f74640d;
        this.f74642f[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f74641e;
        this.f74643g[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.f74644h;
        int i4 = (int) f;
        int i5 = (int) f2;
        if (i4 < this.f74657u.getLeft() + this.f74651o) {
            i2 = 1;
        }
        int i6 = i2;
        if (i5 < this.f74657u.getTop() + this.f74651o) {
            i6 = i2 | 4;
        }
        int i7 = i6;
        if (i4 > this.f74657u.getRight() - this.f74651o) {
            i7 = i6 | 2;
        }
        int i8 = i7;
        if (i5 > this.f74657u.getBottom() - this.f74651o) {
            i8 = i7 | 8;
        }
        iArr7[i] = i8;
        this.f74647k |= 1 << i;
    }

    /* renamed from: t */
    public final void m1469t(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m1474o(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f74642f[pointerId] = x;
                this.f74643g[pointerId] = y;
            }
        }
    }

    /* renamed from: u */
    public void m1468u(int i) {
        this.f74657u.removeCallbacks(this.f74658v);
        if (this.f74637a != i) {
            this.f74637a = i;
            this.f74654r.mo1455i(i);
            if (this.f74637a != 0) {
                return;
            }
            this.f74655s = null;
        }
    }

    /* renamed from: v */
    public boolean m1467v(int i, int i2) {
        if (this.f74656t) {
            return m1476m(i, i2, (int) this.f74648l.getXVelocity(this.f74639c), (int) this.f74648l.getYVelocity(this.f74639c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
        if (r0 != r0) goto L60;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1466w(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1832m.p1833a.C26670e.m1466w(android.view.MotionEvent):boolean");
    }

    /* renamed from: x */
    public boolean m1465x(View view, int i, int i2) {
        this.f74655s = view;
        this.f74639c = -1;
        boolean m1476m = m1476m(i, i2, 0, 0);
        if (!m1476m && this.f74637a == 0 && this.f74655s != null) {
            this.f74655s = null;
        }
        return m1476m;
    }

    /* renamed from: y */
    public boolean m1464y(View view, int i) {
        if (view == this.f74655s && this.f74639c == i) {
            return true;
        }
        if (view == null || !this.f74654r.mo1452l(view, i)) {
            return false;
        }
        this.f74639c = i;
        m1487b(view, i);
        return true;
    }
}
