package p227s0;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;
import java.util.Objects;
import p163m0.C3589v;
/* renamed from: s0.c */
/* loaded from: classes-dex2jar.jar:s0/c.class */
public class C4273c {

    /* renamed from: x */
    public static final Interpolator f13388x = new animationInterpolatorC4274a();

    /* renamed from: a */
    public int f13389a;

    /* renamed from: b */
    public int f13390b;

    /* renamed from: d */
    public float[] f13392d;

    /* renamed from: e */
    public float[] f13393e;

    /* renamed from: f */
    public float[] f13394f;

    /* renamed from: g */
    public float[] f13395g;

    /* renamed from: h */
    public int[] f13396h;

    /* renamed from: i */
    public int[] f13397i;

    /* renamed from: j */
    public int[] f13398j;

    /* renamed from: k */
    public int f13399k;

    /* renamed from: l */
    public VelocityTracker f13400l;

    /* renamed from: m */
    public float f13401m;

    /* renamed from: n */
    public float f13402n;

    /* renamed from: o */
    public int f13403o;

    /* renamed from: p */
    public final int f13404p;

    /* renamed from: q */
    public int f13405q;

    /* renamed from: r */
    public OverScroller f13406r;

    /* renamed from: s */
    public final AbstractC4276c f13407s;

    /* renamed from: t */
    public View f13408t;

    /* renamed from: u */
    public boolean f13409u;

    /* renamed from: v */
    public final ViewGroup f13410v;

    /* renamed from: c */
    public int f13391c = -1;

    /* renamed from: w */
    public final Runnable f13411w = new RunnableC4275b();

    /* renamed from: s0.c$a */
    /* loaded from: classes-dex2jar.jar:s0/c$a.class */
    public class animationInterpolatorC4274a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: s0.c$b */
    /* loaded from: classes-dex2jar.jar:s0/c$b.class */
    public class RunnableC4275b implements Runnable {
        public RunnableC4275b() {
            C4273c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4273c.this.m1143u(0);
        }
    }

    /* renamed from: s0.c$c */
    /* loaded from: classes-dex2jar.jar:s0/c$c.class */
    public static abstract class AbstractC4276c {
        /* renamed from: a */
        public int mo1138a(View view, int i, int i2) {
            return 0;
        }

        /* renamed from: b */
        public abstract int mo1137b(View view, int i, int i2);

        /* renamed from: c */
        public int mo1136c(View view) {
            return 0;
        }

        /* renamed from: d */
        public int mo1135d(View view) {
            return 0;
        }

        /* renamed from: e */
        public void mo1134e(int i, int i2) {
        }

        /* renamed from: f */
        public void mo1133f(int i, int i2) {
        }

        /* renamed from: g */
        public void mo1132g(View view, int i) {
        }

        /* renamed from: h */
        public void mo1131h(int i) {
        }

        /* renamed from: i */
        public abstract void mo1130i(View view, int i, int i2, int i3, int i4);

        /* renamed from: j */
        public abstract void mo1129j(View view, float f, float f2);

        /* renamed from: k */
        public abstract boolean mo1128k(View view, int i);
    }

