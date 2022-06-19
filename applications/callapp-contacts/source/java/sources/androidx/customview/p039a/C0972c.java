package androidx.customview.p039a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* renamed from: androidx.customview.a.c */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/c.class */
public final class C0972c {

    /* renamed from: v */
    private static final Interpolator f3896v = new Interpolator() { // from class: androidx.customview.a.c.1
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a */
    public int f3897a;

    /* renamed from: b */
    public int f3898b;

    /* renamed from: c */
    public float[] f3899c;

    /* renamed from: d */
    public float[] f3900d;

    /* renamed from: e */
    public float[] f3901e;

    /* renamed from: f */
    public float[] f3902f;

    /* renamed from: g */
    public float f3903g;

    /* renamed from: h */
    public int f3904h;

    /* renamed from: i */
    public int f3905i;

    /* renamed from: j */
    public View f3906j;

    /* renamed from: l */
    private int[] f3908l;

    /* renamed from: m */
    private int[] f3909m;

    /* renamed from: n */
    private int[] f3910n;

    /* renamed from: o */
    private int f3911o;

    /* renamed from: p */
    private VelocityTracker f3912p;

    /* renamed from: q */
    private float f3913q;

    /* renamed from: r */
    private OverScroller f3914r;

    /* renamed from: s */
    private final AbstractC0975a f3915s;

    /* renamed from: t */
    private boolean f3916t;

    /* renamed from: u */
    private final ViewGroup f3917u;

    /* renamed from: k */
    private int f3907k = -1;

    /* renamed from: w */
    private final Runnable f3918w = new Runnable() { // from class: androidx.customview.a.c.2
        @Override // java.lang.Runnable
        public final void run() {
            C0972c.this.m43891b(0);
        }
    };

    /* renamed from: androidx.customview.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/c$a.class */
    public static abstract class AbstractC0975a {
        /* renamed from: a */
        public int mo11217a(View view) {
            return 0;
        }

        /* renamed from: a */
        public void mo43841a() {
        }

        /* renamed from: a */
        public void mo11096a(int i) {
        }

        /* renamed from: a */
        public void mo39915a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo11095a(View view, float f, float f2) {
        }

        /* renamed from: a */
        public void mo11216a(View view, int i) {
        }

        /* renamed from: a */
        public void mo11094a(View view, int i, int i2) {
        }

        /* renamed from: b */
        public int mo11093b(View view) {
            return 0;
        }

        /* renamed from: b */
        public abstract boolean mo11092b(View view, int i);

        /* renamed from: c */
        public int mo11091c(View view, int i) {
            return 0;
        }

        /* renamed from: d */
        public int mo11090d(View view, int i) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }
    }

    private C0972c(Context context, ViewGroup viewGroup, AbstractC0975a abstractC0975a) {
        if (viewGroup != null) {
            if (abstractC0975a == null) {
                throw new IllegalArgumentException("Callback may not be null");
            }
            this.f3917u = viewGroup;
            this.f3915s = abstractC0975a;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f3904h = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f3898b = viewConfiguration.getScaledTouchSlop();
            this.f3913q = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f3903g = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f3914r = new OverScroller(context, f3896v);
            return;
        }
        throw new IllegalArgumentException("Parent view may not be null");
    }

