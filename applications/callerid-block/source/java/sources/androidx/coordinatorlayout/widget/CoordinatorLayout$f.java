package androidx.coordinatorlayout.widget;

import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
class CoordinatorLayout$f implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b */
    final /* synthetic */ CoordinatorLayout f1554b;

    CoordinatorLayout$f(CoordinatorLayout coordinatorLayout) {
        this.f1554b = coordinatorLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f1554b.L(0);
        return true;
    }
}
