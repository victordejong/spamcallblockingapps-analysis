package com.github.jdsjlzx.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/SimpleViewSwitcher.class */
public class SimpleViewSwitcher extends ViewGroup {
    public SimpleViewSwitcher(Context context) {
        super(context);
    }

    public SimpleViewSwitcher(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleViewSwitcher(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                childAt.layout(0, 0, i3 - i, i4 - i2);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            measureChild(childAt, i, i2);
            childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredWidth();
            i4 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(i3, i4);
    }

    public void setView(View view) {
        if (getChildCount() != 0) {
            removeViewAt(0);
        }
        new LinearLayout.LayoutParams(64, 64);
        addView(view);
    }
}
