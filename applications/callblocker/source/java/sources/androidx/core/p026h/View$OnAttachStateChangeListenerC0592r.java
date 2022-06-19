package androidx.core.p026h;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: androidx.core.h.r */
/* loaded from: classes-dex2jar.jar:androidx/core/h/r.class */
public final class View$OnAttachStateChangeListenerC0592r implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    private final View f2086a;

    /* renamed from: b */
    private ViewTreeObserver f2087b;

    /* renamed from: c */
    private final Runnable f2088c;

    private View$OnAttachStateChangeListenerC0592r(View view, Runnable runnable) {
        this.f2086a = view;
        this.f2087b = view.getViewTreeObserver();
        this.f2088c = runnable;
    }

    /* renamed from: a */
    public static View$OnAttachStateChangeListenerC0592r m20374a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        View$OnAttachStateChangeListenerC0592r view$OnAttachStateChangeListenerC0592r = new View$OnAttachStateChangeListenerC0592r(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(view$OnAttachStateChangeListenerC0592r);
        view.addOnAttachStateChangeListener(view$OnAttachStateChangeListenerC0592r);
        return view$OnAttachStateChangeListenerC0592r;
    }

    /* renamed from: a */
    public void m20375a() {
        if (this.f2087b.isAlive()) {
            this.f2087b.removeOnPreDrawListener(this);
        } else {
            this.f2086a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f2086a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m20375a();
        this.f2088c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f2087b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m20375a();
    }
}
