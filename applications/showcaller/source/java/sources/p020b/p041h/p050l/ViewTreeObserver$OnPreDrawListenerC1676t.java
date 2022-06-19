package p020b.p041h.p050l;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;
/* renamed from: b.h.l.t */
/* loaded from: classes-dex2jar.jar:b/h/l/t.class */
public final class ViewTreeObserver$OnPreDrawListenerC1676t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: d */
    private final View f6335d;

    /* renamed from: e */
    private ViewTreeObserver f6336e;

    /* renamed from: f */
    private final Runnable f6337f;

    private ViewTreeObserver$OnPreDrawListenerC1676t(View view, Runnable runnable) {
        this.f6335d = view;
        this.f6336e = view.getViewTreeObserver();
        this.f6337f = runnable;
    }

    /* renamed from: a */
    public static ViewTreeObserver$OnPreDrawListenerC1676t m29354a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        Objects.requireNonNull(runnable, "runnable == null");
        ViewTreeObserver$OnPreDrawListenerC1676t viewTreeObserver$OnPreDrawListenerC1676t = new ViewTreeObserver$OnPreDrawListenerC1676t(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC1676t);
        view.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC1676t);
        return viewTreeObserver$OnPreDrawListenerC1676t;
    }

    /* renamed from: b */
    public void m29353b() {
        if (this.f6336e.isAlive()) {
            this.f6336e.removeOnPreDrawListener(this);
        } else {
            this.f6335d.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f6335d.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m29353b();
        this.f6337f.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f6336e = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m29353b();
    }
}
