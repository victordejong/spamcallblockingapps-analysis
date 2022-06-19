package com.allinone.callerid.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/BlockLinearLayout.class */
public class BlockLinearLayout extends LinearLayout {

    /* renamed from: d */
    private boolean f8446d = false;

    public BlockLinearLayout(Context context) {
        super(context);
    }

    public BlockLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BlockLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f8446d;
    }

    public void setClick(boolean z) {
        this.f8446d = z;
    }
}
