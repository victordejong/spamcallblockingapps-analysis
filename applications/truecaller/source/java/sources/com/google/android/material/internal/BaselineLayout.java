package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/internal/BaselineLayout.class */
public class BaselineLayout extends ViewGroup {

    /* renamed from: a */
    public int f6699a = -1;

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f6699a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = (((((i3 - i) - paddingRight) - paddingLeft) - measuredWidth) / 2) + paddingLeft;
                int baseline = (this.f6699a == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f6699a + paddingTop) - childAt.getBaseline();
                childAt.layout(i6, baseline, measuredWidth + i6, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = -1;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                int baseline = childAt.getBaseline();
                int i9 = i3;
                int i10 = i4;
                if (baseline != -1) {
                    i9 = Math.max(i3, baseline);
                    i10 = Math.max(i4, childAt.getMeasuredHeight() - baseline);
                }
                i6 = Math.max(i6, childAt.getMeasuredWidth());
                i7 = Math.max(i7, childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
                i4 = i10;
                i3 = i9;
            }
        }
        int i11 = i7;
        if (i3 != -1) {
            i11 = Math.max(i7, Math.max(i4, getPaddingBottom()) + i3);
            this.f6699a = i3;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i6, getSuggestedMinimumWidth()), i, i5), View.resolveSizeAndState(Math.max(i11, getSuggestedMinimumHeight()), i2, i5 << 16));
    }
}
