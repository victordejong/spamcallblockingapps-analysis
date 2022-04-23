package androidx.customview.a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/customview/a/c.class */
public final class c {
    private static final Interpolator v = new Interpolator() { // from class: androidx.customview.a.c.1
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public int f2082a;

    /* renamed from: b  reason: collision with root package name */
    public int f2083b;

    /* renamed from: c  reason: collision with root package name */
    public float[] f2084c;

    /* renamed from: d  reason: collision with root package name */
    public float[] f2085d;
    public float[] e;
    public float[] f;
    public float g;
    public int h;
    public int i;
    public View j;
    private int[] l;
    private int[] m;
    private int[] n;
    private int o;
    private VelocityTracker p;
    private float q;
    private OverScroller r;
    private final a s;
    private boolean t;
    private final ViewGroup u;
    private int k = -1;
    private final Runnable w = new Runnable() { // from class: androidx.customview.a.c.2
        @Override // java.lang.Runnable
        public final void run() {
            c.this.b(0);
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/customview/a/c$a.class */
    public static abstract class a {
        public int a(View view) {
            return 0;
        }

        public void a() {
        }

        public void a(int i) {
        }

        public void a(int i, int i2) {
        }

        public void a(View view, float f, float f2) {
        }

        public void a(View view, int i) {
        }

        public void a(View view, int i, int i2) {
        }

        public int b(View view) {
            return 0;
        }

        public abstract boolean b(View view, int i);

        public int c(View view, int i) {
            return 0;
        }

        public int d(View view, int i) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }
    }

    private c(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (aVar != null) {
            this.u = viewGroup;
            this.s = aVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.h = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f2083b = viewConfiguration.getScaledTouchSlop();
            this.q = viewConfiguration.getScaledMaximumFlingVelocity();
            this.g = viewConfiguration.getScaledMinimumFlingVelocity();
            this.r = new OverScroller(context, v);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    private static float a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private static float a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = f;
        if (abs > f3) {
            if (f > BitmapDescriptorFactory.HUE_RED) {
                return f3;
            }
            f4 = -f3;
        }
        return f4;
    }

    private int a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        float f = width / 2;
        float a2 = a(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (a2 * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int b2 = b(i3, (int) this.g, (int) this.q);
        int b3 = b(i4, (int) this.g, (int) this.q);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(b2);
        int abs4 = Math.abs(b3);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (b2 != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (b3 != 0) {
            f3 = abs4;
            f4 = i5;
        } else {
            f3 = abs2;
            f4 = i6;
        }
        return (int) ((a(i, b2, this.s.a(view)) * f5) + (a(i2, b3, this.s.b(view)) * (f3 / f4)));
    }

    public static c a(ViewGroup viewGroup, float f, a aVar) {
        c a2 = a(viewGroup, aVar);
        a2.f2083b = (int) (a2.f2083b * (1.0f / f));
        return a2;
    }

    public static c a(ViewGroup viewGroup, a aVar) {
        return new c(viewGroup.getContext(), viewGroup, aVar);
    }

    private void a(float f, float f2) {
        this.t = true;
        this.s.a(this.j, f, f2);
        this.t = false;
        if (this.f2082a == 1) {
            b(0);
        }
    }

    private void a(float f, float f2, int i) {
        float[] fArr = this.f2084c;
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
                float[] fArr6 = this.f2085d;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.e;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.l;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.m;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.n;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f2084c = fArr2;
            this.f2085d = fArr3;
            this.e = fArr4;
            this.f = fArr5;
            this.l = iArr;
            this.m = iArr2;
            this.n = iArr3;
        }
        float[] fArr9 = this.f2084c;
        this.e[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f2085d;
        this.f[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.l;
        int i4 = (int) f;
        int i5 = (int) f2;
        if (i4 < this.u.getLeft() + this.h) {
            i2 = 1;
        }
        int i6 = i2;
        if (i5 < this.u.getTop() + this.h) {
            i6 = i2 | 4;
        }
        int i7 = i6;
        if (i4 > this.u.getRight() - this.h) {
            i7 = i6 | 2;
        }
        int i8 = i7;
        if (i5 > this.u.getBottom() - this.h) {
            i8 = i7 | 8;
        }
        iArr7[i] = i8;
        this.o |= 1 << i;
    }

    private boolean a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.l[i] & i2) != i2 || (this.i & i2) == 0 || (this.n[i] & i2) == i2) {
            return false;
        }
        int[] iArr = this.m;
        if ((iArr[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f2083b;
        return (abs > ((float) i3) || abs2 > ((float) i3)) && (iArr[i] & i2) == 0 && abs > ((float) i3);
    }

    private boolean a(int i, int i2, int i3, int i4) {
        int left = this.j.getLeft();
        int top = this.j.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.r.abortAnimation();
            b(0);
            return false;
        }
        this.r.startScroll(left, top, i5, i6, a(this.j, i5, i6, i3, i4));
        b(2);
        return true;
    }

    private boolean a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.s.a(view) > 0;
        boolean z2 = this.s.b(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f2083b) : z2 && Math.abs(f2) > ((float) this.f2083b);
        }
        int i = this.f2083b;
        return (f * f) + (f2 * f2) > ((float) (i * i));
    }

    private static int b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        int i4 = i;
        if (abs > i3) {
            if (i > 0) {
                return i3;
            }
            i4 = -i3;
        }
        return i4;
    }

    private void b(float f, float f2, int i) {
        boolean a2 = a(f, f2, i, 1);
        boolean z = a2;
        if (a(f2, f, i, 4)) {
            z = a2 | true;
        }
        boolean z2 = z;
        if (a(f, f2, i, 2)) {
            z2 = z | true;
        }
        boolean z3 = z2;
        if (a(f2, f, i, 8)) {
            z3 = z2 | true;
        }
        if (z3) {
            int[] iArr = this.m;
            int i2 = iArr[i];
            int i3 = z3 ? 1 : 0;
            char c2 = z3 ? 1 : 0;
            iArr[i] = i2 | i3;
            a aVar = this.s;
            int i4 = z3 ? 1 : 0;
            int i5 = z3 ? 1 : 0;
            aVar.a(i4, i);
        }
    }

    private boolean b(View view, int i) {
        if (view == this.j && this.k == i) {
            return true;
        }
        if (view == null || !this.s.b(view, i)) {
            return false;
        }
        this.k = i;
        a(view, i);
        return true;
    }

    public static boolean b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    private void c(int i) {
        if (this.f2084c != null && a(i)) {
            this.f2084c[i] = 0.0f;
            this.f2085d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.l[i] = 0;
            this.m[i] = 0;
            this.n[i] = 0;
            this.o = ((1 << i) ^ (-1)) & this.o;
        }
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (d(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.e[pointerId] = x;
                this.f[pointerId] = y;
            }
        }
    }

    private void d() {
        this.p.computeCurrentVelocity(1000, this.q);
        a(a(this.p.getXVelocity(this.k), this.g, this.q), a(this.p.getYVelocity(this.k), this.g, this.q));
    }

    private boolean d(int i) {
        if (a(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void a() {
        this.k = -1;
        float[] fArr = this.f2084c;
        if (fArr != null) {
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f2085d, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.e, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.l, 0);
            Arrays.fill(this.m, 0);
            Arrays.fill(this.n, 0);
            this.o = 0;
        }
        VelocityTracker velocityTracker = this.p;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.p = null;
        }
    }

    public final void a(View view, int i) {
        if (view.getParent() == this.u) {
            this.j = view;
            this.k = i;
            this.s.a(view, i);
            b(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
    }

    public final boolean a(int i) {
        return ((1 << i) & this.o) != 0;
    }

    public final boolean a(int i, int i2) {
        if (this.t) {
            return a(i, i2, (int) this.p.getXVelocity(this.k), (int) this.p.getYVelocity(this.k));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x018c, code lost:
        if (r0 != r0) goto L_0x01a0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.a.c.a(android.view.MotionEvent):boolean");
    }

    public final boolean a(View view, int i, int i2) {
        this.j = view;
        this.k = -1;
        boolean a2 = a(i, i2, 0, 0);
        if (!a2 && this.f2082a == 0 && this.j != null) {
            this.j = null;
        }
        return a2;
    }

    public final View b(int i, int i2) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.s.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final void b() {
        a();
        if (this.f2082a == 2) {
            this.r.getCurrX();
            this.r.getCurrY();
            this.r.abortAnimation();
            this.s.a(this.j, this.r.getCurrX(), this.r.getCurrY());
        }
        b(0);
    }

    final void b(int i) {
        this.u.removeCallbacks(this.w);
        if (this.f2082a != i) {
            this.f2082a = i;
            this.s.a(i);
            if (this.f2082a == 0) {
                this.j = null;
            }
        }
    }

    public final void b(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.p == null) {
            this.p = VelocityTracker.obtain();
        }
        this.p.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View b2 = b((int) x, (int) y);
            a(x, y, pointerId);
            b(b2, pointerId);
            if ((this.l[pointerId] & this.i) != 0) {
                this.s.a();
            }
        } else if (actionMasked == 1) {
            if (this.f2082a == 1) {
                d();
            }
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f2082a == 1) {
                    a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                a(x2, y2, pointerId2);
                if (this.f2082a == 0) {
                    b(b((int) x2, (int) y2), pointerId2);
                    if ((this.l[pointerId2] & this.i) != 0) {
                        this.s.a();
                        return;
                    }
                    return;
                }
                if (b(this.j, (int) x2, (int) y2)) {
                    b(this.j, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.f2082a == 1 && pointerId3 == this.k) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount) {
                            i = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i2);
                        if (pointerId4 != this.k) {
                            View b3 = b((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                            View view = this.j;
                            if (b3 == view && b(view, pointerId4)) {
                                i = this.k;
                                break;
                            }
                        }
                        i2++;
                    }
                    if (i == -1) {
                        d();
                    }
                }
                c(pointerId3);
            }
        } else if (this.f2082a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            for (int i3 = 0; i3 < pointerCount2; i3++) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (d(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f = x3 - this.f2084c[pointerId5];
                    float f2 = y3 - this.f2085d[pointerId5];
                    b(f, f2, pointerId5);
                    if (this.f2082a == 1) {
                        break;
                    }
                    View b4 = b((int) x3, (int) y3);
                    if (a(b4, f, f2) && b(b4, pointerId5)) {
                        break;
                    }
                }
            }
            c(motionEvent);
        } else if (d(this.k)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.k);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.e;
            int i4 = this.k;
            int i5 = (int) (x4 - fArr[i4]);
            int i6 = (int) (y4 - this.f[i4]);
            int left = this.j.getLeft() + i5;
            int top = this.j.getTop() + i6;
            int left2 = this.j.getLeft();
            int top2 = this.j.getTop();
            int i7 = left;
            if (i5 != 0) {
                i7 = this.s.c(this.j, left);
                v.f(this.j, i7 - left2);
            }
            int i8 = top;
            if (i6 != 0) {
                i8 = this.s.d(this.j, top);
                v.e(this.j, i8 - top2);
            }
            if (!(i5 == 0 && i6 == 0)) {
                this.s.a(this.j, i7, i8);
            }
            c(motionEvent);
        }
    }

    public final boolean c() {
        if (this.f2082a == 2) {
            boolean computeScrollOffset = this.r.computeScrollOffset();
            int currX = this.r.getCurrX();
            int currY = this.r.getCurrY();
            int left = currX - this.j.getLeft();
            int top = currY - this.j.getTop();
            if (left != 0) {
                v.f(this.j, left);
            }
            if (top != 0) {
                v.e(this.j, top);
            }
            if (!(left == 0 && top == 0)) {
                this.s.a(this.j, currX, currY);
            }
            boolean z = computeScrollOffset;
            if (computeScrollOffset) {
                z = computeScrollOffset;
                if (currX == this.r.getFinalX()) {
                    z = computeScrollOffset;
                    if (currY == this.r.getFinalY()) {
                        this.r.abortAnimation();
                        z = false;
                    }
                }
            }
            if (!z) {
                this.u.post(this.w);
            }
        }
        return this.f2082a == 2;
    }
}
