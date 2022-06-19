package p1727n3.p1734b.p1741e.p1742i;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: n3.b.e.i.d$b */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/d$b.class */
public class d$b implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ d f71191a;

    public d$b(d dVar) {
        this.f71191a = dVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f71191a.y;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f71191a.y = view.getViewTreeObserver();
            }
            d dVar = this.f71191a;
            dVar.y.removeGlobalOnLayoutListener(dVar.j);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
