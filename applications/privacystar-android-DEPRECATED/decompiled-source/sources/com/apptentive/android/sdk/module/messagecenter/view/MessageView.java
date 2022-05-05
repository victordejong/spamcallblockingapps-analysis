package com.apptentive.android.sdk.module.messagecenter.view;

import android.content.Context;
import android.widget.LinearLayout;
import com.apptentive.android.sdk.model.ApptentiveMessage;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/MessageView.class */
public abstract class MessageView<T extends ApptentiveMessage> extends LinearLayout implements MessageCenterListItemView {
    public MessageView(Context context, T t) {
        super(context);
        init(context, t);
    }

    protected void init(Context context, T t) {
    }
}
