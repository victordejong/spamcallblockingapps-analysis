package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
/* renamed from: com.freshchat.consumer.sdk.activity.bg */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/bg.class */
public class View$OnClickListenerC1427bg implements View.OnClickListener {

    /* renamed from: jj */
    public final /* synthetic */ CallbackButtonFragment f3942jj;

    /* renamed from: jk */
    public final /* synthetic */ BotFaqDetailsActivity f3943jk;

    public View$OnClickListenerC1427bg(BotFaqDetailsActivity botFaqDetailsActivity, CallbackButtonFragment callbackButtonFragment) {
        this.f3943jk = botFaqDetailsActivity;
        this.f3942jj = callbackButtonFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3943jk.m41358a(this.f3942jj);
    }
}
