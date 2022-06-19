package com.allinone.callerid.customview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/MyScrollViewDownList.class */
public class MyScrollViewDownList extends ScrollView {
    public MyScrollViewDownList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ScrollView
    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        return 0;
    }
}
