package com.allinone.callerid.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/MyListView.class */
public class MyListView extends ListView {
    public MyListView(Context context) {
        super(context);
    }

    public MyListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        try {
            i3 = View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE);
        } catch (Exception e) {
            e.printStackTrace();
            i3 = 0;
        }
        super.onMeasure(i, i3);
    }
}
