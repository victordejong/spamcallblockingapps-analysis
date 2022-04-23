package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.CompoundMessage;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/AutomatedMessageHolder.class */
public class AutomatedMessageHolder extends RecyclerView.ViewHolder {
    public TextView body;

    public AutomatedMessageHolder(View view) {
        super(view);
        this.body = (TextView) view.findViewById(C0726R.C0729id.apptentive_message_auto_body);
    }

    public void bindView(RecyclerView recyclerView, CompoundMessage compoundMessage) {
        this.body.setText(compoundMessage.getBody());
    }
}
