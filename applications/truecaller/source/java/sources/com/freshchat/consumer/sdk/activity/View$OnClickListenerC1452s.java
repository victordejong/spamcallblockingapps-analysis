package com.freshchat.consumer.sdk.activity;

import android.net.Uri;
import android.view.View;
import com.freshchat.consumer.sdk.activity.ConversationDetailActivity;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
/* renamed from: com.freshchat.consumer.sdk.activity.s */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/s.class */
public class View$OnClickListenerC1452s implements View.OnClickListener {

    /* renamed from: cZ */
    public final /* synthetic */ Uri f3998cZ;

    /* renamed from: hl */
    public final /* synthetic */ ConversationDetailActivity.C13827 f3999hl;

    public View$OnClickListenerC1452s(ConversationDetailActivity.C13827 c13827, Uri uri) {
        this.f3999hl = c13827;
        this.f3998cZ = uri;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DeepLinkUtils.m39281b(ConversationDetailActivity.this.getContext(), this.f3998cZ);
    }
}
