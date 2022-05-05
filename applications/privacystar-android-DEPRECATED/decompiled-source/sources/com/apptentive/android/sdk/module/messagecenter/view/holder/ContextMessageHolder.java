package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.messagecenter.model.ContextMessage;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/ContextMessageHolder.class */
public class ContextMessageHolder extends RecyclerView.ViewHolder {
    private TextView bodyTextView;

    public ContextMessageHolder(View view) {
        super(view);
        this.bodyTextView = (TextView) view.findViewById(C0724R.C0727id.body);
    }

    public void bindView(ContextMessage contextMessage) {
        this.bodyTextView.setText(contextMessage.getBody());
    }
}
