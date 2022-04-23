package com.android.contacts.calllog;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallLogListItemView.class */
public class CallLogListItemView extends FrameLayout {
    public CallLogListItemView(Context context) {
        super(context);
    }

    public CallLogListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallLogListItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        forceLayout();
    }
}
