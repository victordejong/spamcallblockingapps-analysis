package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
/* renamed from: com.freshchat.consumer.sdk.activity.bh */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/bh.class */
public class View$OnClickListenerC1428bh implements View.OnClickListener {

    /* renamed from: jk */
    public final /* synthetic */ BotFaqDetailsActivity f3944jk;

    /* renamed from: jl */
    public final /* synthetic */ CallbackButtonFragment f3945jl;

    public View$OnClickListenerC1428bh(BotFaqDetailsActivity botFaqDetailsActivity, CallbackButtonFragment callbackButtonFragment) {
        this.f3944jk = botFaqDetailsActivity;
        this.f3945jl = callbackButtonFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3944jk.m41358a(this.f3945jl);
    }
}
