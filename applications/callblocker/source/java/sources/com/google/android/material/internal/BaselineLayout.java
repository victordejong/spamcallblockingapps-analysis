package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/BaselineLayout.class */
public class BaselineLayout extends ViewGroup {

    /* renamed from: a */
    private int f20292a = -1;

    public BaselineLayout(Context context) {
        super(context, null, 0);
    }

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public BaselineLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f20292a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = paddingLeft + (((((i3 - i) - paddingRight) - paddingLeft) - measuredWidth) / 2);
                int baseline = (this.f20292a == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f20292a + paddingTop) - childAt.getBaseline();
                childAt.layout(i6, baseline, measuredWidth + i6, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                int baseline = childAt.getBaseline();
                int i9 = i4;
                int i10 = i5;
                if (baseline != -1) {
                    i10 = Math.max(i5, baseline);
                    i9 = Math.max(i4, childAt.getMeasuredHeight() - baseline);
                }
                i7 = Math.max(i7, childAt.getMeasuredWidth());
                i6 = Math.max(i6, childAt.getMeasuredHeight());
                i3 = View.combineMeasuredStates(i3, childAt.getMeasuredState());
                i4 = i9;
                i5 = i10;
            }
        }
        int i11 = i6;
        if (i5 != -1) {
            i11 = Math.max(i6, Math.max(i4, getPaddingBottom()) + i5);
            this.f20292a = i5;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i7, getSuggestedMinimumWidth()), i, i3), View.resolveSizeAndState(Math.max(i11, getSuggestedMinimumHeight()), i2, i3 << 16));
    }
}
