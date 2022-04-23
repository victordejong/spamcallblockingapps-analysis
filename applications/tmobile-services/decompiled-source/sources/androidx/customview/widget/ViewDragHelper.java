package androidx.customview.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/customview/widget/ViewDragHelper.class */
public class ViewDragHelper {

    /* renamed from: w */
    private static final Interpolator f3486w = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a */
    private int f3487a;

    /* renamed from: b */
    private int f3488b;

    /* renamed from: d */
    private float[] f3490d;

    /* renamed from: e */
    private float[] f3491e;

    /* renamed from: f */
    private float[] f3492f;

    /* renamed from: g */
    private float[] f3493g;

    /* renamed from: h */
    private int[] f3494h;

    /* renamed from: i */
    private int[] f3495i;

    /* renamed from: j */
    private int[] f3496j;

    /* renamed from: k */
    private int f3497k;

    /* renamed from: l */
    private VelocityTracker f3498l;

    /* renamed from: m */
    private float f3499m;

    /* renamed from: n */
    private float f3500n;

    /* renamed from: o */
    private int f3501o;

    /* renamed from: p */
    private int f3502p;

    /* renamed from: q */
    private OverScroller f3503q;

    /* renamed from: r */
    private final Callback f3504r;

    /* renamed from: s */
    private View f3505s;

    /* renamed from: t */
    private boolean f3506t;

    /* renamed from: u */
    private final ViewGroup f3507u;

    /* renamed from: c */
    private int f3489c = -1;

    /* renamed from: v */
    private final Runnable f3508v = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.m18724K(0);
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/customview/widget/ViewDragHelper$Callback.class */
    public static abstract class Callback {
        /* renamed from: a */
        public int mo10388a(@NonNull View view, int i, int i2) {
            return 0;
        }

        /* renamed from: b */
        public int mo10387b(@NonNull View view, int i, int i2) {
            return 0;
        }

        /* renamed from: c */
        public int m18691c(int i) {
            return i;
        }

        /* renamed from: d */
        public int mo10556d(@NonNull View view) {
            return 0;
        }

        /* renamed from: e */
        public int mo10386e(@NonNull View view) {
            return 0;
        }

        /* renamed from: f */
        public void mo16983f(int i, int i2) {
        }

        /* renamed from: g */
        public boolean mo18527g(int i) {
            return false;
        }

        /* renamed from: h */
        public void mo18526h(int i, int i2) {
        }

        /* renamed from: i */
        public void mo10555i(@NonNull View view, int i) {
        }

        /* renamed from: j */
        public void mo10385j(int i) {
        }

        /* renamed from: k */
        public void mo10384k(@NonNull View view, int i, int i2, @AbstractC0040Px int i3, @AbstractC0040Px int i4) {
        }

        /* renamed from: l */
        public void mo10383l(@NonNull View view, float f, float f2) {
        }

        /* renamed from: m */
        public abstract boolean mo10382m(@NonNull View view, int i);
    }

