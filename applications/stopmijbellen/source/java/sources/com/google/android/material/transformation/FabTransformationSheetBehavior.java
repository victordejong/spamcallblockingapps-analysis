package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import p029c4.C0821e;
import p090f3.C2733g;
import p163m0.C3589v;
import p163m0.C3611y;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: i */
    public Map<View, Integer> f6963i;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: A */
    public FabTransformationBehavior.C1846b mo4479A(Context context, boolean z) {
        int i = z ? 2130837535 : 2130837534;
        FabTransformationBehavior.C1846b c1846b = new FabTransformationBehavior.C1846b();
        c1846b.f6957a = C2733g.m3193b(context, i);
        c1846b.f6958b = new C0821e(17, 0.0f, 0.0f);
        return c1846b;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: t */
    public boolean mo4478t(View view, View view2, boolean z, boolean z2) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                this.f6963i = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0324f) && (((CoordinatorLayout.C0324f) childAt.getLayoutParams()).f1458a instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    if (!z) {
                        Map<View, Integer> map = this.f6963i;
                        if (map != null && map.containsKey(childAt)) {
                            int intValue = this.f6963i.get(childAt).intValue();
                            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                            C3589v.C3593d.m2075s(childAt, intValue);
                        }
                    } else {
                        this.f6963i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                        C3589v.C3593d.m2075s(childAt, 4);
                    }
                }
            }
            if (!z) {
                this.f6963i = null;
            }
        }
        super.mo4478t(view, view2, z, z2);
        return true;
    }
}