    /* renamed from: a */
    private static float m43909a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    private static float m43907a(float f, float f2, float f3) {
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

    /* renamed from: a */
    private int m43902a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f3917u.getWidth();
        float f = width / 2;
        float m43909a = m43909a(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (m43909a * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: a */
    private int m43896a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int m43889b = m43889b(i3, (int) this.f3903g, (int) this.f3913q);
        int m43889b2 = m43889b(i4, (int) this.f3903g, (int) this.f3913q);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(m43889b);
        int abs4 = Math.abs(m43889b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (m43889b != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (m43889b2 != 0) {
            f3 = abs4;
            f4 = i5;
        } else {
            f3 = abs2;
            f4 = i6;
        }
        return (int) ((m43902a(i, m43889b, this.f3915s.mo11217a(view)) * f5) + (m43902a(i2, m43889b2, this.f3915s.mo11093b(view)) * (f3 / f4)));
    }

    /* renamed from: a */
    public static C0972c m43895a(ViewGroup viewGroup, float f, AbstractC0975a abstractC0975a) {
        C0972c m43894a = m43894a(viewGroup, abstractC0975a);
        m43894a.f3898b = (int) (m43894a.f3898b * (1.0f / f));
        return m43894a;
    }

    /* renamed from: a */
    public static C0972c m43894a(ViewGroup viewGroup, AbstractC0975a abstractC0975a) {
        return new C0972c(viewGroup.getContext(), viewGroup, abstractC0975a);
    }

    /* renamed from: a */
    private void m43908a(float f, float f2) {
        this.f3916t = true;
        this.f3915s.mo11095a(this.f3906j, f, f2);
        this.f3916t = false;
        if (this.f3897a == 1) {
            m43891b(0);
        }
    }

    /* renamed from: a */
    private void m43906a(float f, float f2, int i) {
        float[] fArr = this.f3899c;
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
                float[] fArr6 = this.f3900d;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f3901e;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f3902f;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f3908l;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f3909m;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f3910n;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f3899c = fArr2;
            this.f3900d = fArr3;
            this.f3901e = fArr4;
            this.f3902f = fArr5;
            this.f3908l = iArr;
            this.f3909m = iArr2;
            this.f3910n = iArr3;
        }
        float[] fArr9 = this.f3899c;
        this.f3901e[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.f3900d;
        this.f3902f[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.f3908l;
        int i4 = (int) f;
        int i5 = (int) f2;
        if (i4 < this.f3917u.getLeft() + this.f3904h) {
            i2 = 1;
        }
        int i6 = i2;
        if (i5 < this.f3917u.getTop() + this.f3904h) {
            i6 = i2 | 4;
        }
        int i7 = i6;
        if (i4 > this.f3917u.getRight() - this.f3904h) {
            i7 = i6 | 2;
        }
        int i8 = i7;
        if (i5 > this.f3917u.getBottom() - this.f3904h) {
            i8 = i7 | 8;
        }
        iArr7[i] = i8;
        this.f3911o |= 1 << i;
    }

    /* renamed from: a */
    private boolean m43905a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f3908l[i] & i2) != i2 || (this.f3905i & i2) == 0 || (this.f3910n[i] & i2) == i2) {
            return false;
        }
        int[] iArr = this.f3909m;
        if ((iArr[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f3898b;
        return (abs > ((float) i3) || abs2 > ((float) i3)) && (iArr[i] & i2) == 0 && abs > ((float) i3);
    }

    /* renamed from: a */
    private boolean m43901a(int i, int i2, int i3, int i4) {
        int left = this.f3906j.getLeft();
        int top = this.f3906j.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f3914r.abortAnimation();
            m43891b(0);
            return false;
        }
        this.f3914r.startScroll(left, top, i5, i6, m43896a(this.f3906j, i5, i6, i3, i4));
        m43891b(2);
        return true;
    }

    /* renamed from: a */
    private boolean m43899a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.f3915s.mo11217a(view) > 0;
        boolean z2 = this.f3915s.mo11093b(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f3898b) : z2 && Math.abs(f2) > ((float) this.f3898b);
        }
        int i = this.f3898b;
        return (f * f) + (f2 * f2) > ((float) (i * i));
    }

    /* renamed from: b */
    private static int m43889b(int i, int i2, int i3) {
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

    /* renamed from: b */
    private void m43892b(float f, float f2, int i) {
        boolean m43905a = m43905a(f, f2, i, 1);
        boolean z = m43905a;
        if (m43905a(f2, f, i, 4)) {
            z = m43905a | true;
        }
        boolean z2 = z;
        if (m43905a(f, f2, i, 2)) {
            z2 = z | true;
        }
        boolean z3 = z2;
        if (m43905a(f2, f, i, 8)) {
            z3 = z2 | true;
        }
        if (z3) {
            int[] iArr = this.f3909m;
            iArr[i] = iArr[i] | z3;
            this.f3915s.mo39915a(z3 ? 1 : 0, i);
        }
    }

    /* renamed from: b */
    private boolean m43887b(View view, int i) {
        if (view == this.f3906j && this.f3907k == i) {
            return true;
        }
        if (view == null || !this.f3915s.mo11092b(view, i)) {
            return false;
        }
        this.f3907k = i;
        m43898a(view, i);
        return true;
    }

    /* renamed from: b */
    public static boolean m43886b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    /* renamed from: c */
    private void m43884c(int i) {
        if (this.f3899c == null || !m43904a(i)) {
            return;
        }
        this.f3899c[i] = 0.0f;
        this.f3900d[i] = 0.0f;
        this.f3901e[i] = 0.0f;
        this.f3902f[i] = 0.0f;
        this.f3908l[i] = 0;
        this.f3909m[i] = 0;
        this.f3910n[i] = 0;
        this.f3911o = ((1 << i) ^ (-1)) & this.f3911o;
    }

    /* renamed from: c */
    private void m43883c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m43881d(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f3901e[pointerId] = x;
                this.f3902f[pointerId] = y;
            }
        }
    }

    /* renamed from: d */
    private void m43882d() {
        this.f3912p.computeCurrentVelocity(1000, this.f3913q);
        m43908a(m43907a(this.f3912p.getXVelocity(this.f3907k), this.f3903g, this.f3913q), m43907a(this.f3912p.getYVelocity(this.f3907k), this.f3903g, this.f3913q));
    }

    /* renamed from: d */
    private boolean m43881d(int i) {
        if (!m43904a(i)) {
            Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public final void m43910a() {
        this.f3907k = -1;
        float[] fArr = this.f3899c;
        if (fArr != null) {
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f3900d, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f3901e, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f3902f, (float) BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.f3908l, 0);
            Arrays.fill(this.f3909m, 0);
            Arrays.fill(this.f3910n, 0);
            this.f3911o = 0;
        }
        VelocityTracker velocityTracker = this.f3912p;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3912p = null;
        }
    }

    /* renamed from: a */
    public final void m43898a(View view, int i) {
        if (view.getParent() != this.f3917u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f3917u + ")");
        }
        this.f3906j = view;
        this.f3907k = i;
        this.f3915s.mo11216a(view, i);
        m43891b(1);
    }

