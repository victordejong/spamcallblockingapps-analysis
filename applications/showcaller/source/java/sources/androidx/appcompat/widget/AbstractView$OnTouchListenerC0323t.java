package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0198p;
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public abstract class AbstractView$OnTouchListenerC0323t implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: d */
    private final float f1381d;

    /* renamed from: e */
    private final int f1382e;

    /* renamed from: f */
    private final int f1383f;

    /* renamed from: g */
    final View f1384g;

    /* renamed from: h */
    private Runnable f1385h;

    /* renamed from: i */
    private Runnable f1386i;

    /* renamed from: j */
    private boolean f1387j;

    /* renamed from: k */
    private int f1388k;

    /* renamed from: l */
    private final int[] f1389l = new int[2];

    /* renamed from: androidx.appcompat.widget.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$a.class */
    public class RunnableC0324a implements Runnable {
        RunnableC0324a() {
            AbstractView$OnTouchListenerC0323t.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0323t.this.f1384g.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$b.class */
    public class RunnableC0325b implements Runnable {
        RunnableC0325b() {
            AbstractView$OnTouchListenerC0323t.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0323t.this.m34753e();
        }
    }

    public AbstractView$OnTouchListenerC0323t(View view) {
        this.f1384g = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1381d = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1382e = tapTimeout;
        this.f1383f = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: a */
    private void m34757a() {
        Runnable runnable = this.f1386i;
        if (runnable != null) {
            this.f1384g.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1385h;
        if (runnable2 != null) {
            this.f1384g.removeCallbacks(runnable2);
        }
    }

    /* renamed from: j */
    private boolean m34752j(MotionEvent motionEvent) {
        View view = this.f1384g;
        AbstractC0198p mo34756b = mo34756b();
        boolean z = false;
        if (mo34756b != null) {
            if (!mo34756b.mo35138a()) {
                z = false;
            } else {
                C0318r c0318r = (C0318r) mo34756b.mo35132k();
                z = false;
                if (c0318r != null) {
                    if (!c0318r.isShown()) {
                        z = false;
                    } else {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m34749q(view, obtainNoHistory);
                        m34748r(c0318r, obtainNoHistory);
                        boolean mo34768e = c0318r.mo34768e(obtainNoHistory, this.f1388k);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                        z = false;
                        if (mo34768e) {
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

    /* renamed from: o */
    private boolean m34751o(MotionEvent motionEvent) {
        View view = this.f1384g;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1388k = motionEvent.getPointerId(0);
            if (this.f1385h == null) {
                this.f1385h = new RunnableC0324a();
            }
            view.postDelayed(this.f1385h, this.f1382e);
            if (this.f1386i == null) {
                this.f1386i = new RunnableC0325b();
            }
            view.postDelayed(this.f1386i, this.f1383f);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f1388k);
                if (findPointerIndex < 0 || m34750p(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f1381d)) {
                    return false;
                }
                m34757a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        m34757a();
        return false;
    }

    /* renamed from: p */
    private static boolean m34750p(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: q */
    private boolean m34749q(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1389l;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: r */
    private boolean m34748r(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1389l;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: b */
    public abstract AbstractC0198p mo34756b();

    /* renamed from: c */
    protected abstract boolean mo34755c();

    /* renamed from: d */
    protected boolean mo34754d() {
        AbstractC0198p mo34756b = mo34756b();
        if (mo34756b == null || !mo34756b.mo35138a()) {
            return true;
        }
        mo34756b.dismiss();
        return true;
    }

    /* renamed from: e */
    void m34753e() {
        m34757a();
        View view = this.f1384g;
        if (!view.isEnabled() || view.isLongClickable() || !mo34755c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f1387j = true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f1387j;
        if (z2) {
            z = m34752j(motionEvent) || !mo34754d();
        } else {
            boolean z3 = m34751o(motionEvent) && mo34755c();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1384g.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f1387j = z;
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
        this.f1387j = false;
        this.f1388k = -1;
        Runnable runnable = this.f1385h;
        if (runnable != null) {
            this.f1384g.removeCallbacks(runnable);
        }
    }
}
