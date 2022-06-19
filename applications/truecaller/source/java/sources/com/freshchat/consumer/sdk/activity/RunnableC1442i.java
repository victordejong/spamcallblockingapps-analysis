package com.freshchat.consumer.sdk.activity;

import android.widget.ProgressBar;
/* renamed from: com.freshchat.consumer.sdk.activity.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/i.class */
public class RunnableC1442i implements Runnable {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3976be;

    /* renamed from: jv */
    public final /* synthetic */ int f3977jv;

    public RunnableC1442i(ConversationDetailActivity conversationDetailActivity, int i) {
        this.f3976be = conversationDetailActivity;
        this.f3977jv = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        progressBar = this.f3976be.f3759aH;
        if (progressBar != null) {
            progressBar2 = this.f3976be.f3759aH;
            if (progressBar2.getVisibility() != 0) {
                return;
            }
            progressBar3 = this.f3976be.f3759aH;
            progressBar3.setProgress(this.f3977jv);
        }
    }
}
