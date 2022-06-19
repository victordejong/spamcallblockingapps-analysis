package androidx.coordinatorlayout.widget;

import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
public class CoordinatorLayout$f implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f781a;

    public CoordinatorLayout$f(CoordinatorLayout coordinatorLayout) {
        this.f781a = coordinatorLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f781a.onChildViewsChanged(0);
        return true;
    }
}
