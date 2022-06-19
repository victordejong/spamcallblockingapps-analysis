package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/BaselineLayout.class */
public class BaselineLayout extends ViewGroup {

    /* renamed from: a */
    private int f53280a = -1;

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
        return this.f53280a;
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
                int i6 = (((((i3 - i) - paddingRight) - paddingLeft) - measuredWidth) / 2) + paddingLeft;
                int baseline = (this.f53280a == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f53280a + paddingTop) - childAt.getBaseline();
                childAt.layout(i6, baseline, measuredWidth + i6, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = -1;
        int i9 = -1;
        while (true) {
            i3 = i9;
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            int i10 = i5;
            int i11 = i6;
            int i12 = i7;
            int i13 = i8;
            int i14 = i3;
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                int baseline = childAt.getBaseline();
                i13 = i8;
                i14 = i3;
                if (baseline != -1) {
                    i13 = Math.max(i8, baseline);
                    i14 = Math.max(i3, childAt.getMeasuredHeight() - baseline);
                }
                i11 = Math.max(i6, childAt.getMeasuredWidth());
                i10 = Math.max(i5, childAt.getMeasuredHeight());
                i12 = View.combineMeasuredStates(i7, childAt.getMeasuredState());
            }
            i4++;
            i5 = i10;
            i6 = i11;
            i7 = i12;
            i8 = i13;
            i9 = i14;
        }
        int i15 = i5;
        if (i8 != -1) {
            i15 = Math.max(i5, Math.max(i3, getPaddingBottom()) + i8);
            this.f53280a = i8;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i6, getSuggestedMinimumWidth()), i, i7), View.resolveSizeAndState(Math.max(i15, getSuggestedMinimumHeight()), i2, i7 << 16));
    }
}
