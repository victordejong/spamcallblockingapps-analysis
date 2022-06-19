package p1727n3.p1807k.p1821i;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;
/* renamed from: n3.k.i.q */
/* loaded from: classes-dex2jar.jar:n3/k/i/q.class */
public final class ViewTreeObserver$OnPreDrawListenerC26612q implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final View f74501a;

    /* renamed from: b */
    public ViewTreeObserver f74502b;

    /* renamed from: c */
    public final Runnable f74503c;

    public ViewTreeObserver$OnPreDrawListenerC26612q(View view, Runnable runnable) {
        this.f74501a = view;
        this.f74502b = view.getViewTreeObserver();
        this.f74503c = runnable;
    }

    /* renamed from: a */
    public static ViewTreeObserver$OnPreDrawListenerC26612q m1582a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        ViewTreeObserver$OnPreDrawListenerC26612q viewTreeObserver$OnPreDrawListenerC26612q = new ViewTreeObserver$OnPreDrawListenerC26612q(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC26612q);
        view.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC26612q);
        return viewTreeObserver$OnPreDrawListenerC26612q;
    }

    /* renamed from: b */
    public void m1581b() {
        if (this.f74502b.isAlive()) {
            this.f74502b.removeOnPreDrawListener(this);
        } else {
            this.f74501a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f74501a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m1581b();
        this.f74503c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f74502b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m1581b();
    }
}
