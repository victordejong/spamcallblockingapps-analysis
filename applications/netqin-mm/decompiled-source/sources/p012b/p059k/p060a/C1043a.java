package p012b.p059k.p060a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.google.logging.type.LogSeverity;
import java.util.Arrays;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.k.a.a */
/* loaded from: classes-dex2jar.jar:b/k/a/a.class */
public class C1043a {

    /* renamed from: w */
    public static final Interpolator f4340w = new animationInterpolatorC1044a();

    /* renamed from: a */
    public int f4341a;

    /* renamed from: b */
    public int f4342b;

    /* renamed from: d */
    public float[] f4344d;

    /* renamed from: e */
    public float[] f4345e;

    /* renamed from: f */
    public float[] f4346f;

    /* renamed from: g */
    public float[] f4347g;

    /* renamed from: h */
    public int[] f4348h;

    /* renamed from: i */
    public int[] f4349i;

    /* renamed from: j */
    public int[] f4350j;

    /* renamed from: k */
    public int f4351k;

    /* renamed from: l */
    public VelocityTracker f4352l;

    /* renamed from: m */
    public float f4353m;

    /* renamed from: n */
    public float f4354n;

    /* renamed from: o */
    public int f4355o;

    /* renamed from: p */
    public int f4356p;

    /* renamed from: q */
    public OverScroller f4357q;

    /* renamed from: r */
    public final AbstractC1046c f4358r;

    /* renamed from: s */
    public View f4359s;

    /* renamed from: t */
    public boolean f4360t;

    /* renamed from: u */
    public final ViewGroup f4361u;

    /* renamed from: c */
    public int f4343c = -1;

    /* renamed from: v */
    public final Runnable f4362v = new RunnableC1045b();

