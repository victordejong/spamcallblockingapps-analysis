package com.freshchat.consumer.sdk.activity;

import android.content.DialogInterface;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.activity.n */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/n.class */
public class DialogInterface$OnCancelListenerC1447n implements DialogInterface.OnCancelListener {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3989be;

    /* renamed from: hF */
    public final /* synthetic */ Csat f3990hF;

    /* renamed from: kJ */
    public final /* synthetic */ boolean f3991kJ;

    public DialogInterface$OnCancelListenerC1447n(ConversationDetailActivity conversationDetailActivity, Csat csat, boolean z) {
        this.f3989be = conversationDetailActivity;
        this.f3990hF = csat;
        this.f3991kJ = z;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f3989be.m41265a(this.f3990hF, this.f3991kJ);
        C1649bg.m40103a(this.f3989be.getContext(), this.f3989be.channelId, this.f3991kJ, 0, null);
        this.f3989be.m41258aY();
    }
}