    /* renamed from: a */
    public final boolean m43904a(int i) {
        return ((1 << i) & this.f3911o) != 0;
    }

    /* renamed from: a */
    public final boolean m43903a(int i, int i2) {
        if (this.f3916t) {
            return m43901a(i, i2, (int) this.f3912p.getXVelocity(this.f3907k), (int) this.f3912p.getYVelocity(this.f3907k));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x018c, code lost:
        if (r0 != r0) goto L60;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m43900a(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.p039a.C0972c.m43900a(android.view.MotionEvent):boolean");
    }

    /* renamed from: a */
    public final boolean m43897a(View view, int i, int i2) {
        this.f3906j = view;
        this.f3907k = -1;
        boolean m43901a = m43901a(i, i2, 0, 0);
        if (!m43901a && this.f3897a == 0 && this.f3906j != null) {
            this.f3906j = null;
        }
        return m43901a;
    }

    /* renamed from: b */
    public final View m43890b(int i, int i2) {
        for (int childCount = this.f3917u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f3917u.getChildAt(this.f3915s.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m43893b() {
        m43910a();
        if (this.f3897a == 2) {
            this.f3914r.getCurrX();
            this.f3914r.getCurrY();
            this.f3914r.abortAnimation();
            this.f3915s.mo11094a(this.f3906j, this.f3914r.getCurrX(), this.f3914r.getCurrY());
        }
        m43891b(0);
    }

    /* renamed from: b */
    final void m43891b(int i) {
        this.f3917u.removeCallbacks(this.f3918w);
        if (this.f3897a != i) {
            this.f3897a = i;
            this.f3915s.mo11096a(i);
            if (this.f3897a != 0) {
                return;
            }
            this.f3906j = null;
        }
    }

    /* renamed from: b */
    public final void m43888b(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m43910a();
        }
        if (this.f3912p == null) {
            this.f3912p = VelocityTracker.obtain();
        }
        this.f3912p.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View m43890b = m43890b((int) x, (int) y);
            m43906a(x, y, pointerId);
            m43887b(m43890b, pointerId);
            if ((this.f3908l[pointerId] & this.f3905i) == 0) {
                return;
            }
            this.f3915s.mo43841a();
        } else if (actionMasked == 1) {
            if (this.f3897a == 1) {
                m43882d();
            }
            m43910a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f3897a == 1) {
                    m43908a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                m43910a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                m43906a(x2, y2, pointerId2);
                if (this.f3897a == 0) {
                    m43887b(m43890b((int) x2, (int) y2), pointerId2);
                    if ((this.f3908l[pointerId2] & this.f3905i) == 0) {
                        return;
                    }
                    this.f3915s.mo43841a();
                    return;
                }
                if (!m43886b(this.f3906j, (int) x2, (int) y2)) {
                    return;
                }
                m43887b(this.f3906j, pointerId2);
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.f3897a == 1 && pointerId3 == this.f3907k) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount) {
                            i = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i2);
                        if (pointerId4 != this.f3907k) {
                            View m43890b2 = m43890b((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                            View view = this.f3906j;
                            if (m43890b2 == view && m43887b(view, pointerId4)) {
                                i = this.f3907k;
                                break;
                            }
                        }
                        i2++;
                    }
                    if (i == -1) {
                        m43882d();
                    }
                }
                m43884c(pointerId3);
            }
        } else if (this.f3897a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            for (int i3 = 0; i3 < pointerCount2; i3++) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (m43881d(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f = x3 - this.f3899c[pointerId5];
                    float f2 = y3 - this.f3900d[pointerId5];
                    m43892b(f, f2, pointerId5);
                    if (this.f3897a == 1) {
                        break;
                    }
                    View m43890b3 = m43890b((int) x3, (int) y3);
                    if (m43899a(m43890b3, f, f2) && m43887b(m43890b3, pointerId5)) {
                        break;
                    }
                }
            }
            m43883c(motionEvent);
        } else if (m43881d(this.f3907k)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f3907k);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f3901e;
            int i4 = this.f3907k;
            int i5 = (int) (x4 - fArr[i4]);
            int i6 = (int) (y4 - this.f3902f[i4]);
            int left = this.f3906j.getLeft() + i5;
            int top = this.f3906j.getTop() + i6;
            int left2 = this.f3906j.getLeft();
            int top2 = this.f3906j.getTop();
            int i7 = left;
            if (i5 != 0) {
                i7 = this.f3915s.mo11091c(this.f3906j, left);
                C0926v.m44096f(this.f3906j, i7 - left2);
            }
            int i8 = top;
            if (i6 != 0) {
                i8 = this.f3915s.mo11090d(this.f3906j, top);
                C0926v.m44098e(this.f3906j, i8 - top2);
            }
            if (i5 != 0 || i6 != 0) {
                this.f3915s.mo11094a(this.f3906j, i7, i8);
            }
            m43883c(motionEvent);
        }
    }

    /* renamed from: c */
    public final boolean m43885c() {
        if (this.f3897a == 2) {
            boolean computeScrollOffset = this.f3914r.computeScrollOffset();
            int currX = this.f3914r.getCurrX();
            int currY = this.f3914r.getCurrY();
            int left = currX - this.f3906j.getLeft();
            int top = currY - this.f3906j.getTop();
            if (left != 0) {
                C0926v.m44096f(this.f3906j, left);
            }
            if (top != 0) {
                C0926v.m44098e(this.f3906j, top);
            }
            if (left != 0 || top != 0) {
                this.f3915s.mo11094a(this.f3906j, currX, currY);
            }
            boolean z = computeScrollOffset;
            if (computeScrollOffset) {
                z = computeScrollOffset;
                if (currX == this.f3914r.getFinalX()) {
                    z = computeScrollOffset;
                    if (currY == this.f3914r.getFinalY()) {
                        this.f3914r.abortAnimation();
                        z = false;
                    }
                }
            }
            if (!z) {
                this.f3917u.post(this.f3918w);
            }
        }
        return this.f3897a == 2;
    }
}
