package p012b.p042i.p054p;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: b.i.p.s */
/* loaded from: classes-dex2jar.jar:b/i/p/s.class */
public final class ViewTreeObserver$OnPreDrawListenerC1000s implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final View f4250a;

    /* renamed from: b */
    public ViewTreeObserver f4251b;

    /* renamed from: c */
    public final Runnable f4252c;

    public ViewTreeObserver$OnPreDrawListenerC1000s(View view, Runnable runnable) {
        this.f4250a = view;
        this.f4251b = view.getViewTreeObserver();
        this.f4252c = runnable;
    }

    /* renamed from: a */
    public static ViewTreeObserver$OnPreDrawListenerC1000s m35257a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        } else if (runnable != null) {
            ViewTreeObserver$OnPreDrawListenerC1000s sVar = new ViewTreeObserver$OnPreDrawListenerC1000s(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(sVar);
            view.addOnAttachStateChangeListener(sVar);
            return sVar;
        } else {
            throw new NullPointerException("runnable == null");
        }
    }

    /* renamed from: a */
    public void m35258a() {
        if (this.f4251b.isAlive()) {
            this.f4251b.removeOnPreDrawListener(this);
        } else {
            this.f4250a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f4250a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m35258a();
        this.f4252c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f4251b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m35258a();
    }
}
