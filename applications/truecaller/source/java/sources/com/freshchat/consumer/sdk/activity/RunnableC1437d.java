package com.freshchat.consumer.sdk.activity;

import android.view.View;
/* renamed from: com.freshchat.consumer.sdk.activity.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/d.class */
public class RunnableC1437d implements Runnable {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3968be;

    /* renamed from: cV */
    public final /* synthetic */ View f3969cV;

    public RunnableC1437d(ConversationDetailActivity conversationDetailActivity, View view) {
        this.f3968be = conversationDetailActivity;
        this.f3969cV = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view = this.f3969cV;
        if (view == null || view.getVisibility() == 0) {
            return;
        }
        this.f3969cV.setVisibility(0);
    }
}
