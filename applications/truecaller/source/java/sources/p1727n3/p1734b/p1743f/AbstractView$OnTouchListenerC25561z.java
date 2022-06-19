package p1727n3.p1734b.p1743f;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25488p;
/* renamed from: n3.b.f.z */
/* loaded from: classes-dex2jar.jar:n3/b/f/z.class */
public abstract class AbstractView$OnTouchListenerC25561z implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final float f71543a;

    /* renamed from: b */
    public final int f71544b;

    /* renamed from: c */
    public final int f71545c;

    /* renamed from: d */
    public final View f71546d;

    /* renamed from: e */
    public Runnable f71547e;

    /* renamed from: f */
    public Runnable f71548f;

    /* renamed from: g */
    public boolean f71549g;

    /* renamed from: h */
    public int f71550h;

    /* renamed from: i */
    public final int[] f71551i = new int[2];

    /* renamed from: n3.b.f.z$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/z$a.class */
    public class RunnableC25562a implements Runnable {
        public RunnableC25562a() {
            AbstractView$OnTouchListenerC25561z.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC25561z.this.f71546d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: n3.b.f.z$b */
    /* loaded from: classes-dex2jar.jar:n3/b/f/z$b.class */
    public class RunnableC25563b implements Runnable {
        public RunnableC25563b() {
            AbstractView$OnTouchListenerC25561z.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC25561z abstractView$OnTouchListenerC25561z = AbstractView$OnTouchListenerC25561z.this;
            abstractView$OnTouchListenerC25561z.m3241a();
            View view = abstractView$OnTouchListenerC25561z.f71546d;
            if (!view.isEnabled() || view.isLongClickable() || !abstractView$OnTouchListenerC25561z.mo3239c()) {
                return;
            }
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            abstractView$OnTouchListenerC25561z.f71549g = true;
        }
    }

    public AbstractView$OnTouchListenerC25561z(View view) {
        this.f71546d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f71543a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f71544b = tapTimeout;
        this.f71545c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    /* renamed from: a */
    public final void m3241a() {
        Runnable runnable = this.f71548f;
        if (runnable != null) {
            this.f71546d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f71547e;
        if (runnable2 != null) {
            this.f71546d.removeCallbacks(runnable2);
        }
    }

    /* renamed from: b */
    public abstract AbstractC25488p mo3240b();

    /* renamed from: c */
    public abstract boolean mo3239c();

    /* renamed from: d */
    public boolean mo3238d() {
        AbstractC25488p mo3240b = mo3240b();
        if (mo3240b == null || !mo3240b.isShowing()) {
            return true;
        }
        mo3240b.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0104, code lost:
        if (r0 != 3) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ff  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f71549g = false;
        this.f71550h = -1;
        Runnable runnable = this.f71547e;
        if (runnable != null) {
            this.f71546d.removeCallbacks(runnable);
        }
    }
}
