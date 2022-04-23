package com.apptentive.android.sdk.module.messagecenter.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/MessageCenterRecyclerView.class */
public class MessageCenterRecyclerView extends RecyclerView {
    public MessageCenterRecyclerView(Context context) {
        super(context);
    }

    public MessageCenterRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MessageCenterRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public int getFirstVisiblePosition() {
        return 0;
    }

    public int getLastVisiblePosition() {
        return 0;
    }

    public void setSelection(int i) {
    }

    public void setSelectionFromTop(int i, int i2) {
    }
}
