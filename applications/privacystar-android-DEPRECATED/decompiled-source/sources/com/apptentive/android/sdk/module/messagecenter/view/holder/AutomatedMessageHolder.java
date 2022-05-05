package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.CompoundMessage;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/AutomatedMessageHolder.class */
public class AutomatedMessageHolder extends RecyclerView.ViewHolder {
    public TextView body;

    public AutomatedMessageHolder(View view) {
        super(view);
        this.body = (TextView) view.findViewById(C0724R.C0727id.apptentive_message_auto_body);
    }

    public void bindView(RecyclerView recyclerView, CompoundMessage compoundMessage) {
        this.body.setText(compoundMessage.getBody());
    }
}
