package p163m0;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;
/* renamed from: m0.p */
/* loaded from: classes-dex2jar.jar:m0/p.class */
public final class ViewTreeObserver$OnPreDrawListenerC3583p implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final View f11776a;

    /* renamed from: b */
    public ViewTreeObserver f11777b;

    /* renamed from: c */
    public final Runnable f11778c;

    public ViewTreeObserver$OnPreDrawListenerC3583p(View view, Runnable runnable) {
        this.f11776a = view;
        this.f11777b = view.getViewTreeObserver();
        this.f11778c = runnable;
    }

    /* renamed from: a */
    public static ViewTreeObserver$OnPreDrawListenerC3583p m2126a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        ViewTreeObserver$OnPreDrawListenerC3583p viewTreeObserver$OnPreDrawListenerC3583p = new ViewTreeObserver$OnPreDrawListenerC3583p(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC3583p);
        view.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC3583p);
        return viewTreeObserver$OnPreDrawListenerC3583p;
    }

    /* renamed from: b */
    public void m2125b() {
        if (this.f11777b.isAlive()) {
            this.f11777b.removeOnPreDrawListener(this);
        } else {
            this.f11776a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f11776a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m2125b();
        this.f11778c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f11777b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m2125b();
    }
}
