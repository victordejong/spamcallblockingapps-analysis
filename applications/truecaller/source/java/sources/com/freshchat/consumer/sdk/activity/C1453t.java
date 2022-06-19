package com.freshchat.consumer.sdk.activity;

import android.net.ConnectivityManager;
import android.net.Network;
import com.freshchat.consumer.sdk.p057j.C1594aa;
/* renamed from: com.freshchat.consumer.sdk.activity.t */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/t.class */
public class C1453t extends ConnectivityManager.NetworkCallback {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f4000be;

    public C1453t(ConversationDetailActivity conversationDetailActivity) {
        this.f4000be = conversationDetailActivity;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        C1594aa.m40345c(this.f4000be.getContext(), true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        C1594aa.m40345c(this.f4000be.getContext(), false);
    }
}
