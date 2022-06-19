package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$b.class */
class d$b implements View.OnAttachStateChangeListener {

    /* renamed from: b */
    final /* synthetic */ d f308b;

    d$b(d dVar) {
        this.f308b = dVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f308b.z;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f308b.z = view.getViewTreeObserver();
            }
            d dVar = this.f308b;
            dVar.z.removeGlobalOnLayoutListener(dVar.k);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
