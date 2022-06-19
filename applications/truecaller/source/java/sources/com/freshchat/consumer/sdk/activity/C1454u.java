package com.freshchat.consumer.sdk.activity;

import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p057j.C1685cj;
/* renamed from: com.freshchat.consumer.sdk.activity.u */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/u.class */
public class C1454u implements C1685cj.AbstractC1686a {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f4001be;

    public C1454u(ConversationDetailActivity conversationDetailActivity) {
        this.f4001be = conversationDetailActivity;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1685cj.AbstractC1686a
    /* renamed from: p */
    public void mo40012p(Message message) {
        this.f4001be.f3809lz.m39772A(message);
        this.f4001be.m41186n(message);
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1685cj.AbstractC1686a
    /* renamed from: q */
    public void mo40011q(Message message) {
        this.f4001be.m41267a(this.f4001be.f3809lz.m39756x(message));
    }
}
