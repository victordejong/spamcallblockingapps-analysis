package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$animator;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p294f.p295a.C9174h;
import p081h.p203i.p204a.p294f.p295a.C9176j;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: g */
    public Map<View, Integer> f7704g;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: a */
    public FabTransformationBehavior.C3661e mo31144a(Context context, boolean z) {
        int i = z ? R$animator.mtrl_fab_transformation_sheet_expand_spec : R$animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.C3661e eVar = new FabTransformationBehavior.C3661e();
        eVar.f7698a = C9174h.m15961a(context, i);
        eVar.f7699b = new C9176j(17, 0.0f, 0.0f);
        return eVar;
    }

    /* renamed from: a */
    public final void m31142a(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f7704g = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z2) {
                    if (!z) {
                        Map<View, Integer> map = this.f7704g;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, this.f7704g.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f7704g.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    }
                }
            }
            if (!z) {
                this.f7704g = null;
            }
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: a */
    public boolean mo31143a(View view, View view2, boolean z, boolean z2) {
        m31142a(view2, z);
        return super.mo31143a(view, view2, z, z2);
    }
}
