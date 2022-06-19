package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.p142a.C4512h;
import com.google.android.material.p142a.C4514j;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: a */
    private Map<View, Integer> f20915a;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m2185a(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (Build.VERSION.SDK_INT >= 16 && z) {
            this.f20915a = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0426e) && (((CoordinatorLayout.C0426e) childAt.getLayoutParams()).m20929b() instanceof FabTransformationScrimBehavior);
            if (childAt != view && !z2) {
                if (z) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        this.f20915a.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                    C0595u.m20335b(childAt, 4);
                } else if (this.f20915a != null && this.f20915a.containsKey(childAt)) {
                    C0595u.m20335b(childAt, this.f20915a.get(childAt).intValue());
                }
            }
        }
        if (z) {
            return;
        }
        this.f20915a = null;
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: a */
    protected FabTransformationBehavior.C4849a mo2187a(Context context, boolean z) {
        int i = z ? C4492a.C4493a.mtrl_fab_transformation_sheet_expand_spec : C4492a.C4493a.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.C4849a c4849a = new FabTransformationBehavior.C4849a();
        c4849a.f20908a = C4512h.m3844a(context, i);
        c4849a.f20909b = new C4514j(17, 0.0f, 0.0f);
        return c4849a;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: a */
    public boolean mo2186a(View view, View view2, boolean z, boolean z2) {
        m2185a(view2, z);
        return super.mo2186a(view, view2, z, z2);
    }
}
