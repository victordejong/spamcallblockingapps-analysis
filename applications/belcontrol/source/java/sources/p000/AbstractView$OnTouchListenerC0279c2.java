package p000;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
/* renamed from: c2 */
/* loaded from: classes-dex2jar.jar:c2.class */
public abstract class AbstractView$OnTouchListenerC0279c2 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final float f2120a;

    /* renamed from: b */
    public final int f2121b;

    /* renamed from: c */
    public final int f2122c;

    /* renamed from: d */
    public final View f2123d;

    /* renamed from: f */
    public Runnable f2124f;

    /* renamed from: g */
    public Runnable f2125g;

    /* renamed from: h */
    public boolean f2126h;

    /* renamed from: j */
    public int f2127j;

    /* renamed from: k */
    public final int[] f2128k = new int[2];

    /* renamed from: c2$a */
    /* loaded from: classes-dex2jar.jar:c2$a.class */
    public class RunnableC0280a implements Runnable {
        public RunnableC0280a() {
            AbstractView$OnTouchListenerC0279c2.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0279c2.this.f2123d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: c2$b */
    /* loaded from: classes-dex2jar.jar:c2$b.class */
    public class RunnableC0281b implements Runnable {
        public RunnableC0281b() {
            AbstractView$OnTouchListenerC0279c2.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0279c2.this.m5472e();
        }
    }

    public AbstractView$OnTouchListenerC0279c2(View view) {
        this.f2123d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f2120a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f2121b = tapTimeout;
        this.f2122c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: h */
    public static boolean m5469h(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: a */
    public final void m5476a() {
        Runnable runnable = this.f2125g;
        if (runnable != null) {
            this.f2123d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f2124f;
        if (runnable2 != null) {
            this.f2123d.removeCallbacks(runnable2);
        }
    }

    /* renamed from: b */
    public abstract g1 m5475b();

    /* renamed from: c */
    public abstract boolean m5474c();

    /* renamed from: d */
    public boolean m5473d() {
        g1 m5475b = m5475b();
        if (m5475b == null || !m5475b.a()) {
            return true;
        }
        m5475b.dismiss();
        return true;
    }

    /* renamed from: e */
    public void m5472e() {
        m5476a();
        View view = this.f2123d;
        if (!view.isEnabled() || view.isLongClickable() || !m5474c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f2126h = true;
    }

    /* renamed from: f */
    public final boolean m5471f(MotionEvent motionEvent) {
        View view = this.f2123d;
        g1 m5475b = m5475b();
        boolean z = false;
        if (m5475b != null) {
            if (!m5475b.a()) {
                z = false;
            } else {
                C0005a2 c0005a2 = (C0005a2) m5475b.n();
                z = false;
                if (c0005a2 != null) {
                    if (!c0005a2.isShown()) {
                        z = false;
                    } else {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m5468i(view, obtainNoHistory);
                        m5467j(c0005a2, obtainNoHistory);
                        boolean m7416e = c0005a2.m7416e(obtainNoHistory, this.f2127j);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                        z = false;
                        if (m7416e) {
                            z = false;
                            if (z2) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public final boolean m5470g(MotionEvent motionEvent) {
        View view = this.f2123d;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2127j = motionEvent.getPointerId(0);
            if (this.f2124f == null) {
                this.f2124f = new RunnableC0280a();
            }
            view.postDelayed(this.f2124f, this.f2121b);
            if (this.f2125g == null) {
                this.f2125g = new RunnableC0281b();
            }
            view.postDelayed(this.f2125g, this.f2122c);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f2127j);
                if (findPointerIndex < 0 || m5469h(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f2120a)) {
                    return false;
                }
                m5476a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        m5476a();
        return false;
    }

    /* renamed from: i */
    public final boolean m5468i(View view, MotionEvent motionEvent) {
        int[] iArr = this.f2128k;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: j */
    public final boolean m5467j(View view, MotionEvent motionEvent) {
        int[] iArr = this.f2128k;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f2126h;
        if (z2) {
            z = m5471f(motionEvent) || !m5473d();
        } else {
            boolean z3 = m5470g(motionEvent) && m5474c();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f2123d.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f2126h = z;
        boolean z4 = true;
        if (!z) {
            z4 = z2;
        }
        return z4;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f2126h = false;
        this.f2127j = -1;
        Runnable runnable = this.f2124f;
        if (runnable != null) {
            this.f2123d.removeCallbacks(runnable);
        }
    }
}
