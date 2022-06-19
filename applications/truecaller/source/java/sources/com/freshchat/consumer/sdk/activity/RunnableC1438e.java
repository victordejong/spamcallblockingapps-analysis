package com.freshchat.consumer.sdk.activity;

import android.view.View;
/* renamed from: com.freshchat.consumer.sdk.activity.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/e.class */
public class RunnableC1438e implements Runnable {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3970be;

    /* renamed from: cV */
    public final /* synthetic */ View f3971cV;

    public RunnableC1438e(ConversationDetailActivity conversationDetailActivity, View view) {
        this.f3970be = conversationDetailActivity;
        this.f3971cV = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view = this.f3971cV;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        this.f3971cV.setVisibility(8);
    }
}
