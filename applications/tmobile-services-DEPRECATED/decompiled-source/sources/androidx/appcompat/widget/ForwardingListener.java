package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ShowableListMenu;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ForwardingListener.class */
public abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: f */
    private final float f1073f;

    /* renamed from: g */
    private final int f1074g;

    /* renamed from: h */
    private final int f1075h;

    /* renamed from: i */
    final View f1076i;

    /* renamed from: j */
    private Runnable f1077j;

    /* renamed from: k */
    private Runnable f1078k;

    /* renamed from: l */
    private boolean f1079l;

    /* renamed from: m */
    private int f1080m;

    /* renamed from: n */
    private final int[] f1081n = new int[2];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ForwardingListener$DisallowIntercept.class */
    public class DisallowIntercept implements Runnable {
        DisallowIntercept() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = ForwardingListener.this.f1076i.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ForwardingListener$TriggerLongPress.class */
    public class TriggerLongPress implements Runnable {
        TriggerLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForwardingListener.this.m21484e();
        }
    }

    public ForwardingListener(View view) {
        this.f1076i = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1073f = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1074g = tapTimeout;
        this.f1075h = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: a */
    private void m21485a() {
        Runnable runnable = this.f1078k;
        if (runnable != null) {
            this.f1076i.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1077j;
        if (runnable2 != null) {
            this.f1076i.removeCallbacks(runnable2);
        }
    }

    /* renamed from: f */
    private boolean m21483f(MotionEvent motionEvent) {
        View view = this.f1076i;
        ShowableListMenu b = mo21411b();
        boolean z = false;
        if (b != null) {
            if (!b.mo21440a()) {
                z = false;
            } else {
                DropDownListView dropDownListView = (DropDownListView) b.mo21434k();
                z = false;
                if (dropDownListView != null) {
                    if (!dropDownListView.isShown()) {
                        z = false;
                    } else {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m21480i(view, obtainNoHistory);
                        m21479j(dropDownListView, obtainNoHistory);
                        boolean e = dropDownListView.m21496e(obtainNoHistory, this.f1080m);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                        z = false;
                        if (e) {
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
    private boolean m21482g(MotionEvent motionEvent) {
        View view = this.f1076i;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f1080m);
                    if (findPointerIndex < 0 || m21481h(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f1073f)) {
                        return false;
                    }
                    m21485a();
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    return true;
                } else if (actionMasked != 3) {
                    return false;
                }
            }
            m21485a();
            return false;
        }
        this.f1080m = motionEvent.getPointerId(0);
        if (this.f1077j == null) {
            this.f1077j = new DisallowIntercept();
        }
        view.postDelayed(this.f1077j, this.f1074g);
        if (this.f1078k == null) {
            this.f1078k = new TriggerLongPress();
        }
        view.postDelayed(this.f1078k, this.f1075h);
        return false;
    }

    /* renamed from: h */
    private static boolean m21481h(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: i */
    private boolean m21480i(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1081n;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: j */
    private boolean m21479j(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1081n;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: b */
    public abstract ShowableListMenu mo21411b();

    /* renamed from: c */
    protected boolean mo21410c() {
        ShowableListMenu b = mo21411b();
        if (b == null || b.mo21440a()) {
            return true;
        }
        b.mo21439b();
        return true;
    }

    /* renamed from: d */
    protected boolean mo21409d() {
        ShowableListMenu b = mo21411b();
        if (b == null || !b.mo21440a()) {
            return true;
        }
        b.dismiss();
        return true;
    }

    /* renamed from: e */
    void m21484e() {
        m21485a();
        View view = this.f1076i;
        if (view.isEnabled() && !view.isLongClickable() && mo21410c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f1079l = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f1079l;
        if (z2) {
            z = m21483f(motionEvent) || !mo21409d();
        } else {
            boolean z3 = m21482g(motionEvent) && mo21410c();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1076i.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f1079l = z;
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
        this.f1079l = false;
        this.f1080m = -1;
        Runnable runnable = this.f1077j;
        if (runnable != null) {
            this.f1076i.removeCallbacks(runnable);
        }
    }
}
