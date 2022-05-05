package com.apptentive.android.sdk.module.messagecenter.view;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.p004v7.widget.RecyclerView;
import android.util.AttributeSet;
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
