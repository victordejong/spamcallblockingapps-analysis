package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/view/s.class */
public final class s implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    private final View f2010a;

    /* renamed from: b  reason: collision with root package name */
    private ViewTreeObserver f2011b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f2012c;

    private s(View view, Runnable runnable) {
        this.f2010a = view;
        this.f2011b = view.getViewTreeObserver();
        this.f2012c = runnable;
    }

    public static s a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        s sVar = new s(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(sVar);
        view.addOnAttachStateChangeListener(sVar);
        return sVar;
    }

    private void a() {
        if (this.f2011b.isAlive()) {
            this.f2011b.removeOnPreDrawListener(this);
        } else {
            this.f2010a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f2010a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        a();
        this.f2012c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f2011b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }
}
