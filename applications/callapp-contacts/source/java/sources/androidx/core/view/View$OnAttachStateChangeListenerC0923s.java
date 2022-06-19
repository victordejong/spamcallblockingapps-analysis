package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;
/* renamed from: androidx.core.view.s */
/* loaded from: classes-dex2jar.jar:androidx/core/view/s.class */
public final class View$OnAttachStateChangeListenerC0923s implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    private final View f3756a;

    /* renamed from: b */
    private ViewTreeObserver f3757b;

    /* renamed from: c */
    private final Runnable f3758c;

    private View$OnAttachStateChangeListenerC0923s(View view, Runnable runnable) {
        this.f3756a = view;
        this.f3757b = view.getViewTreeObserver();
        this.f3758c = runnable;
    }

    /* renamed from: a */
    public static View$OnAttachStateChangeListenerC0923s m44160a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        View$OnAttachStateChangeListenerC0923s view$OnAttachStateChangeListenerC0923s = new View$OnAttachStateChangeListenerC0923s(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(view$OnAttachStateChangeListenerC0923s);
        view.addOnAttachStateChangeListener(view$OnAttachStateChangeListenerC0923s);
        return view$OnAttachStateChangeListenerC0923s;
    }

    /* renamed from: a */
    private void m44161a() {
        if (this.f3757b.isAlive()) {
            this.f3757b.removeOnPreDrawListener(this);
        } else {
            this.f3756a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f3756a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        m44161a();
        this.f3758c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f3757b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m44161a();
    }
}
