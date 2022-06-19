package com.cocosw.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/HeaderLayout.class */
class HeaderLayout extends FrameLayout {

    /* renamed from: a */
    public int f5892a = 1;

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f5892a;
        if (i3 != 1) {
            i = View.MeasureSpec.makeMeasureSpec(i3, View.MeasureSpec.getMode(i));
        }
        super.onMeasure(i, i2);
    }
}
