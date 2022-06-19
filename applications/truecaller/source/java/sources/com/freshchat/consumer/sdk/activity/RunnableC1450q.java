package com.freshchat.consumer.sdk.activity;
/* renamed from: com.freshchat.consumer.sdk.activity.q */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/q.class */
public class RunnableC1450q implements Runnable {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3996be;

    public RunnableC1450q(ConversationDetailActivity conversationDetailActivity) {
        this.f3996be = conversationDetailActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3996be.m41302I().notifyDataSetChanged();
    }
}
