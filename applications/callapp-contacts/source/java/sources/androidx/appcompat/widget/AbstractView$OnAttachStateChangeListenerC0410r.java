package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0288p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.appcompat.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r.class */
public abstract class AbstractView$OnAttachStateChangeListenerC0410r implements View.OnAttachStateChangeListener, View.OnTouchListener {

    /* renamed from: a */
    private final float f1634a;

    /* renamed from: b */
    private final int f1635b;

    /* renamed from: c */
    final View f1636c;

    /* renamed from: d */
    private final int f1637d;

    /* renamed from: e */
    private Runnable f1638e;

    /* renamed from: f */
    private Runnable f1639f;

    /* renamed from: g */
    private boolean f1640g;

    /* renamed from: h */
    private int f1641h;

    /* renamed from: i */
    private final int[] f1642i = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r$a.class */
    public final class RunnableC0411a implements Runnable {
        RunnableC0411a() {
            AbstractView$OnAttachStateChangeListenerC0410r.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewParent parent = AbstractView$OnAttachStateChangeListenerC0410r.this.f1636c.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r$b.class */
    public final class RunnableC0412b implements Runnable {
        RunnableC0412b() {
            AbstractView$OnAttachStateChangeListenerC0410r.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractView$OnAttachStateChangeListenerC0410r.this.m45614d();
        }
    }

    public AbstractView$OnAttachStateChangeListenerC0410r(View view) {
        this.f1636c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1634a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1635b = tapTimeout;
        this.f1637d = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: e */
    private void m45613e() {
        Runnable runnable = this.f1639f;
        if (runnable != null) {
            this.f1636c.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1638e;
        if (runnable2 != null) {
            this.f1636c.removeCallbacks(runnable2);
        }
    }

    /* renamed from: a */
    public abstract AbstractC0288p mo45617a();

    /* renamed from: b */
    protected boolean mo45616b() {
        AbstractC0288p mo45617a = mo45617a();
        if (mo45617a == null || mo45617a.mo45923e()) {
            return true;
        }
        mo45617a.mo45922e_();
        return true;
    }

    /* renamed from: c */
    protected boolean mo45615c() {
        AbstractC0288p mo45617a = mo45617a();
        if (mo45617a == null || !mo45617a.mo45923e()) {
            return true;
        }
        mo45617a.mo45925d();
        return true;
    }

    /* renamed from: d */
    final void m45614d() {
        m45613e();
        View view = this.f1636c;
        if (!view.isEnabled() || view.isLongClickable() || !mo45616b()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f1640g = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00fe, code lost:
        if (r0 != 3) goto L63;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1640g = false;
        this.f1641h = -1;
        Runnable runnable = this.f1638e;
        if (runnable != null) {
            this.f1636c.removeCallbacks(runnable);
        }
    }
}
