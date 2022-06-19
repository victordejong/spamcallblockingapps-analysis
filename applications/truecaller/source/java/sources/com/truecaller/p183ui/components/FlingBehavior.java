package com.truecaller.p183ui.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: com.truecaller.ui.components.FlingBehavior */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FlingBehavior.class */
public class FlingBehavior extends AppBarLayout.Behavior {
    public FlingBehavior() {
    }

    public FlingBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: m */
    public boolean m34523m(CoordinatorLayout coordinatorLayout, View view, View view2, float f, float f2, boolean z) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        if (view2 instanceof NestedScrollView) {
            Math.abs(f2);
            return false;
        }
        return false;
    }
}
