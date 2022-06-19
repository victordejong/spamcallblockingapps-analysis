package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior.class */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {
    private static final int STATE_COLLAPSED = 2;
    private static final int STATE_EXPANDED = 1;
    private static final int STATE_UNINITIALIZED = 0;
    private int currentState = 0;

    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r0 == 2) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean didStateChange(boolean r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L1f
            r0 = r3
            int r0 = r0.currentState
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1b
            r0 = r6
            r4 = r0
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L1d
        L1b:
            r0 = 1
            r4 = r0
        L1d:
            r0 = r4
            return r0
        L1f:
            r0 = r5
            r4 = r0
            r0 = r3
            int r0 = r0.currentState
            r1 = 1
            if (r0 != r1) goto L2b
            r0 = 1
            r4 = r0
        L2b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.ExpandableBehavior.didStateChange(boolean):boolean");
    }

    public static <T extends ExpandableBehavior> T from(View view, Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (!(behavior instanceof ExpandableBehavior)) {
                throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
            }
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    protected ExpandableWidget findExpandableWidget(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (ExpandableWidget) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        if (didStateChange(expandableWidget.isExpanded())) {
            this.currentState = expandableWidget.isExpanded() ? 1 : 2;
            return onExpandedStateChange((View) expandableWidget, view, expandableWidget.isExpanded(), true);
        }
        return false;
    }

    protected abstract boolean onExpandedStateChange(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, final View view, int i) {
        final ExpandableWidget findExpandableWidget;
        if (ViewCompat.isLaidOut(view) || (findExpandableWidget = findExpandableWidget(coordinatorLayout, view)) == null || !didStateChange(findExpandableWidget.isExpanded())) {
            return false;
        }
        int i2 = findExpandableWidget.isExpanded() ? 1 : 2;
        this.currentState = i2;
        final int i3 = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ExpandableBehavior.this.currentState == i3) {
                    ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                    ExpandableWidget expandableWidget = findExpandableWidget;
                    expandableBehavior.onExpandedStateChange((View) expandableWidget, view, expandableWidget.isExpanded(), false);
                    return false;
                }
                return false;
            }
        });
        return false;
    }
}