    private ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback != null) {
            this.f3507u = viewGroup;
            this.f3504r = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f3501o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f3488b = viewConfiguration.getScaledTouchSlop();
            this.f3499m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f3500n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f3503q = new OverScroller(context, f3486w);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    /* renamed from: D */
    private boolean m18731D(int i) {
        if (m18732C(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    /* renamed from: G */
    private void m18728G() {
        this.f3498l.computeCurrentVelocity(1000, this.f3499m);
        m18701q(m18710h(this.f3498l.getXVelocity(this.f3489c), this.f3500n, this.f3499m), m18710h(this.f3498l.getYVelocity(this.f3489c), this.f3500n, this.f3499m));
    }

    /* renamed from: H */
    private void m18727H(float f, float f2, int i) {
        int i2 = 1;
        if (!m18714d(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (m18714d(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (m18714d(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (m18714d(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.f3495i;
            iArr[i] = iArr[i] | i5;
            this.f3504r.mo16983f(i5, i);
        }
    }

    /* renamed from: I */
    private void m18726I(float f, float f2, int i) {
        m18698t(i);
        float[] fArr = this.f3490d;
        this.f3492f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f3491e;
        this.f3493g[i] = f2;
        fArr2[i] = f2;
        this.f3494h[i] = m18693y((int) f, (int) f2);
        this.f3497k |= 1 << i;
    }

    /* renamed from: J */
    private void m18725J(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m18731D(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f3492f[pointerId] = x;
                this.f3493g[pointerId] = y;
            }
        }
    }

    /* renamed from: d */
    private boolean m18714d(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.f3494h[i] & i2) == i2) {
            z = false;
            if ((this.f3502p & i2) != 0) {
                z = false;
                if ((this.f3496j[i] & i2) != i2) {
                    z = false;
                    if ((this.f3495i[i] & i2) != i2) {
                        int i3 = this.f3488b;
                        if (abs <= i3 && abs2 <= i3) {
                            z = false;
                        } else if (abs >= abs2 * 0.5f || !this.f3504r.mo18527g(i2)) {
                            z = false;
                            if ((this.f3495i[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f3488b) {
                                    z = true;
                                }
                            }
                        } else {
                            int[] iArr = this.f3496j;
                            iArr[i] = iArr[i] | i2;
                            return false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private boolean m18711g(View view, float f, float f2) {
        boolean z = false;
        boolean z2 = false;
        if (view == null) {
            return false;
        }
        boolean z3 = this.f3504r.mo10556d(view) > 0;
        boolean z4 = this.f3504r.mo10386e(view) > 0;
        if (z3 && z4) {
            int i = this.f3488b;
            if ((f * f) + (f2 * f2) > i * i) {
                z2 = true;
            }
            return z2;
        } else if (z3) {
            if (Math.abs(f) > this.f3488b) {
                z = true;
            }
            return z;
        } else {
            boolean z5 = false;
            if (z4) {
                z5 = false;
                if (Math.abs(f2) > this.f3488b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: h */
    private float m18710h(float f, float f2, float f3) {
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
    private int m18709i(int i, int i2, int i3) {
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
    private void m18708j() {
        float[] fArr = this.f3490d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f3491e, 0.0f);
            Arrays.fill(this.f3492f, 0.0f);
            Arrays.fill(this.f3493g, 0.0f);
            Arrays.fill(this.f3494h, 0);
            Arrays.fill(this.f3495i, 0);
            Arrays.fill(this.f3496j, 0);
            this.f3497k = 0;
        }
    }

    /* renamed from: k */
    private void m18707k(int i) {
        if (this.f3490d != null && m18732C(i)) {
            this.f3490d[i] = 0.0f;
            this.f3491e[i] = 0.0f;
            this.f3492f[i] = 0.0f;
            this.f3493g[i] = 0.0f;
            this.f3494h[i] = 0;
            this.f3495i[i] = 0;
            this.f3496j[i] = 0;
            this.f3497k = ((1 << i) ^ (-1)) & this.f3497k;
        }
    }

    /* renamed from: l */
    private int m18706l(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f3507u.getWidth();
        float f = width / 2;
        float r = m18700r(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (r * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: m */
    private int m18705m(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int i5 = m18709i(i3, (int) this.f3500n, (int) this.f3499m);
        int i6 = m18709i(i4, (int) this.f3500n, (int) this.f3499m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(i5);
        int abs4 = Math.abs(i6);
        int i7 = abs3 + abs4;
        int i8 = abs + abs2;
        if (i5 != 0) {
            f2 = abs3;
            f = i7;
        } else {
            f2 = abs;
            f = i8;
        }
        float f5 = f2 / f;
        if (i6 != 0) {
            f3 = abs4;
            f4 = i7;
        } else {
            f3 = abs2;
            f4 = i8;
        }
        return (int) ((m18706l(i, i5, this.f3504r.mo10556d(view)) * f5) + (m18706l(i2, i6, this.f3504r.mo10386e(view)) * (f3 / f4)));
    }

    /* renamed from: o */
    public static ViewDragHelper m18703o(@NonNull ViewGroup viewGroup, float f, @NonNull Callback callback) {
        ViewDragHelper p = m18702p(viewGroup, callback);
        p.f3488b = (int) (p.f3488b * (1.0f / f));
        return p;
    }

    /* renamed from: p */
    public static ViewDragHelper m18702p(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    /* renamed from: q */
    private void m18701q(float f, float f2) {
        this.f3506t = true;
        this.f3504r.mo10383l(this.f3505s, f, f2);
        this.f3506t = false;
        if (this.f3487a == 1) {
            m18724K(0);
        }
    }

    /* renamed from: r */
    private float m18700r(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: s */
    private void m18699s(int i, int i2, int i3, int i4) {
        int left = this.f3505s.getLeft();
        int top = this.f3505s.getTop();
        int i5 = i;
        if (i3 != 0) {
            i5 = this.f3504r.mo10388a(this.f3505s, i, i3);
            ViewCompat.m19213X(this.f3505s, i5 - left);
        }
        int i6 = i2;
        if (i4 != 0) {
            i6 = this.f3504r.mo10387b(this.f3505s, i2, i4);
            ViewCompat.m19212Y(this.f3505s, i6 - top);
        }
        if (i3 != 0 || i4 != 0) {
            this.f3504r.mo10384k(this.f3505s, i5, i6, i5 - left, i6 - top);
        }
    }

    /* renamed from: t */
    private void m18698t(int i) {
        float[] fArr = this.f3490d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            float[] fArr6 = this.f3490d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f3491e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f3492f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f3493g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f3494h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f3495i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f3496j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f3490d = fArr2;
            this.f3491e = fArr3;
            this.f3492f = fArr4;
            this.f3493g = fArr5;
            this.f3494h = iArr;
            this.f3495i = iArr2;
            this.f3496j = iArr3;
        }
    }

    /* renamed from: v */
    private boolean m18696v(int i, int i2, int i3, int i4) {
        int left = this.f3505s.getLeft();
        int top = this.f3505s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f3503q.abortAnimation();
            m18724K(0);
            return false;
        }
        this.f3503q.startScroll(left, top, i5, i6, m18705m(this.f3505s, i5, i6, i3, i4));
        m18724K(2);
        return true;
    }

    /* renamed from: y */
    private int m18693y(int i, int i2) {
        int i3 = i < this.f3507u.getLeft() + this.f3501o ? 1 : 0;
        int i4 = i3;
        if (i2 < this.f3507u.getTop() + this.f3501o) {
            i4 = i3 | 4;
        }
        int i5 = i4;
        if (i > this.f3507u.getRight() - this.f3501o) {
            i5 = i4 | 2;
        }
        int i6 = i5;
        if (i2 > this.f3507u.getBottom() - this.f3501o) {
            i6 = i5 | 8;
        }
        return i6;
    }

    /* renamed from: A */
    public int m18734A() {
        return this.f3487a;
    }

    /* renamed from: B */
    public boolean m18733B(int i, int i2) {
        return m18730E(this.f3505s, i, i2);
    }

    /* renamed from: C */
    public boolean m18732C(int i) {
        boolean z = true;
        if (((1 << i) & this.f3497k) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: E */
    public boolean m18730E(@Nullable View view, int i, int i2) {
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
    public void m18729F(@NonNull MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m18716b();
        }
        if (this.f3498l == null) {
            this.f3498l = VelocityTracker.obtain();
        }
        this.f3498l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View u = m18697u((int) x, (int) y);
            m18726I(x, y, pointerId);
            m18718Q(u, pointerId);
            int i3 = this.f3494h[pointerId];
            int i4 = this.f3502p;
            if ((i3 & i4) != 0) {
                this.f3504r.mo18526h(i3 & i4, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.f3487a == 1) {
                m18728G();
            }
            m18716b();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f3487a == 1) {
                    m18701q(0.0f, 0.0f);
                }
                m18716b();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                m18726I(x2, y2, pointerId2);
                if (this.f3487a == 0) {
                    m18718Q(m18697u((int) x2, (int) y2), pointerId2);
                    int i5 = this.f3494h[pointerId2];
                    int i6 = this.f3502p;
                    if ((i5 & i6) != 0) {
                        this.f3504r.mo18526h(i5 & i6, pointerId2);
                    }
                } else if (m18733B((int) x2, (int) y2)) {
                    m18718Q(this.f3505s, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.f3487a == 1 && pointerId3 == this.f3489c) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount) {
                            i = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i2);
                        if (pointerId4 != this.f3489c) {
                            View u2 = m18697u((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                            View view = this.f3505s;
                            if (u2 == view && m18718Q(view, pointerId4)) {
                                i = this.f3489c;
                                break;
                            }
                        }
                        i2++;
                    }
                    if (i == -1) {
                        m18728G();
                    }
                }
                m18707k(pointerId3);
            }
        } else if (this.f3487a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            for (int i7 = 0; i7 < pointerCount2; i7++) {
                int pointerId5 = motionEvent.getPointerId(i7);
                if (m18731D(pointerId5)) {
                    float x3 = motionEvent.getX(i7);
                    float y3 = motionEvent.getY(i7);
                    float f = x3 - this.f3490d[pointerId5];
                    float f2 = y3 - this.f3491e[pointerId5];
                    m18727H(f, f2, pointerId5);
                    if (this.f3487a == 1) {
                        break;
                    }
                    View u3 = m18697u((int) x3, (int) y3);
                    if (m18711g(u3, f, f2) && m18718Q(u3, pointerId5)) {
                        break;
                    }
                }
            }
            m18725J(motionEvent);
        } else if (m18731D(this.f3489c)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f3489c);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f3492f;
            int i8 = this.f3489c;
            int i9 = (int) (x4 - fArr[i8]);
            int i10 = (int) (y4 - this.f3493g[i8]);
            m18699s(this.f3505s.getLeft() + i9, this.f3505s.getTop() + i10, i9, i10);
            m18725J(motionEvent);
        }
    }

    /* renamed from: K */
    void m18724K(int i) {
        this.f3507u.removeCallbacks(this.f3508v);
        if (this.f3487a != i) {
            this.f3487a = i;
            this.f3504r.mo10385j(i);
            if (this.f3487a == 0) {
                this.f3505s = null;
            }
        }
    }

    /* renamed from: L */
    public void m18723L(int i) {
        this.f3502p = i;
    }

    /* renamed from: M */
    public void m18722M(float f) {
        this.f3500n = f;
    }

    /* renamed from: N */
    public boolean m18721N(int i, int i2) {
        if (this.f3506t) {
            return m18696v(i, i2, (int) this.f3498l.getXVelocity(this.f3489c), (int) this.f3498l.getYVelocity(this.f3489c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
        if (r0 != r0) goto L_0x01b8;
     */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m18720O(@androidx.annotation.NonNull android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.m18720O(android.view.MotionEvent):boolean");
    }

    /* renamed from: P */
    public boolean m18719P(@NonNull View view, int i, int i2) {
        this.f3505s = view;
        this.f3489c = -1;
        boolean v = m18696v(i, i2, 0, 0);
        if (!v && this.f3487a == 0 && this.f3505s != null) {
            this.f3505s = null;
        }
        return v;
    }

    /* renamed from: Q */
    boolean m18718Q(View view, int i) {
        if (view == this.f3505s && this.f3489c == i) {
            return true;
        }
        if (view == null || !this.f3504r.mo10382m(view, i)) {
            return false;
        }
        this.f3489c = i;
        m18715c(view, i);
        return true;
    }

    /* renamed from: a */
    public void m18717a() {
        m18716b();
        if (this.f3487a == 2) {
            int currX = this.f3503q.getCurrX();
            int currY = this.f3503q.getCurrY();
            this.f3503q.abortAnimation();
            int currX2 = this.f3503q.getCurrX();
            int currY2 = this.f3503q.getCurrY();
            this.f3504r.mo10384k(this.f3505s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        m18724K(0);
    }

    /* renamed from: b */
    public void m18716b() {
        this.f3489c = -1;
        m18708j();
        VelocityTracker velocityTracker = this.f3498l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3498l = null;
        }
    }

    /* renamed from: c */
    public void m18715c(@NonNull View view, int i) {
        if (view.getParent() == this.f3507u) {
            this.f3505s = view;
            this.f3489c = i;
            this.f3504r.mo10555i(view, i);
            m18724K(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f3507u + ")");
    }

    /* renamed from: e */
    public boolean m18713e(int i) {
        int length = this.f3490d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (m18712f(i, i2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public boolean m18712f(int i, int i2) {
        boolean z = false;
        boolean z2 = false;
        if (!m18732C(i2)) {
            return false;
        }
        boolean z3 = (i & 1) == 1;
        boolean z4 = (i & 2) == 2;
        float f = this.f3492f[i2] - this.f3490d[i2];
        float f2 = this.f3493g[i2] - this.f3491e[i2];
        if (z3 && z4) {
            int i3 = this.f3488b;
            if ((f * f) + (f2 * f2) > i3 * i3) {
                z2 = true;
            }
            return z2;
        } else if (z3) {
            if (Math.abs(f) > this.f3488b) {
                z = true;
            }
            return z;
        } else {
            boolean z5 = false;
            if (z4) {
                z5 = false;
                if (Math.abs(f2) > this.f3488b) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    /* renamed from: n */
    public boolean m18704n(boolean z) {
        boolean z2 = false;
        if (this.f3487a == 2) {
            boolean computeScrollOffset = this.f3503q.computeScrollOffset();
            int currX = this.f3503q.getCurrX();
            int currY = this.f3503q.getCurrY();
            int left = currX - this.f3505s.getLeft();
            int top = currY - this.f3505s.getTop();
            if (left != 0) {
                ViewCompat.m19213X(this.f3505s, left);
            }
            if (top != 0) {
                ViewCompat.m19212Y(this.f3505s, top);
            }
            if (!(left == 0 && top == 0)) {
                this.f3504r.mo10384k(this.f3505s, currX, currY, left, top);
            }
            boolean z3 = computeScrollOffset;
            if (computeScrollOffset) {
                z3 = computeScrollOffset;
                if (currX == this.f3503q.getFinalX()) {
                    z3 = computeScrollOffset;
                    if (currY == this.f3503q.getFinalY()) {
                        this.f3503q.abortAnimation();
                        z3 = false;
                    }
                }
            }
            if (!z3) {
                if (z) {
                    this.f3507u.post(this.f3508v);
                } else {
                    m18724K(0);
                }
            }
        }
        if (this.f3487a == 2) {
            z2 = true;
        }
        return z2;
    }

    @Nullable
    /* renamed from: u */
    public View m18697u(int i, int i2) {
        for (int childCount = this.f3507u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.f3507u;
            this.f3504r.m18691c(childCount);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: w */
    public View m18695w() {
        return this.f3505s;
    }

    @AbstractC0040Px
    /* renamed from: x */
    public int m18694x() {
        return this.f3501o;
    }

    @AbstractC0040Px
    /* renamed from: z */
    public int m18692z() {
        return this.f3488b;
    }
}
