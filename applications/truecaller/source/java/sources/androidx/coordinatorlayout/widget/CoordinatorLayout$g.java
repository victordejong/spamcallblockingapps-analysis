package androidx.coordinatorlayout.widget;

import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
public class CoordinatorLayout$g implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f692a;

    public CoordinatorLayout$g(CoordinatorLayout coordinatorLayout) {
        this.f692a = coordinatorLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f692a.l(0);
        return true;
    }
}
