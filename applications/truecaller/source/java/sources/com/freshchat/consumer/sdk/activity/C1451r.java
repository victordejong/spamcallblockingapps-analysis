package com.freshchat.consumer.sdk.activity;

import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.activity.ConversationDetailActivity;
import com.freshchat.consumer.sdk.p057j.AbstractC1693cq;
/* renamed from: com.freshchat.consumer.sdk.activity.r */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/r.class */
public class C1451r extends AbstractC1693cq {

    /* renamed from: cY */
    public final /* synthetic */ ConversationDetailActivity.C13816 f3997cY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1451r(ConversationDetailActivity.C13816 c13816, RecyclerView.AbstractC0317g abstractC0317g) {
        super(abstractC0317g);
        this.f3997cY = c13816;
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1693cq
    /* renamed from: ht */
    public void mo39993ht() {
        RecyclerView recyclerView;
        recyclerView = ConversationDetailActivity.this.f3753aB;
        recyclerView.scrollToPosition(ConversationDetailActivity.this.f3764aM.size() - 1);
    }
}
