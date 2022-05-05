package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/MessageHolder.class */
public abstract class MessageHolder extends RecyclerView.ViewHolder {
    public TextView datestamp;

    public MessageHolder(View view) {
        super(view);
        this.datestamp = (TextView) view.findViewById(C0726R.C0729id.datestamp);
    }

    public void bindView(MessageCenterFragment messageCenterFragment, RecyclerView recyclerView, CompoundMessage compoundMessage) {
        String datestamp = compoundMessage.getDatestamp();
        this.datestamp.setText(datestamp);
        this.datestamp.setVisibility(!TextUtils.isEmpty(datestamp) ? 0 : 8);
    }
}
