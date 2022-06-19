package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p364a.C14396h;
import com.google.android.material.p364a.C14398j;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: a */
    private Map<View, Integer> f54296a;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: a */
    protected final FabTransformationBehavior.C14867a mo9835a(Context context, boolean z) {
        int i = z ? C14376a.C14377a.mtrl_fab_transformation_sheet_expand_spec : C14376a.C14377a.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.C14867a c14867a = new FabTransformationBehavior.C14867a();
        c14867a.f54289a = C14396h.m11333a(context, i);
        c14867a.f54290b = new C14398j(17, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        return c14867a;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: a */
    public final boolean mo9834a(View view, View view2, boolean z, boolean z2) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f54296a = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0702d) && (((CoordinatorLayout.C0702d) childAt.getLayoutParams()).f3200a instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    if (!z) {
                        Map<View, Integer> map = this.f54296a;
                        if (map != null && map.containsKey(childAt)) {
                            C0926v.m44102c(childAt, this.f54296a.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f54296a.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        C0926v.m44102c(childAt, 4);
                    }
                }
            }
            if (!z) {
                this.f54296a = null;
            }
        }
        return super.mo9834a(view, view2, z, z2);
    }
}
