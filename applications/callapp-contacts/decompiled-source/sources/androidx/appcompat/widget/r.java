package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r.class */
public abstract class r implements View.OnAttachStateChangeListener, View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final float f1124a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1125b;

    /* renamed from: c  reason: collision with root package name */
    final View f1126c;

    /* renamed from: d  reason: collision with root package name */
    private final int f1127d;
    private Runnable e;
    private Runnable f;
    private boolean g;
    private int h;
    private final int[] i = new int[2];

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r$a.class */
    final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewParent parent = r.this.f1126c.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r$b.class */
    final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            r.this.d();
        }
    }

    public r(View view) {
        this.f1126c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1124a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1125b = tapTimeout;
        this.f1127d = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void e() {
        Runnable runnable = this.f;
        if (runnable != null) {
            this.f1126c.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.e;
        if (runnable2 != null) {
            this.f1126c.removeCallbacks(runnable2);
        }
    }

    public abstract p a();

    protected boolean b() {
        p a2 = a();
        if (a2 == null || a2.e()) {
            return true;
        }
        a2.e_();
        return true;
    }

    protected boolean c() {
        p a2 = a();
        if (a2 == null || !a2.e()) {
            return true;
        }
        a2.d();
        return true;
    }

    final void d() {
        e();
        View view = this.f1126c;
        if (view.isEnabled() && !view.isLongClickable() && b()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.g = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00fe, code lost:
        if (r0 != 3) goto L_0x01d8;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f9  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 561
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.r.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.g = false;
        this.h = -1;
        Runnable runnable = this.e;
        if (runnable != null) {
            this.f1126c.removeCallbacks(runnable);
        }
    }
}
