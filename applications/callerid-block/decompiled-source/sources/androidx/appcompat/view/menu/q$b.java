package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q$b.class */
class q$b implements View.OnAttachStateChangeListener {

    /* renamed from: b */
    final /* synthetic */ q f342b;

    q$b(q qVar) {
        this.f342b = qVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f342b.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f342b.q = view.getViewTreeObserver();
            }
            q qVar = this.f342b;
            qVar.q.removeGlobalOnLayoutListener(qVar.k);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
