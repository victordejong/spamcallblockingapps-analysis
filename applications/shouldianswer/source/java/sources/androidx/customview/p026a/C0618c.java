package androidx.customview.p026a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.p023g.C0552u;
import com.google.android.flexbox.FlexItem;
import java.util.Arrays;
/* renamed from: androidx.customview.a.c */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/c.class */
public class C0618c {

    /* renamed from: v */
    private static final Interpolator f2050v = new Interpolator() { // from class: androidx.customview.a.c.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a */
    private int f2051a;

    /* renamed from: b */
    private int f2052b;

    /* renamed from: d */
    private float[] f2054d;

    /* renamed from: e */
    private float[] f2055e;

    /* renamed from: f */
    private float[] f2056f;

    /* renamed from: g */
    private float[] f2057g;

    /* renamed from: h */
    private int[] f2058h;

    /* renamed from: i */
    private int[] f2059i;

    /* renamed from: j */
    private int[] f2060j;

    /* renamed from: k */
    private int f2061k;

    /* renamed from: l */
    private VelocityTracker f2062l;

    /* renamed from: m */
    private float f2063m;

    /* renamed from: n */
    private float f2064n;

    /* renamed from: o */
    private int f2065o;

    /* renamed from: p */
    private int f2066p;

    /* renamed from: q */
    private OverScroller f2067q;

    /* renamed from: r */
    private final AbstractC0621a f2068r;

    /* renamed from: s */
    private View f2069s;

    /* renamed from: t */
    private boolean f2070t;

    /* renamed from: u */
    private final ViewGroup f2071u;

    /* renamed from: c */
    private int f2053c = -1;

    /* renamed from: w */
    private final Runnable f2072w = new Runnable() { // from class: androidx.customview.a.c.2
        @Override // java.lang.Runnable
        public void run() {
            C0618c.this.m5903c(0);
        }
    };

    /* renamed from: androidx.customview.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/c$a.class */
    public static abstract class AbstractC0621a {
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(View view, int i);
    }

    private C0618c(Context context, ViewGroup viewGroup, AbstractC0621a abstractC0621a) {
        if (viewGroup != null) {
            if (abstractC0621a == null) {
                throw new IllegalArgumentException("Callback may not be null");
            }
            this.f2071u = viewGroup;
            this.f2068r = abstractC0621a;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f2065o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f2052b = viewConfiguration.getScaledTouchSlop();
            this.f2063m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f2064n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f2067q = new OverScroller(context, f2050v);
            return;
        }
        throw new IllegalArgumentException("Parent view may not be null");
    }

    /* renamed from: a */
    private float m5929a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= FlexItem.FLEX_GROW_DEFAULT) {
            f3 = -f3;
        }
        return f3;
    }

    /* renamed from: a */
    private int m5924a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f2071u.getWidth();
        float f = width / 2;
        float m5913b = m5913b(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (m5913b * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: a */
    private int m5918a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int m5909b = m5909b(i3, (int) this.f2064n, (int) this.f2063m);
        int m5909b2 = m5909b(i4, (int) this.f2064n, (int) this.f2063m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(m5909b);
        int abs4 = Math.abs(m5909b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (m5909b != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (m5909b2 != 0) {
            f4 = abs4;
            f3 = i5;
        } else {
            f4 = abs2;
            f3 = i6;
        }
        return (int) ((m5924a(i, m5909b, this.f2068r.getViewHorizontalDragRange(view)) * f5) + (m5924a(i2, m5909b2, this.f2068r.getViewVerticalDragRange(view)) * (f4 / f3)));
    }

    /* renamed from: a */
    public static C0618c m5917a(ViewGroup viewGroup, float f, AbstractC0621a abstractC0621a) {
        C0618c m5916a = m5916a(viewGroup, abstractC0621a);
        m5916a.f2052b = (int) (m5916a.f2052b * (1.0f / f));
        return m5916a;
    }

    /* renamed from: a */
    public static C0618c m5916a(ViewGroup viewGroup, AbstractC0621a abstractC0621a) {
        return new C0618c(viewGroup.getContext(), viewGroup, abstractC0621a);
    }

    /* renamed from: a */
    private void m5930a(float f, float f2) {
        this.f2070t = true;
        this.f2068r.onViewReleased(this.f2069s, f, f2);
        this.f2070t = false;
        if (this.f2051a == 1) {
            m5903c(0);
        }
    }

    /* renamed from: a */
    private void m5928a(float f, float f2, int i) {
        m5893f(i);
        float[] fArr = this.f2054d;
        this.f2056f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f2055e;
        this.f2057g[i] = f2;
        fArr2[i] = f2;
        this.f2058h[i] = m5895e((int) f, (int) f2);
        this.f2061k |= 1 << i;
    }

    /* renamed from: a */
    private boolean m5927a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f2058h[i] & i2) == i2) {
            z = false;
            if ((this.f2066p & i2) != 0) {
                z = false;
                if ((this.f2060j[i] & i2) != i2) {
                    z = false;
                    if ((this.f2059i[i] & i2) != i2) {
                        int i3 = this.f2052b;
                        if (abs <= i3 && abs2 <= i3) {
                            z = false;
                        } else if (abs < abs2 * 0.5f && this.f2068r.onEdgeLock(i2)) {
                            int[] iArr = this.f2060j;
                            iArr[i] = iArr[i] | i2;
                            return false;
                        } else {
                            z = false;
                            if ((this.f2059i[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f2052b) {
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

    /* renamed from: a */
    private boolean m5923a(int i, int i2, int i3, int i4) {
        int left = this.f2069s.getLeft();
        int top = this.f2069s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f2067q.abortAnimation();
            m5903c(0);
            return false;
        }
        this.f2067q.startScroll(left, top, i5, i6, m5918a(this.f2069s, i5, i6, i3, i4));
        m5903c(2);
        return true;
    }

    /* renamed from: a */
    private boolean m5921a(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.f2068r.getViewHorizontalDragRange(view) > 0;
        boolean z3 = this.f2068r.getViewVerticalDragRange(view) > 0;
        if (z2 && z3) {
            int i = this.f2052b;
            if ((f * f) + (f2 * f2) > i * i) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.f2052b) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.f2052b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: b */
    private float m5913b(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: b */
    private int m5909b(int i, int i2, int i3) {
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

    /* renamed from: b */
    private void m5912b(float f, float f2, int i) {
        int i2 = 1;
        if (!m5927a(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (m5927a(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (m5927a(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (m5927a(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.f2059i;
            iArr[i] = iArr[i] | i5;
            this.f2068r.onEdgeDragStarted(i5, i);
        }
    }

    /* renamed from: b */
    private void m5908b(int i, int i2, int i3, int i4) {
        int left = this.f2069s.getLeft();
        int top = this.f2069s.getTop();
        int i5 = i;
        if (i3 != 0) {
            i5 = this.f2068r.clampViewPositionHorizontal(this.f2069s, i, i3);
            C0552u.m6244f(this.f2069s, i5 - left);
        }
        int i6 = i2;
        if (i4 != 0) {
            i6 = this.f2068r.clampViewPositionVertical(this.f2069s, i2, i4);
            C0552u.m6246e(this.f2069s, i6 - top);
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f2068r.onViewPositionChanged(this.f2069s, i5, i6, i5 - left, i6 - top);
    }

    /* renamed from: c */
    private void m5901c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m5891g(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f2056f[pointerId] = x;
                this.f2057g[pointerId] = y;
            }
        }
    }

    /* renamed from: e */
    private int m5895e(int i, int i2) {
        int i3 = i < this.f2071u.getLeft() + this.f2065o ? 1 : 0;
        int i4 = i3;
        if (i2 < this.f2071u.getTop() + this.f2065o) {
            i4 = i3 | 4;
        }
        int i5 = i4;
        if (i > this.f2071u.getRight() - this.f2065o) {
            i5 = i4 | 2;
        }
        int i6 = i5;
        if (i2 > this.f2071u.getBottom() - this.f2065o) {
            i6 = i5 | 8;
        }
        return i6;
    }

    /* renamed from: e */
    private void m5896e(int i) {
        if (this.f2054d == null || !m5911b(i)) {
            return;
        }
        this.f2054d[i] = 0.0f;
        this.f2055e[i] = 0.0f;
        this.f2056f[i] = 0.0f;
        this.f2057g[i] = 0.0f;
        this.f2058h[i] = 0;
        this.f2059i[i] = 0;
        this.f2060j[i] = 0;
        this.f2061k = ((1 << i) ^ (-1)) & this.f2061k;
    }

    /* renamed from: f */
    private void m5894f() {
        float[] fArr = this.f2054d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, (float) FlexItem.FLEX_GROW_DEFAULT);
        Arrays.fill(this.f2055e, (float) FlexItem.FLEX_GROW_DEFAULT);
        Arrays.fill(this.f2056f, (float) FlexItem.FLEX_GROW_DEFAULT);
        Arrays.fill(this.f2057g, (float) FlexItem.FLEX_GROW_DEFAULT);
        Arrays.fill(this.f2058h, 0);
        Arrays.fill(this.f2059i, 0);
        Arrays.fill(this.f2060j, 0);
        this.f2061k = 0;
    }

    /* renamed from: f */
    private void m5893f(int i) {
        float[] fArr = this.f2054d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            float[] fArr6 = this.f2054d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f2055e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f2056f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f2057g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f2058h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f2059i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f2060j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f2054d = fArr2;
            this.f2055e = fArr3;
            this.f2056f = fArr4;
            this.f2057g = fArr5;
            this.f2058h = iArr;
            this.f2059i = iArr2;
            this.f2060j = iArr3;
        }
    }

    /* renamed from: g */
    private void m5892g() {
        this.f2062l.computeCurrentVelocity(1000, this.f2063m);
        m5930a(m5929a(this.f2062l.getXVelocity(this.f2053c), this.f2064n, this.f2063m), m5929a(this.f2062l.getYVelocity(this.f2053c), this.f2064n, this.f2063m));
    }

    /* renamed from: g */
    private boolean m5891g(int i) {
        if (!m5911b(i)) {
            Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public int m5932a() {
        return this.f2051a;
    }

    /* renamed from: a */
    public void m5931a(float f) {
        this.f2064n = f;
    }

    /* renamed from: a */
    public void m5926a(int i) {
        this.f2066p = i;
    }

    /* renamed from: a */
    public void m5920a(View view, int i) {
        if (view.getParent() == this.f2071u) {
            this.f2069s = view;
            this.f2053c = i;
            this.f2068r.onViewCaptured(view, i);
            m5903c(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f2071u + ")");
    }

    /* renamed from: a */
    public boolean m5925a(int i, int i2) {
        if (this.f2070t) {
            return m5923a(i, i2, (int) this.f2062l.getXVelocity(this.f2053c), (int) this.f2062l.getYVelocity(this.f2053c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
        if (r0 != r0) goto L60;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5922a(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.p026a.C0618c.m5922a(android.view.MotionEvent):boolean");
    }

    /* renamed from: a */
    public boolean m5919a(View view, int i, int i2) {
        this.f2069s = view;
        this.f2053c = -1;
        boolean m5923a = m5923a(i, i2, 0, 0);
        if (!m5923a && this.f2051a == 0 && this.f2069s != null) {
            this.f2069s = null;
        }
        return m5923a;
    }

    /* renamed from: a */
    public boolean m5915a(boolean z) {
        if (this.f2051a == 2) {
            boolean computeScrollOffset = this.f2067q.computeScrollOffset();
            int currX = this.f2067q.getCurrX();
            int currY = this.f2067q.getCurrY();
            int left = currX - this.f2069s.getLeft();
            int top = currY - this.f2069s.getTop();
            if (left != 0) {
                C0552u.m6244f(this.f2069s, left);
            }
            if (top != 0) {
                C0552u.m6246e(this.f2069s, top);
            }
            if (left != 0 || top != 0) {
                this.f2068r.onViewPositionChanged(this.f2069s, currX, currY, left, top);
            }
            boolean z2 = computeScrollOffset;
            if (computeScrollOffset) {
                z2 = computeScrollOffset;
                if (currX == this.f2067q.getFinalX()) {
                    z2 = computeScrollOffset;
                    if (currY == this.f2067q.getFinalY()) {
                        this.f2067q.abortAnimation();
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                if (z) {
                    this.f2071u.post(this.f2072w);
                } else {
                    m5903c(0);
                }
            }
        }
        boolean z3 = false;
        if (this.f2051a == 2) {
            z3 = true;
        }
        return z3;
    }

    /* renamed from: b */
    public int m5914b() {
        return this.f2065o;
    }

    /* renamed from: b */
    public void m5907b(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m5897e();
        }
        if (this.f2062l == null) {
            this.f2062l = VelocityTracker.obtain();
        }
        this.f2062l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m5898d = m5898d((int) x, (int) y);
            m5928a(x, y, pointerId);
            m5906b(m5898d, pointerId);
            int i3 = this.f2058h[pointerId];
            int i4 = this.f2066p;
            if ((i3 & i4) == 0) {
                return;
            }
            this.f2068r.onEdgeTouched(i3 & i4, pointerId);
        } else if (actionMasked == 1) {
            if (this.f2051a == 1) {
                m5892g();
            }
            m5897e();
        } else if (actionMasked == 2) {
            if (this.f2051a == 1) {
                if (!m5891g(this.f2053c)) {
                    return;
                }
                int findPointerIndex = motionEvent.findPointerIndex(this.f2053c);
                float x2 = motionEvent.getX(findPointerIndex);
                float y2 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f2056f;
                int i5 = this.f2053c;
                int i6 = (int) (x2 - fArr[i5]);
                int i7 = (int) (y2 - this.f2057g[i5]);
                m5908b(this.f2069s.getLeft() + i6, this.f2069s.getTop() + i7, i6, i7);
                m5901c(motionEvent);
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            for (int i8 = 0; i8 < pointerCount; i8++) {
                int pointerId2 = motionEvent.getPointerId(i8);
                if (m5891g(pointerId2)) {
                    float x3 = motionEvent.getX(i8);
                    float y3 = motionEvent.getY(i8);
                    float f = x3 - this.f2054d[pointerId2];
                    float f2 = y3 - this.f2055e[pointerId2];
                    m5912b(f, f2, pointerId2);
                    if (this.f2051a == 1) {
                        break;
                    }
                    View m5898d2 = m5898d((int) x3, (int) y3);
                    if (m5921a(m5898d2, f, f2) && m5906b(m5898d2, pointerId2)) {
                        break;
                    }
                }
            }
            m5901c(motionEvent);
        } else if (actionMasked == 3) {
            if (this.f2051a == 1) {
                m5930a(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
            }
            m5897e();
        } else if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m5928a(x4, y4, pointerId3);
            if (this.f2051a != 0) {
                if (!m5902c((int) x4, (int) y4)) {
                    return;
                }
                m5906b(this.f2069s, pointerId3);
                return;
            }
            m5906b(m5898d((int) x4, (int) y4), pointerId3);
            int i9 = this.f2058h[pointerId3];
            int i10 = this.f2066p;
            if ((i9 & i10) == 0) {
                return;
            }
            this.f2068r.onEdgeTouched(i9 & i10, pointerId3);
        } else if (actionMasked == 6) {
            int pointerId4 = motionEvent.getPointerId(actionIndex);
            if (this.f2051a == 1 && pointerId4 == this.f2053c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount2) {
                        i = -1;
                        break;
                    }
                    int pointerId5 = motionEvent.getPointerId(i2);
                    if (pointerId5 != this.f2053c) {
                        View m5898d3 = m5898d((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view = this.f2069s;
                        if (m5898d3 == view && m5906b(view, pointerId5)) {
                            i = this.f2053c;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    m5892g();
                }
            }
            m5896e(pointerId4);
        }
    }

    /* renamed from: b */
    public boolean m5911b(int i) {
        boolean z = true;
        if (((1 << i) & this.f2061k) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m5910b(int i, int i2) {
        boolean z = false;
        if (!m5911b(i2)) {
            return false;
        }
        boolean z2 = (i & 1) == 1;
        boolean z3 = (i & 2) == 2;
        float f = this.f2056f[i2] - this.f2054d[i2];
        float f2 = this.f2057g[i2] - this.f2055e[i2];
        if (z2 && z3) {
            int i3 = this.f2052b;
            if ((f * f) + (f2 * f2) > i3 * i3) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.f2052b) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.f2052b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: b */
    boolean m5906b(View view, int i) {
        if (view == this.f2069s && this.f2053c == i) {
            return true;
        }
        if (view == null || !this.f2068r.tryCaptureView(view, i)) {
            return false;
        }
        this.f2053c = i;
        m5920a(view, i);
        return true;
    }

    /* renamed from: b */
    public boolean m5905b(View view, int i, int i2) {
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

    /* renamed from: c */
    public View m5904c() {
        return this.f2069s;
    }

    /* renamed from: c */
    void m5903c(int i) {
        this.f2071u.removeCallbacks(this.f2072w);
        if (this.f2051a != i) {
            this.f2051a = i;
            this.f2068r.onViewDragStateChanged(i);
            if (this.f2051a != 0) {
                return;
            }
            this.f2069s = null;
        }
    }

    /* renamed from: c */
    public boolean m5902c(int i, int i2) {
        return m5905b(this.f2069s, i, i2);
    }

    /* renamed from: d */
    public int m5900d() {
        return this.f2052b;
    }

    /* renamed from: d */
    public View m5898d(int i, int i2) {
        for (int childCount = this.f2071u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f2071u.getChildAt(this.f2068r.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: d */
    public boolean m5899d(int i) {
        int length = this.f2054d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (m5910b(i, i2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public void m5897e() {
        this.f2053c = -1;
        m5894f();
        VelocityTracker velocityTracker = this.f2062l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2062l = null;
        }
    }
}
