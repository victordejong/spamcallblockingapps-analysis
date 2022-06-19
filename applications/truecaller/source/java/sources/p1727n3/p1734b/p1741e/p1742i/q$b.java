package p1727n3.p1734b.p1741e.p1742i;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: n3.b.e.i.q$b */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/q$b.class */
public class q$b implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ q f71299a;

    public q$b(q qVar) {
        this.f71299a = qVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f71299a.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f71299a.p = view.getViewTreeObserver();
            }
            q qVar = this.f71299a;
            qVar.p.removeGlobalOnLayoutListener(qVar.j);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
