package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.C1298R;
/* renamed from: com.freshchat.consumer.sdk.activity.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/f.class */
public class View$OnClickListenerC1439f implements View.OnClickListener {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3972be;

    public View$OnClickListenerC1439f(ConversationDetailActivity conversationDetailActivity) {
        this.f3972be = conversationDetailActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ConversationDetailActivity conversationDetailActivity;
        boolean z;
        if (view.getId() == C1298R.C1300id.freshchat_chat_resolution_positive_btn) {
            conversationDetailActivity = this.f3972be;
            z = true;
        } else if (view.getId() != C1298R.C1300id.freshchat_chat_resolution_negative_btn) {
            return;
        } else {
            conversationDetailActivity = this.f3972be;
            z = false;
        }
        conversationDetailActivity.m41229b(z);
    }
}
