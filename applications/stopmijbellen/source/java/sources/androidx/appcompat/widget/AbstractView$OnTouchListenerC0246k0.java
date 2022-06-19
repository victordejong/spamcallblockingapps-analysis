package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import p151l.AbstractC3424f;
/* renamed from: androidx.appcompat.widget.k0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k0.class */
public abstract class AbstractView$OnTouchListenerC0246k0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final float f999a;

    /* renamed from: b */
    public final int f1000b;

    /* renamed from: c */
    public final int f1001c;

    /* renamed from: d */
    public final View f1002d;

    /* renamed from: e */
    public Runnable f1003e;

    /* renamed from: f */
    public Runnable f1004f;

    /* renamed from: g */
    public boolean f1005g;

    /* renamed from: h */
    public int f1006h;

    /* renamed from: i */
    public final int[] f1007i = new int[2];

    /* renamed from: androidx.appcompat.widget.k0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k0$a.class */
    public class RunnableC0247a implements Runnable {
        public RunnableC0247a() {
            AbstractView$OnTouchListenerC0246k0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0246k0.this.f1002d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.k0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k0$b.class */
    public class RunnableC0248b implements Runnable {
        public RunnableC0248b() {
            AbstractView$OnTouchListenerC0246k0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0246k0 abstractView$OnTouchListenerC0246k0 = AbstractView$OnTouchListenerC0246k0.this;
            abstractView$OnTouchListenerC0246k0.m8474a();
            View view = abstractView$OnTouchListenerC0246k0.f1002d;
            if (!view.isEnabled() || view.isLongClickable() || !abstractView$OnTouchListenerC0246k0.mo8418c()) {
                return;
            }
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            abstractView$OnTouchListenerC0246k0.f1005g = true;
        }
    }

    public AbstractView$OnTouchListenerC0246k0(View view) {
        this.f1002d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f999a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1000b = tapTimeout;
        this.f1001c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    /* renamed from: a */
    public final void m8474a() {
        Runnable runnable = this.f1004f;
        if (runnable != null) {
            this.f1002d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1003e;
        if (runnable2 != null) {
            this.f1002d.removeCallbacks(runnable2);
        }
    }

    /* renamed from: b */
    public abstract AbstractC3424f mo8419b();

    /* renamed from: c */
    public abstract boolean mo8418c();

    /* renamed from: d */
    public boolean mo8473d() {
        AbstractC3424f mo8419b = mo8419b();
        if (mo8419b == null || !mo8419b.mo2305b()) {
            return true;
        }
        mo8419b.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0104, code lost:
        if (r0 != 3) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0231, code lost:
        if (r0 != false) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ff  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1005g = false;
        this.f1006h = -1;
        Runnable runnable = this.f1003e;
        if (runnable != null) {
            this.f1002d.removeCallbacks(runnable);
        }
    }
}
