package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0101p;
/* renamed from: androidx.appcompat.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s.class */
public abstract class AbstractView$OnTouchListenerC0152s implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: b */
    private final float f685b;

    /* renamed from: c */
    private final int f686c;

    /* renamed from: d */
    private final int f687d;

    /* renamed from: e */
    final View f688e;

    /* renamed from: f */
    private Runnable f689f;

    /* renamed from: g */
    private Runnable f690g;

    /* renamed from: h */
    private boolean f691h;

    /* renamed from: i */
    private int f692i;

    /* renamed from: j */
    private final int[] f693j = new int[2];

    /* renamed from: androidx.appcompat.widget.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s$a.class */
    public class RunnableC0153a implements Runnable {
        RunnableC0153a() {
            AbstractView$OnTouchListenerC0152s.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0152s.this.f688e.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s$b.class */
    public class RunnableC0154b implements Runnable {
        RunnableC0154b() {
            AbstractView$OnTouchListenerC0152s.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0152s.this.m14451f();
        }
    }

    public AbstractView$OnTouchListenerC0152s(View view) {
        this.f688e = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f685b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f686c = tapTimeout;
        this.f687d = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: a */
    private void m14455a() {
        Runnable runnable = this.f690g;
        if (runnable != null) {
            this.f688e.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f689f;
        if (runnable2 != null) {
            this.f688e.removeCallbacks(runnable2);
        }
    }

    /* renamed from: g */
    private boolean m14450g(MotionEvent motionEvent) {
        View view = this.f688e;
        AbstractC0101p m14454b = m14454b();
        boolean z = false;
        if (m14454b != null) {
            if (!m14454b.m14806c()) {
                z = false;
            } else {
                C0148q c0148q = (C0148q) m14454b.m14804h();
                z = false;
                if (c0148q != null) {
                    if (!c0148q.isShown()) {
                        z = false;
                    } else {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m14447m(view, obtainNoHistory);
                        m14446o(c0148q, obtainNoHistory);
                        boolean m14465e = c0148q.m14465e(obtainNoHistory, this.f692i);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                        z = false;
                        if (m14465e) {
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

    /* renamed from: i */
    private boolean m14449i(MotionEvent motionEvent) {
        View view = this.f688e;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f692i = motionEvent.getPointerId(0);
            if (this.f689f == null) {
                this.f689f = new RunnableC0153a();
            }
            view.postDelayed(this.f689f, this.f686c);
            if (this.f690g == null) {
                this.f690g = new RunnableC0154b();
            }
            view.postDelayed(this.f690g, this.f687d);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f692i);
                if (findPointerIndex < 0 || m14448l(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f685b)) {
                    return false;
                }
                m14455a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        m14455a();
        return false;
    }

    /* renamed from: l */
    private static boolean m14448l(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: m */
    private boolean m14447m(View view, MotionEvent motionEvent) {
        int[] iArr = this.f693j;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: o */
    private boolean m14446o(View view, MotionEvent motionEvent) {
        int[] iArr = this.f693j;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: b */
    public abstract AbstractC0101p m14454b();

    /* renamed from: c */
    protected abstract boolean m14453c();

    /* renamed from: d */
    protected boolean m14452d() {
        AbstractC0101p m14454b = m14454b();
        if (m14454b == null || !m14454b.m14806c()) {
            return true;
        }
        m14454b.dismiss();
        return true;
    }

    /* renamed from: f */
    void m14451f() {
        m14455a();
        View view = this.f688e;
        if (!view.isEnabled() || view.isLongClickable() || !m14453c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f691h = true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f691h;
        if (z2) {
            z = m14450g(motionEvent) || !m14452d();
        } else {
            boolean z3 = m14449i(motionEvent) && m14453c();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f688e.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f691h = z;
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
        this.f691h = false;
        this.f692i = -1;
        Runnable runnable = this.f689f;
        if (runnable != null) {
            this.f688e.removeCallbacks(runnable);
        }
    }
}
