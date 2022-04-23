package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.a.j;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: a  reason: collision with root package name */
    private Map<View, Integer> f31025a;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    protected final FabTransformationBehavior.a a(Context context, boolean z) {
        int i = z ? a.C0485a.mtrl_fab_transformation_sheet_expand_spec : a.C0485a.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.a aVar = new FabTransformationBehavior.a();
        aVar.f31018a = h.a(context, i);
        aVar.f31019b = new j(17, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    public final boolean a(View view, View view2, boolean z, boolean z2) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f31025a = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.d) && (((CoordinatorLayout.d) childAt.getLayoutParams()).f1663a instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    if (!z) {
                        Map<View, Integer> map = this.f31025a;
                        if (map != null && map.containsKey(childAt)) {
                            v.c(childAt, this.f31025a.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f31025a.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        v.c(childAt, 4);
                    }
                }
            }
            if (!z) {
                this.f31025a = null;
            }
        }
        return super.a(view, view2, z, z2);
    }
}
