package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p019c.C0463a;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    private int overlayTop;
    final Rect tempRect1 = new Rect();
    final Rect tempRect2 = new Rect();
    private int verticalLayoutGap = 0;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static int resolveGravity(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388659;
        }
        return i2;
    }

    abstract View findFirstDependency(List<View> list);

    public final int getOverlapPixelsForOffset(View view) {
        int i = 0;
        if (this.overlayTop != 0) {
            float overlapRatioForOffset = getOverlapRatioForOffset(view);
            int i2 = this.overlayTop;
            i = C0463a.m6545a((int) (overlapRatioForOffset * i2), 0, i2);
        }
        return i;
    }

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.overlayTop;
    }

    public int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    public final int getVerticalLayoutGap() {
        return this.verticalLayoutGap;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        View findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (findFirstDependency == null) {
            super.layoutChild(coordinatorLayout, view, i);
            this.verticalLayoutGap = 0;
            return;
        }
        CoordinatorLayout.C0399e c0399e = (CoordinatorLayout.C0399e) view.getLayoutParams();
        Rect rect = this.tempRect1;
        rect.set(coordinatorLayout.getPaddingLeft() + c0399e.leftMargin, findFirstDependency.getBottom() + c0399e.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - c0399e.rightMargin, ((coordinatorLayout.getHeight() + findFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - c0399e.bottomMargin);
        C0529ac lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && C0552u.m6227t(coordinatorLayout) && !C0552u.m6227t(view)) {
            rect.left += lastWindowInsets.m6367a();
            rect.right -= lastWindowInsets.m6362c();
        }
        Rect rect2 = this.tempRect2;
        C0533c.m6343a(resolveGravity(c0399e.f1525c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int overlapPixelsForOffset = getOverlapPixelsForOffset(findFirstDependency);
        view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
        this.verticalLayoutGap = rect2.top - findFirstDependency.getBottom();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View findFirstDependency;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) != null) {
            if (C0552u.m6227t(findFirstDependency) && !C0552u.m6227t(view)) {
                C0552u.m6255b(view, true);
                if (C0552u.m6227t(view)) {
                    view.requestLayout();
                    return true;
                }
            }
            int size = View.MeasureSpec.getSize(i3);
            int i6 = size;
            if (size == 0) {
                i6 = coordinatorLayout.getHeight();
            }
            int measuredHeight = findFirstDependency.getMeasuredHeight();
            coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec((i6 - measuredHeight) + getScrollRange(findFirstDependency), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }

    public final void setOverlayTop(int i) {
        this.overlayTop = i;
    }
}
