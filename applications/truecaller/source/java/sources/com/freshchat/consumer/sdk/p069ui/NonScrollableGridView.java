package com.freshchat.consumer.sdk.p069ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
/* renamed from: com.freshchat.consumer.sdk.ui.NonScrollableGridView */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/NonScrollableGridView.class */
public class NonScrollableGridView extends GridView {
    public NonScrollableGridView(Context context) {
        super(context);
    }

    public NonScrollableGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NonScrollableGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }
}
