package p012b.p016b.p026q;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import p012b.p016b.p024p.p025j.AbstractC0667p;
/* renamed from: b.b.q.s */
/* loaded from: classes-dex2jar.jar:b/b/q/s.class */
public abstract class AbstractView$OnTouchListenerC0722s implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final float f3525a;

    /* renamed from: b */
    public final int f3526b;

    /* renamed from: c */
    public final int f3527c;

    /* renamed from: d */
    public final View f3528d;

    /* renamed from: e */
    public Runnable f3529e;

    /* renamed from: f */
    public Runnable f3530f;

    /* renamed from: g */
    public boolean f3531g;

    /* renamed from: h */
    public int f3532h;

    /* renamed from: i */
    public final int[] f3533i = new int[2];

    /* renamed from: b.b.q.s$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/s$a.class */
    public class RunnableC0723a implements Runnable {
        public RunnableC0723a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0722s.this.f3528d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: b.b.q.s$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/s$b.class */
    public class RunnableC0724b implements Runnable {
        public RunnableC0724b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0722s.this.m36223e();
        }
    }

    public AbstractView$OnTouchListenerC0722s(View view) {
        this.f3528d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f3525a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f3526b = tapTimeout;
        this.f3527c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: a */
    public static boolean m36230a(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: a */
    public final void m36232a() {
        Runnable runnable = this.f3530f;
        if (runnable != null) {
            this.f3528d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f3529e;
        if (runnable2 != null) {
            this.f3528d.removeCallbacks(runnable2);
        }
    }

    /* renamed from: a */
    public final boolean m36231a(MotionEvent motionEvent) {
        View view = this.f3528d;
        AbstractC0667p b = mo36228b();
        boolean z = false;
        if (b != null) {
            if (!b.mo36517a()) {
                z = false;
            } else {
                C0717q qVar = (C0717q) b.mo36503e();
                z = false;
                if (qVar != null) {
                    if (!qVar.isShown()) {
                        z = false;
                    } else {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m36229a(view, obtainNoHistory);
                        m36226b(qVar, obtainNoHistory);
                        boolean a = qVar.m36242a(obtainNoHistory, this.f3532h);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                        z = false;
                        if (a) {
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

    /* renamed from: a */
    public final boolean m36229a(View view, MotionEvent motionEvent) {
        int[] iArr = this.f3533i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: b */
    public abstract AbstractC0667p mo36228b();

    /* renamed from: b */
    public final boolean m36227b(MotionEvent motionEvent) {
        View view = this.f3528d;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f3532h);
                    if (findPointerIndex < 0 || m36230a(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f3525a)) {
                        return false;
                    }
                    m36232a();
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    return true;
                } else if (actionMasked != 3) {
                    return false;
                }
            }
            m36232a();
            return false;
        }
        this.f3532h = motionEvent.getPointerId(0);
        if (this.f3529e == null) {
            this.f3529e = new RunnableC0723a();
        }
        view.postDelayed(this.f3529e, this.f3526b);
        if (this.f3530f == null) {
            this.f3530f = new RunnableC0724b();
        }
        view.postDelayed(this.f3530f, this.f3527c);
        return false;
    }

    /* renamed from: b */
    public final boolean m36226b(View view, MotionEvent motionEvent) {
        int[] iArr = this.f3533i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: c */
    public abstract boolean mo36225c();

    /* renamed from: d */
    public boolean mo36224d() {
        AbstractC0667p b = mo36228b();
        if (b == null || !b.mo36517a()) {
            return true;
        }
        b.dismiss();
        return true;
    }

    /* renamed from: e */
    public void m36223e() {
        m36232a();
        View view = this.f3528d;
        if (view.isEnabled() && !view.isLongClickable() && mo36225c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f3531g = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f3531g;
        if (z2) {
            z = m36231a(motionEvent) || !mo36224d();
        } else {
            boolean z3 = m36227b(motionEvent) && mo36225c();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f3528d.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f3531g = z;
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
        this.f3531g = false;
        this.f3532h = -1;
        Runnable runnable = this.f3529e;
        if (runnable != null) {
            this.f3528d.removeCallbacks(runnable);
        }
    }
}
