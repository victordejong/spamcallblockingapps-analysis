package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/FullHeightLinearLayout.class */
public final class FullHeightLinearLayout extends LinearLayout {
    public FullHeightLinearLayout(Context context) {
        super(context);
    }

    public FullHeightLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FullHeightLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3 = i2;
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        super.onMeasure(i, i3);
    }
}
