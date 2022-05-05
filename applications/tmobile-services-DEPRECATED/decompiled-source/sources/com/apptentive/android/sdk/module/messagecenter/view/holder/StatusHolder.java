package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.C0726R;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder.class */
public class StatusHolder extends RecyclerView.ViewHolder {
    public TextView body;
    public ImageView icon;

    public StatusHolder(View view) {
        super(view);
        this.body = (TextView) view.findViewById(C0726R.C0729id.status_body);
        this.icon = (ImageView) view.findViewById(C0726R.C0729id.icon);
    }
}
