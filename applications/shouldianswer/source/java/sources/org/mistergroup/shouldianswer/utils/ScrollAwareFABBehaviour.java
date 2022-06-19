package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ScrollAwareFABBehaviour.class */
public final class ScrollAwareFABBehaviour extends FloatingActionButton.Behavior {

    /* renamed from: org.mistergroup.shouldianswer.utils.ScrollAwareFABBehaviour$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ScrollAwareFABBehaviour$a.class */
    public static final class C3073a extends FloatingActionButton.OnVisibilityChangedListener {
        C3073a() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
        public void onHidden(FloatingActionButton floatingActionButton) {
            super.onShown(floatingActionButton);
            if (floatingActionButton == null) {
                C1694h.m3124a();
            }
            floatingActionButton.setVisibility(4);
        }
    }

    public ScrollAwareFABBehaviour(Context context, AttributeSet attributeSet) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(attributeSet, "attrs");
    }

    /* renamed from: a */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4, int i5) {
        C1694h.m3117b(coordinatorLayout, "coordinatorLayout");
        C1694h.m3117b(floatingActionButton, "child");
        C1694h.m3117b(view, "target");
        super.onNestedScroll(coordinatorLayout, floatingActionButton, view, i, i2, i3, i4, i5);
        if (i2 > 0 && floatingActionButton.getVisibility() == 0) {
            floatingActionButton.hide(new C3073a());
        } else if (i2 >= 0 || floatingActionButton.getVisibility() == 0) {
        } else {
            floatingActionButton.show();
        }
    }

    /* renamed from: a */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, View view2, int i, int i2) {
        C1694h.m3117b(coordinatorLayout, "coordinatorLayout");
        C1694h.m3117b(floatingActionButton, "child");
        C1694h.m3117b(view, "directTargetChild");
        C1694h.m3117b(view2, "target");
        return i == 2;
    }
}
