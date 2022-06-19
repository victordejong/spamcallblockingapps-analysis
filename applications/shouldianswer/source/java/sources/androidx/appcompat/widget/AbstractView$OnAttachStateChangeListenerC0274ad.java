package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0202p;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.widget.ad */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad.class */
public abstract class AbstractView$OnAttachStateChangeListenerC0274ad implements View.OnAttachStateChangeListener, View.OnTouchListener {

    /* renamed from: a */
    private final float f1141a;

    /* renamed from: c */
    final View f1143c;

    /* renamed from: e */
    private Runnable f1145e;

    /* renamed from: f */
    private Runnable f1146f;

    /* renamed from: g */
    private boolean f1147g;

    /* renamed from: h */
    private int f1148h;

    /* renamed from: i */
    private final int[] f1149i = new int[2];

    /* renamed from: b */
    private final int f1142b = ViewConfiguration.getTapTimeout();

    /* renamed from: d */
    private final int f1144d = (this.f1142b + ViewConfiguration.getLongPressTimeout()) / 2;

    /* renamed from: androidx.appcompat.widget.ad$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad$a.class */
    public class RunnableC0275a implements Runnable {
        RunnableC0275a() {
            AbstractView$OnAttachStateChangeListenerC0274ad.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnAttachStateChangeListenerC0274ad.this.f1143c.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ad$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad$b.class */
    public class RunnableC0276b implements Runnable {
        RunnableC0276b() {
            AbstractView$OnAttachStateChangeListenerC0274ad.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnAttachStateChangeListenerC0274ad.this.m7280d();
        }
    }

    public AbstractView$OnAttachStateChangeListenerC0274ad(View view) {
        this.f1143c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1141a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    /* renamed from: a */
    private boolean m7287a(MotionEvent motionEvent) {
        View view = this.f1143c;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1148h = motionEvent.getPointerId(0);
            if (this.f1145e == null) {
                this.f1145e = new RunnableC0275a();
            }
            view.postDelayed(this.f1145e, this.f1142b);
            if (this.f1146f == null) {
                this.f1146f = new RunnableC0276b();
            }
            view.postDelayed(this.f1146f, this.f1144d);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f1148h);
                if (findPointerIndex < 0 || m7286a(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f1141a)) {
                    return false;
                }
                m7279e();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        m7279e();
        return false;
    }

    /* renamed from: a */
    private static boolean m7286a(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: a */
    private boolean m7285a(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1149i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: b */
    private boolean m7283b(MotionEvent motionEvent) {
        C0269ab c0269ab;
        View view = this.f1143c;
        AbstractC0202p mo7288a = mo7288a();
        if (mo7288a == null || !mo7288a.mo7266c() || (c0269ab = (C0269ab) mo7288a.mo7248k_()) == null || !c0269ab.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        m7282b(view, obtainNoHistory);
        m7285a(c0269ab, obtainNoHistory);
        boolean mo7237a = c0269ab.mo7237a(obtainNoHistory, this.f1148h);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
        if (!mo7237a || !z2) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private boolean m7282b(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1149i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: e */
    private void m7279e() {
        Runnable runnable = this.f1146f;
        if (runnable != null) {
            this.f1143c.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1145e;
        if (runnable2 != null) {
            this.f1143c.removeCallbacks(runnable2);
        }
    }

    /* renamed from: a */
    public abstract AbstractC0202p mo7288a();

    /* renamed from: b */
    protected boolean mo7284b() {
        AbstractC0202p mo7288a = mo7288a();
        if (mo7288a == null || mo7288a.mo7266c()) {
            return true;
        }
        mo7288a.mo7250j_();
        return true;
    }

    /* renamed from: c */
    protected boolean mo7281c() {
        AbstractC0202p mo7288a = mo7288a();
        if (mo7288a == null || !mo7288a.mo7266c()) {
            return true;
        }
        mo7288a.mo7270b();
        return true;
    }

    /* renamed from: d */
    void m7280d() {
        m7279e();
        View view = this.f1143c;
        if (!view.isEnabled() || view.isLongClickable() || !mo7284b()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f1147g = true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f1147g;
        if (z2) {
            z = m7283b(motionEvent) || !mo7281c();
        } else {
            boolean z3 = m7287a(motionEvent) && mo7284b();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0);
                this.f1143c.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f1147g = z;
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
        this.f1147g = false;
        this.f1148h = -1;
        Runnable runnable = this.f1145e;
        if (runnable != null) {
            this.f1143c.removeCallbacks(runnable);
        }
    }
}
