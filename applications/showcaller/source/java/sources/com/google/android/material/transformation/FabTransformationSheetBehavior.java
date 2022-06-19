package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1885a;
import p078c.p084c.p085a.p096b.p097m.C1904h;
import p078c.p084c.p085a.p096b.p097m.C1906j;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: i */
    private Map<View, Integer> f37644i;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: g0 */
    private void m3798g0(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (Build.VERSION.SDK_INT >= 16 && z) {
            this.f37644i = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0532e) && (((CoordinatorLayout.C0532e) childAt.getLayoutParams()).m33534f() instanceof FabTransformationScrimBehavior);
            if (childAt != view && !z2) {
                if (!z) {
                    Map<View, Integer> map = this.f37644i;
                    if (map != null && map.containsKey(childAt)) {
                        C1679w.m29347B0(childAt, this.f37644i.get(childAt).intValue());
                    }
                } else {
                    if (Build.VERSION.SDK_INT >= 16) {
                        this.f37644i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                    C1679w.m29347B0(childAt, 4);
                }
            }
        }
        if (z) {
            return;
        }
        this.f37644i = null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: H */
    public boolean mo3800H(View view, View view2, boolean z, boolean z2) {
        m3798g0(view2, z);
        return super.mo3800H(view, view2, z, z2);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: e0 */
    protected FabTransformationBehavior.C8353e mo3799e0(Context context, boolean z) {
        int i = z ? C1885a.mtrl_fab_transformation_sheet_expand_spec : C1885a.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.C8353e c8353e = new FabTransformationBehavior.C8353e();
        c8353e.f37637a = C1904h.m28737d(context, i);
        c8353e.f37638b = new C1906j(17, 0.0f, 0.0f);
        return c8353e;
    }
}