    /* renamed from: b.k.a.a$a  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$a.class */
    public static final class animationInterpolatorC1044a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: b.k.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$b.class */
    public class RunnableC1045b implements Runnable {
        public RunnableC1045b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1043a.this.m35034f(0);
        }
    }

    /* renamed from: b.k.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$c.class */
    public static abstract class AbstractC1046c {
        /* renamed from: a */
        public int m35030a(int i) {
            return i;
        }

        /* renamed from: a */
        public abstract int mo35028a(View view);

        /* renamed from: a */
        public abstract int mo35025a(View view, int i, int i2);

        /* renamed from: a */
        public abstract void mo35029a(int i, int i2);

        /* renamed from: a */
        public abstract void mo35027a(View view, float f, float f2);

        /* renamed from: a */
        public abstract void mo35026a(View view, int i);

        /* renamed from: a */
        public abstract void mo35024a(View view, int i, int i2, int i3, int i4);

        /* renamed from: b */
        public int m35021b(View view) {
            return 0;
        }

        /* renamed from: b */
        public abstract int mo35019b(View view, int i, int i2);

        /* renamed from: b */
        public void mo35022b(int i, int i2) {
        }

        /* renamed from: b */
        public boolean mo35023b(int i) {
            return false;
        }

        /* renamed from: b */
        public abstract boolean mo35020b(View view, int i);

        /* renamed from: c */
        public abstract void mo35018c(int i);
    }

    public C1043a(Context context, ViewGroup viewGroup, AbstractC1046c cVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (cVar != null) {
            this.f4361u = viewGroup;
            this.f4358r = cVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f4355o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f4342b = viewConfiguration.getScaledTouchSlop();
            this.f4353m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f4354n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f4357q = new OverScroller(context, f4340w);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    /* renamed from: a */
    public static C1043a m35058a(ViewGroup viewGroup, float f, AbstractC1046c cVar) {
        C1043a a = m35057a(viewGroup, cVar);
        a.f4342b = (int) (a.f4342b * (1.0f / f));
        return a;
    }

    /* renamed from: a */
    public static C1043a m35057a(ViewGroup viewGroup, AbstractC1046c cVar) {
        return new C1043a(viewGroup.getContext(), viewGroup, cVar);
    }

    /* renamed from: a */
    public final float m35072a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    public final float m35070a(float f, float f2, float f3) {
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

    /* renamed from: a */
    public final int m35065a(int i, int i2, int i3) {
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

    /* renamed from: a */
    public final int m35059a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int a = m35065a(i3, (int) this.f4354n, (int) this.f4353m);
        int a2 = m35065a(i4, (int) this.f4354n, (int) this.f4353m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(a);
        int abs4 = Math.abs(a2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (a != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (a2 != 0) {
            f3 = abs4;
            f4 = i5;
        } else {
            f3 = abs2;
            f4 = i6;
        }
        return (int) ((m35050b(i, a, this.f4358r.mo35028a(view)) * f5) + (m35050b(i2, a2, this.f4358r.m35021b(view)) * (f3 / f4)));
    }

    /* renamed from: a */
    public void m35073a() {
        m35055b();
        if (this.f4341a == 2) {
            int currX = this.f4357q.getCurrX();
            int currY = this.f4357q.getCurrY();
            this.f4357q.abortAnimation();
            int currX2 = this.f4357q.getCurrX();
            int currY2 = this.f4357q.getCurrY();
            this.f4358r.mo35024a(this.f4359s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        m35034f(0);
    }

    /* renamed from: a */
    public final void m35071a(float f, float f2) {
        this.f4360t = true;
        this.f4358r.mo35027a(this.f4359s, f, f2);
        this.f4360t = false;
        if (this.f4341a == 1) {
            m35034f(0);
        }
    }

    /* renamed from: a */
    public final void m35069a(float f, float f2, int i) {
        int i2 = 1;
        if (!m35068a(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (m35068a(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (m35068a(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (m35068a(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.f4349i;
            iArr[i] = iArr[i] | i5;
            this.f4358r.mo35029a(i5, i);
        }
    }

    /* renamed from: a */
    public final void m35064a(int i, int i2, int i3, int i4) {
        int left = this.f4359s.getLeft();
        int top = this.f4359s.getTop();
        int i5 = i;
        if (i3 != 0) {
            i5 = this.f4358r.mo35025a(this.f4359s, i, i3);
            C1002u.m35221d(this.f4359s, i5 - left);
        }
        int i6 = i2;
        if (i4 != 0) {
            i6 = this.f4358r.mo35019b(this.f4359s, i2, i4);
            C1002u.m35219e(this.f4359s, i6 - top);
        }
        if (i3 != 0 || i4 != 0) {
            this.f4358r.mo35024a(this.f4359s, i5, i6, i5 - left, i6 - top);
        }
    }

    /* renamed from: a */
    public void m35063a(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m35055b();
        }
        if (this.f4352l == null) {
            this.f4352l = VelocityTracker.obtain();
        }
        this.f4352l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View b = m35051b((int) x, (int) y);
            m35053b(x, y, pointerId);
            m35047b(b, pointerId);
            int i3 = this.f4348h[pointerId];
            int i4 = this.f4356p;
            if ((i3 & i4) != 0) {
                this.f4358r.mo35022b(i3 & i4, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.f4341a == 1) {
                m35031h();
            }
            m35055b();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f4341a == 1) {
                    m35071a(0.0f, 0.0f);
                }
                m35055b();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                m35053b(x2, y2, pointerId2);
                if (this.f4341a == 0) {
                    m35047b(m35051b((int) x2, (int) y2), pointerId2);
                    int i5 = this.f4348h[pointerId2];
                    int i6 = this.f4356p;
                    if ((i5 & i6) != 0) {
                        this.f4358r.mo35022b(i5 & i6, pointerId2);
                    }
                } else if (m35039d((int) x2, (int) y2)) {
                    m35047b(this.f4359s, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.f4341a == 1 && pointerId3 == this.f4343c) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount) {
                            i = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i2);
                        if (pointerId4 != this.f4343c) {
                            View b2 = m35051b((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                            View view = this.f4359s;
                            if (b2 == view && m35047b(view, pointerId4)) {
                                i = this.f4343c;
                                break;
                            }
                        }
                        i2++;
                    }
                    if (i == -1) {
                        m35031h();
                    }
                }
                m35052b(pointerId3);
            }
        } else if (this.f4341a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            for (int i7 = 0; i7 < pointerCount2; i7++) {
                int pointerId5 = motionEvent.getPointerId(i7);
                if (m35037e(pointerId5)) {
                    float x3 = motionEvent.getX(i7);
                    float y3 = motionEvent.getY(i7);
                    float f = x3 - this.f4344d[pointerId5];
                    float f2 = y3 - this.f4345e[pointerId5];
                    m35069a(f, f2, pointerId5);
                    if (this.f4341a == 1) {
                        break;
                    }
                    View b3 = m35051b((int) x3, (int) y3);
                    if (m35062a(b3, f, f2) && m35047b(b3, pointerId5)) {
                        break;
                    }
                }
            }
            m35048b(motionEvent);
        } else if (m35037e(this.f4343c)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f4343c);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f4346f;
            int i8 = this.f4343c;
            int i9 = (int) (x4 - fArr[i8]);
            int i10 = (int) (y4 - this.f4347g[i8]);
            m35064a(this.f4359s.getLeft() + i9, this.f4359s.getTop() + i10, i9, i10);
            m35048b(motionEvent);
        }
    }

    /* renamed from: a */
    public void m35061a(View view, int i) {
        if (view.getParent() == this.f4361u) {
            this.f4359s = view;
            this.f4343c = i;
            this.f4358r.mo35026a(view, i);
            m35034f(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f4361u + ")");
    }

    /* renamed from: a */
    public final boolean m35068a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f4348h[i] & i2) == i2) {
            z = false;
            if ((this.f4356p & i2) != 0) {
                z = false;
                if ((this.f4350j[i] & i2) != i2) {
                    z = false;
                    if ((this.f4349i[i] & i2) != i2) {
                        int i3 = this.f4342b;
                        if (abs <= i3 && abs2 <= i3) {
                            z = false;
                        } else if (abs >= abs2 * 0.5f || !this.f4358r.mo35023b(i2)) {
                            z = false;
                            if ((this.f4349i[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f4342b) {
                                    z = true;
                                }
                            }
                        } else {
                            int[] iArr = this.f4350j;
                            iArr[i] = iArr[i] | i2;
                            return false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m35067a(int i) {
        int length = this.f4344d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (m35066a(i, i2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m35066a(int i, int i2) {
        boolean z = false;
        boolean z2 = false;
        if (!m35040d(i2)) {
            return false;
        }
        boolean z3 = (i & 1) == 1;
        boolean z4 = (i & 2) == 2;
        float f = this.f4346f[i2] - this.f4344d[i2];
        float f2 = this.f4347g[i2] - this.f4345e[i2];
        if (z3 && z4) {
            int i3 = this.f4342b;
            if ((f * f) + (f2 * f2) > i3 * i3) {
                z2 = true;
            }
            return z2;
        } else if (z3) {
            if (Math.abs(f) > this.f4342b) {
                z = true;
            }
            return z;
        } else {
            boolean z5 = false;
            if (z4) {
                z5 = false;
                if (Math.abs(f2) > this.f4342b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: a */
    public final boolean m35062a(View view, float f, float f2) {
        boolean z = false;
        boolean z2 = false;
        if (view == null) {
            return false;
        }
        boolean z3 = this.f4358r.mo35028a(view) > 0;
        boolean z4 = this.f4358r.m35021b(view) > 0;
        if (z3 && z4) {
            int i = this.f4342b;
            if ((f * f) + (f2 * f2) > i * i) {
                z2 = true;
            }
            return z2;
        } else if (z3) {
            if (Math.abs(f) > this.f4342b) {
                z = true;
            }
            return z;
        } else {
            boolean z5 = false;
            if (z4) {
                z5 = false;
                if (Math.abs(f2) > this.f4342b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: a */
    public boolean m35060a(View view, int i, int i2) {
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

    /* renamed from: a */
    public boolean m35056a(boolean z) {
        boolean z2 = false;
        if (this.f4341a == 2) {
            boolean computeScrollOffset = this.f4357q.computeScrollOffset();
            int currX = this.f4357q.getCurrX();
            int currY = this.f4357q.getCurrY();
            int left = currX - this.f4359s.getLeft();
            int top = currY - this.f4359s.getTop();
            if (left != 0) {
                C1002u.m35221d(this.f4359s, left);
            }
            if (top != 0) {
                C1002u.m35219e(this.f4359s, top);
            }
            if (!(left == 0 && top == 0)) {
                this.f4358r.mo35024a(this.f4359s, currX, currY, left, top);
            }
            boolean z3 = computeScrollOffset;
            if (computeScrollOffset) {
                z3 = computeScrollOffset;
                if (currX == this.f4357q.getFinalX()) {
                    z3 = computeScrollOffset;
                    if (currY == this.f4357q.getFinalY()) {
                        this.f4357q.abortAnimation();
                        z3 = false;
                    }
                }
            }
            if (!z3) {
                if (z) {
                    this.f4361u.post(this.f4362v);
                } else {
                    m35034f(0);
                }
            }
        }
        if (this.f4341a == 2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: b */
    public final int m35050b(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f4361u.getWidth();
        float f = width / 2;
        float a = m35072a(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (a * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), (int) LogSeverity.CRITICAL_VALUE);
    }

    /* renamed from: b */
    public View m35051b(int i, int i2) {
        for (int childCount = this.f4361u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.f4361u;
            this.f4358r.m35030a(childCount);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m35055b() {
        this.f4343c = -1;
        m35045c();
        VelocityTracker velocityTracker = this.f4352l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f4352l = null;
        }
    }

    /* renamed from: b */
    public void m35054b(float f) {
        this.f4354n = f;
    }

    /* renamed from: b */
    public final void m35053b(float f, float f2, int i) {
        m35044c(i);
        float[] fArr = this.f4344d;
        this.f4346f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f4345e;
        this.f4347g[i] = f2;
        fArr2[i] = f2;
        this.f4348h[i] = m35043c((int) f, (int) f2);
        this.f4351k |= 1 << i;
    }

    /* renamed from: b */
    public final void m35052b(int i) {
        if (this.f4344d != null && m35040d(i)) {
            this.f4344d[i] = 0.0f;
            this.f4345e[i] = 0.0f;
            this.f4346f[i] = 0.0f;
            this.f4347g[i] = 0.0f;
            this.f4348h[i] = 0;
            this.f4349i[i] = 0;
            this.f4350j[i] = 0;
            this.f4351k = ((1 << i) ^ (-1)) & this.f4351k;
        }
    }

    /* renamed from: b */
    public final void m35048b(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m35037e(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f4346f[pointerId] = x;
                this.f4347g[pointerId] = y;
            }
        }
    }

    /* renamed from: b */
    public final boolean m35049b(int i, int i2, int i3, int i4) {
        int left = this.f4359s.getLeft();
        int top = this.f4359s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f4357q.abortAnimation();
            m35034f(0);
            return false;
        }
        this.f4357q.startScroll(left, top, i5, i6, m35059a(this.f4359s, i5, i6, i3, i4));
        m35034f(2);
        return true;
    }

    /* renamed from: b */
    public boolean m35047b(View view, int i) {
        if (view == this.f4359s && this.f4343c == i) {
            return true;
        }
        if (view == null || !this.f4358r.mo35020b(view, i)) {
            return false;
        }
        this.f4343c = i;
        m35061a(view, i);
        return true;
    }

    /* renamed from: b */
    public boolean m35046b(View view, int i, int i2) {
        this.f4359s = view;
        this.f4343c = -1;
        boolean b = m35049b(i, i2, 0, 0);
        if (!b && this.f4341a == 0 && this.f4359s != null) {
            this.f4359s = null;
        }
        return b;
    }

    /* renamed from: c */
    public final int m35043c(int i, int i2) {
        int i3 = i < this.f4361u.getLeft() + this.f4355o ? 1 : 0;
        int i4 = i3;
        if (i2 < this.f4361u.getTop() + this.f4355o) {
            i4 = i3 | 4;
        }
        int i5 = i4;
        if (i > this.f4361u.getRight() - this.f4355o) {
            i5 = i4 | 2;
        }
        int i6 = i5;
        if (i2 > this.f4361u.getBottom() - this.f4355o) {
            i6 = i5 | 8;
        }
        return i6;
    }

    /* renamed from: c */
    public final void m35045c() {
        float[] fArr = this.f4344d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f4345e, 0.0f);
            Arrays.fill(this.f4346f, 0.0f);
            Arrays.fill(this.f4347g, 0.0f);
            Arrays.fill(this.f4348h, 0);
            Arrays.fill(this.f4349i, 0);
            Arrays.fill(this.f4350j, 0);
            this.f4351k = 0;
        }
    }

    /* renamed from: c */
    public final void m35044c(int i) {
        float[] fArr = this.f4344d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            float[] fArr6 = this.f4344d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f4345e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f4346f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f4347g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f4348h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f4349i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f4350j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f4344d = fArr2;
            this.f4345e = fArr3;
            this.f4346f = fArr4;
            this.f4347g = fArr5;
            this.f4348h = iArr;
            this.f4349i = iArr2;
            this.f4350j = iArr3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
        if (r0 != r0) goto L_0x01b8;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m35042c(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p059k.p060a.C1043a.m35042c(android.view.MotionEvent):boolean");
    }

    /* renamed from: d */
    public View m35041d() {
        return this.f4359s;
    }

    /* renamed from: d */
    public boolean m35040d(int i) {
        boolean z = true;
        if (((1 << i) & this.f4351k) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m35039d(int i, int i2) {
        return m35060a(this.f4359s, i, i2);
    }

    /* renamed from: e */
    public int m35038e() {
        return this.f4355o;
    }

    /* renamed from: e */
    public final boolean m35037e(int i) {
        if (m35040d(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    /* renamed from: e */
    public boolean m35036e(int i, int i2) {
        if (this.f4360t) {
            return m35049b(i, i2, (int) this.f4352l.getXVelocity(this.f4343c), (int) this.f4352l.getYVelocity(this.f4343c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* renamed from: f */
    public int m35035f() {
        return this.f4342b;
    }

    /* renamed from: f */
    public void m35034f(int i) {
        this.f4361u.removeCallbacks(this.f4362v);
        if (this.f4341a != i) {
            this.f4341a = i;
            this.f4358r.mo35018c(i);
            if (this.f4341a == 0) {
                this.f4359s = null;
            }
        }
    }

    /* renamed from: g */
    public int m35033g() {
        return this.f4341a;
    }

    /* renamed from: g */
    public void m35032g(int i) {
        this.f4356p = i;
    }

    /* renamed from: h */
    public final void m35031h() {
        this.f4352l.computeCurrentVelocity(1000, this.f4353m);
        m35071a(m35070a(this.f4352l.getXVelocity(this.f4343c), this.f4354n, this.f4353m), m35070a(this.f4352l.getYVelocity(this.f4343c), this.f4354n, this.f4353m));
    }
}
