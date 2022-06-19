package androidx.core.p023g;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: androidx.core.g.r */
/* loaded from: classes-dex2jar.jar:androidx/core/g/r.class */
public final class View$OnAttachStateChangeListenerC0549r implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    private final View f1877a;

    /* renamed from: b */
    private ViewTreeObserver f1878b;

    /* renamed from: c */
    private final Runnable f1879c;

    private View$OnAttachStateChangeListenerC0549r(View view, Runnable runnable) {
        this.f1877a = view;
        this.f1878b = view.getViewTreeObserver();
        this.f1879c = runnable;
    }

    /* renamed from: a */
    public static View$OnAttachStateChangeListenerC0549r m6298a(View view, Runnable runnable) {
        if (view != null) {
            if (runnable == null) {
                throw new NullPointerException("runnable == null");
            }
            View$OnAttachStateChangeListenerC0549r view$OnAttachStateChangeListenerC0549r = new View$OnAttachStateChangeListenerC0549r(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(view$OnAttachStateChangeListenerC0549r);
            view.addOnAttachStateChangeListener(view$OnAttachStateChangeListenerC0549r);
            return view$OnAttachStateChangeListenerC0549r;
        }
        throw new NullPointerException("view == null");
    }

    /* renamed from: a */
    public void m6299a() {
        if (this.f1878b.isAlive()) {
            this.f1878b.removeOnPreDrawListener(this);
        } else {
            this.f1877a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f1877a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m6299a();
        this.f1879c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f1878b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m6299a();
    }
}
