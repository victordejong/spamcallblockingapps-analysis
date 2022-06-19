package com.freshchat.consumer.sdk.activity;

import android.widget.ProgressBar;
/* renamed from: com.freshchat.consumer.sdk.activity.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/h.class */
public class RunnableC1441h implements Runnable {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3974be;

    /* renamed from: ju */
    public final /* synthetic */ int f3975ju;

    public RunnableC1441h(ConversationDetailActivity conversationDetailActivity, int i) {
        this.f3974be = conversationDetailActivity;
        this.f3975ju = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        progressBar = this.f3974be.f3759aH;
        if (progressBar != null) {
            progressBar2 = this.f3974be.f3759aH;
            if (progressBar2.getVisibility() != 0) {
                return;
            }
            progressBar3 = this.f3974be.f3759aH;
            progressBar3.setMax(this.f3975ju);
        }
    }
}
