package androidx.coordinatorlayout.widget;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
public class CoordinatorLayout$e implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f674a;

    public CoordinatorLayout$e(CoordinatorLayout coordinatorLayout) {
        this.f674a = coordinatorLayout;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f674a.r;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        this.f674a.l(2);
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f674a.r;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
