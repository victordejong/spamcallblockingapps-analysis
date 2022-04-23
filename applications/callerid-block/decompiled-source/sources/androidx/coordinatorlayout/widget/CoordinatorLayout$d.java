package androidx.coordinatorlayout.widget;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
class CoordinatorLayout$d implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: b */
    final /* synthetic */ CoordinatorLayout f1536b;

    CoordinatorLayout$d(CoordinatorLayout coordinatorLayout) {
        this.f1536b = coordinatorLayout;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f1536b.s;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        this.f1536b.L(2);
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f1536b.s;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