    public C4273c(Context context, ViewGroup viewGroup, AbstractC4276c abstractC4276c) {
        if (abstractC4276c != null) {
            this.f13410v = viewGroup;
            this.f13407s = abstractC4276c;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int i = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f13404p = i;
            this.f13403o = i;
            this.f13390b = viewConfiguration.getScaledTouchSlop();
            this.f13401m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f13402n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f13406r = new OverScroller(context, f13388x);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    /* renamed from: j */
    public static C4273c m1154j(ViewGroup viewGroup, float f, AbstractC4276c abstractC4276c) {
        C4273c c4273c = new C4273c(viewGroup.getContext(), viewGroup, abstractC4276c);
        c4273c.f13390b = (int) ((1.0f / f) * c4273c.f13390b);
        return c4273c;
    }

    /* renamed from: a */
    public void m1163a() {
        this.f13391c = -1;
        float[] fArr = this.f13392d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f13393e, 0.0f);
            Arrays.fill(this.f13394f, 0.0f);
            Arrays.fill(this.f13395g, 0.0f);
            Arrays.fill(this.f13396h, 0);
            Arrays.fill(this.f13397i, 0);
            Arrays.fill(this.f13398j, 0);
            this.f13399k = 0;
        }
        VelocityTracker velocityTracker = this.f13400l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f13400l = null;
        }
    }

    /* renamed from: b */
    public void m1162b(View view, int i) {
        if (view.getParent() != this.f13410v) {
            StringBuilder m8752j = C0082b.m8752j("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            m8752j.append(this.f13410v);
            m8752j.append(")");
            throw new IllegalArgumentException(m8752j.toString());
        }
        this.f13408t = view;
        this.f13391c = i;
        this.f13407s.mo1132g(view, i);
        m1143u(1);
    }

    /* renamed from: c */
    public final boolean m1161c(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f13396h[i] & i2) == i2) {
            z = false;
            if ((this.f13405q & i2) != 0) {
                z = false;
                if ((this.f13398j[i] & i2) != i2) {
                    z = false;
                    if ((this.f13397i[i] & i2) != i2) {
                        int i3 = this.f13390b;
                        if (abs > i3 || abs2 > i3) {
                            if (abs < abs2 * 0.5f) {
                                Objects.requireNonNull(this.f13407s);
                            }
                            z = false;
                            if ((this.f13397i[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f13390b) {
                                    z = true;
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m1160d(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.f13407s.mo1136c(view) > 0;
        boolean z3 = this.f13407s.mo1135d(view) > 0;
        if (z2 && z3) {
            int i = this.f13390b;
            if ((f2 * f2) + (f * f) > i * i) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.f13390b) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.f13390b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: e */
    public final float m1159e(float f, float f2, float f3) {
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
    public final int m1158f(int i, int i2, int i3) {
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
    public final void m1157g(int i) {
        if (this.f13392d == null || !m1150n(i)) {
            return;
        }
        this.f13392d[i] = 0.0f;
        this.f13393e[i] = 0.0f;
        this.f13394f[i] = 0.0f;
        this.f13395g[i] = 0.0f;
        this.f13396h[i] = 0;
        this.f13397i[i] = 0;
        this.f13398j[i] = 0;
        this.f13399k = ((1 << i) ^ (-1)) & this.f13399k;
    }

    /* renamed from: h */
    public final int m1156h(int i, int i2, int i3) {
        int width;
        if (i == 0) {
            return 0;
        }
        float width2 = this.f13410v.getWidth() / 2;
        float sin = (float) Math.sin((Math.min(1.0f, Math.abs(i) / width) - 0.5f) * 0.47123894f);
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(((sin * width2) + width2) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: i */
    public boolean m1155i(boolean z) {
        if (this.f13389a == 2) {
            boolean computeScrollOffset = this.f13406r.computeScrollOffset();
            int currX = this.f13406r.getCurrX();
            int currY = this.f13406r.getCurrY();
            int left = currX - this.f13408t.getLeft();
            int top = currY - this.f13408t.getTop();
            if (left != 0) {
                C3589v.m2110n(this.f13408t, left);
            }
            if (top != 0) {
                C3589v.m2109o(this.f13408t, top);
            }
            if (left != 0 || top != 0) {
                this.f13407s.mo1130i(this.f13408t, currX, currY, left, top);
            }
            boolean z2 = computeScrollOffset;
            if (computeScrollOffset) {
                z2 = computeScrollOffset;
                if (currX == this.f13406r.getFinalX()) {
                    z2 = computeScrollOffset;
                    if (currY == this.f13406r.getFinalY()) {
                        this.f13406r.abortAnimation();
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                if (z) {
                    this.f13410v.post(this.f13411w);
                } else {
                    m1143u(0);
                }
            }
        }
        boolean z3 = false;
        if (this.f13389a == 2) {
            z3 = true;
        }
        return z3;
    }

    /* renamed from: k */
    public final void m1153k(float f, float f2) {
        this.f13409u = true;
        this.f13407s.mo1129j(this.f13408t, f, f2);
        this.f13409u = false;
        if (this.f13389a == 1) {
            m1143u(0);
        }
    }

    /* renamed from: l */
    public View m1152l(int i, int i2) {
        for (int childCount = this.f13410v.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.f13410v;
            Objects.requireNonNull(this.f13407s);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: m */
    public final boolean m1151m(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f13408t.getLeft();
        int top = this.f13408t.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f13406r.abortAnimation();
            m1143u(0);
            return false;
        }
        View view = this.f13408t;
        int m1158f = m1158f(i3, (int) this.f13402n, (int) this.f13401m);
        int m1158f2 = m1158f(i4, (int) this.f13402n, (int) this.f13401m);
        int abs = Math.abs(i5);
        int abs2 = Math.abs(i6);
        int abs3 = Math.abs(m1158f);
        int abs4 = Math.abs(m1158f2);
        int i7 = abs3 + abs4;
        int i8 = abs + abs2;
        if (m1158f != 0) {
            f2 = abs3;
            f = i7;
        } else {
            f2 = abs;
            f = i8;
        }
        float f5 = f2 / f;
        if (m1158f2 != 0) {
            f4 = abs4;
            f3 = i7;
        } else {
            f4 = abs2;
            f3 = i8;
        }
        this.f13406r.startScroll(left, top, i5, i6, (int) ((m1156h(i6, m1158f2, this.f13407s.mo1135d(view)) * (f4 / f3)) + (m1156h(i5, m1158f, this.f13407s.mo1136c(view)) * f5)));
        m1143u(2);
        return true;
    }

    /* renamed from: n */
    public boolean m1150n(int i) {
        boolean z = true;
        if (((1 << i) & this.f13399k) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public final boolean m1149o(int i) {
        return m1150n(i);
    }

    /* renamed from: p */
    public void m1148p(MotionEvent motionEvent) {
        boolean z;
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m1163a();
        }
        if (this.f13400l == null) {
            this.f13400l = VelocityTracker.obtain();
        }
        this.f13400l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m1152l = m1152l((int) x, (int) y);
            m1145s(x, y, pointerId);
            m1139y(m1152l, pointerId);
            int i3 = this.f13396h[pointerId];
            int i4 = this.f13405q;
            if ((i3 & i4) == 0) {
                return;
            }
            this.f13407s.mo1133f(i3 & i4, pointerId);
        } else if (actionMasked == 1) {
            if (this.f13389a == 1) {
                m1147q();
            }
            m1163a();
        } else if (actionMasked == 2) {
            if (this.f13389a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i5 = 0; i5 < pointerCount; i5++) {
                    int pointerId2 = motionEvent.getPointerId(i5);
                    if (m1149o(pointerId2)) {
                        float x2 = motionEvent.getX(i5);
                        float y2 = motionEvent.getY(i5);
                        float f = x2 - this.f13392d[pointerId2];
                        float f2 = y2 - this.f13393e[pointerId2];
                        m1146r(f, f2, pointerId2);
                        if (this.f13389a == 1) {
                            break;
                        }
                        View m1152l2 = m1152l((int) x2, (int) y2);
                        if (m1160d(m1152l2, f, f2) && m1139y(m1152l2, pointerId2)) {
                            break;
                        }
                    }
                }
                m1144t(motionEvent);
            } else if (m1149o(this.f13391c)) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f13391c);
                float x3 = motionEvent.getX(findPointerIndex);
                float y3 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f13394f;
                int i6 = this.f13391c;
                int i7 = (int) (x3 - fArr[i6]);
                int i8 = (int) (y3 - this.f13395g[i6]);
                int left = this.f13408t.getLeft() + i7;
                int top = this.f13408t.getTop() + i8;
                int left2 = this.f13408t.getLeft();
                int top2 = this.f13408t.getTop();
                int i9 = left;
                if (i7 != 0) {
                    i9 = this.f13407s.mo1138a(this.f13408t, left, i7);
                    C3589v.m2110n(this.f13408t, i9 - left2);
                }
                int i10 = top;
                if (i8 != 0) {
                    i10 = this.f13407s.mo1137b(this.f13408t, top, i8);
                    C3589v.m2109o(this.f13408t, i10 - top2);
                }
                if (i7 != 0 || i8 != 0) {
                    this.f13407s.mo1130i(this.f13408t, i9, i10, i9 - left2, i10 - top2);
                }
                m1144t(motionEvent);
            }
        } else if (actionMasked == 3) {
            if (this.f13389a == 1) {
                m1153k(0.0f, 0.0f);
            }
            m1163a();
        } else if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f13389a == 1 && pointerId3 == this.f13391c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount2) {
                        i = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i2);
                    if (pointerId4 != this.f13391c) {
                        View m1152l3 = m1152l((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view = this.f13408t;
                        if (m1152l3 == view && m1139y(view, pointerId4)) {
                            i = this.f13391c;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    m1147q();
                }
            }
            m1157g(pointerId3);
        } else {
            int pointerId5 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m1145s(x4, y4, pointerId5);
            if (this.f13389a == 0) {
                m1139y(m1152l((int) x4, (int) y4), pointerId5);
                int i11 = this.f13396h[pointerId5];
                int i12 = this.f13405q;
                if ((i11 & i12) == 0) {
                    return;
                }
                this.f13407s.mo1133f(i11 & i12, pointerId5);
                return;
            }
            int i13 = (int) x4;
            int i14 = (int) y4;
            View view2 = this.f13408t;
            if (view2 == null) {
                z = false;
            } else {
                z = false;
                if (i13 >= view2.getLeft()) {
                    z = false;
                    if (i13 < view2.getRight()) {
                        z = false;
                        if (i14 >= view2.getTop()) {
                            z = false;
                            if (i14 < view2.getBottom()) {
                                z = true;
                            }
                        }
                    }
                }
            }
            if (!z) {
                return;
            }
            m1139y(this.f13408t, pointerId5);
        }
    }

    /* renamed from: q */
    public final void m1147q() {
        this.f13400l.computeCurrentVelocity(1000, this.f13401m);
        m1153k(m1159e(this.f13400l.getXVelocity(this.f13391c), this.f13402n, this.f13401m), m1159e(this.f13400l.getYVelocity(this.f13391c), this.f13402n, this.f13401m));
    }

    /* renamed from: r */
    public final void m1146r(float f, float f2, int i) {
        boolean m1161c = m1161c(f, f2, i, 1);
        boolean z = m1161c;
        if (m1161c(f2, f, i, 4)) {
            z = m1161c | true;
        }
        boolean z2 = z;
        if (m1161c(f, f2, i, 2)) {
            z2 = z | true;
        }
        boolean z3 = z2;
        if (m1161c(f2, f, i, 8)) {
            z3 = z2 | true;
        }
        if (z3) {
            int[] iArr = this.f13397i;
            iArr[i] = iArr[i] | z3;
            this.f13407s.mo1134e(z3 ? 1 : 0, i);
        }
    }

    /* renamed from: s */
    public final void m1145s(float f, float f2, int i) {
        float[] fArr = this.f13392d;
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
                float[] fArr6 = this.f13393e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f13394f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f13395g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f13396h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f13397i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f13398j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f13392d = fArr2;
            this.f13393e = fArr3;
            this.f13394f = fArr4;
            this.f13395g = fArr5;
            this.f13396h = iArr;
            this.f13397i = iArr2;
            this.f13398j = iArr3;
        }
        float[] fArr9 = this.f13392d;
        this.f13394f[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f13393e;
        this.f13395g[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.f13396h;
        int i4 = (int) f;
        int i5 = (int) f2;
        if (i4 < this.f13410v.getLeft() + this.f13403o) {
            i2 = 1;
        }
        int i6 = i2;
        if (i5 < this.f13410v.getTop() + this.f13403o) {
            i6 = i2 | 4;
        }
        int i7 = i6;
        if (i4 > this.f13410v.getRight() - this.f13403o) {
            i7 = i6 | 2;
        }
        int i8 = i7;
        if (i5 > this.f13410v.getBottom() - this.f13403o) {
            i8 = i7 | 8;
        }
        iArr7[i] = i8;
        this.f13399k |= 1 << i;
    }

    /* renamed from: t */
    public final void m1144t(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m1149o(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f13394f[pointerId] = x;
                this.f13395g[pointerId] = y;
            }
        }
    }

    /* renamed from: u */
    public void m1143u(int i) {
        this.f13410v.removeCallbacks(this.f13411w);
        if (this.f13389a != i) {
            this.f13389a = i;
            this.f13407s.mo1131h(i);
            if (this.f13389a != 0) {
                return;
            }
            this.f13408t = null;
        }
    }

    /* renamed from: v */
    public boolean m1142v(int i, int i2) {
        if (this.f13409u) {
            return m1151m(i, i2, (int) this.f13400l.getXVelocity(this.f13391c), (int) this.f13400l.getYVelocity(this.f13391c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x019a, code lost:
        if (r0 != r0) goto L60;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1141w(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p227s0.C4273c.m1141w(android.view.MotionEvent):boolean");
    }

    /* renamed from: x */
    public boolean m1140x(View view, int i, int i2) {
        this.f13408t = view;
        this.f13391c = -1;
        boolean m1151m = m1151m(i, i2, 0, 0);
        if (!m1151m && this.f13389a == 0 && this.f13408t != null) {
            this.f13408t = null;
        }
        return m1151m;
    }

    /* renamed from: y */
    public boolean m1139y(View view, int i) {
        if (view == this.f13408t && this.f13391c == i) {
            return true;
        }
        if (view == null || !this.f13407s.mo1128k(view, i)) {
            return false;
        }
        this.f13391c = i;
        m1162b(view, i);
        return true;
    }
}
