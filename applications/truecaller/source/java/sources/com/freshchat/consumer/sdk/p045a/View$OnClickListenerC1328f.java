package com.freshchat.consumer.sdk.p045a;

import android.view.View;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.p045a.C1325e;
/* renamed from: com.freshchat.consumer.sdk.a.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/f.class */
public class View$OnClickListenerC1328f implements View.OnClickListener {

    /* renamed from: mZ */
    public final /* synthetic */ MessageFragment f3613mZ;

    /* renamed from: na */
    public final /* synthetic */ C1325e f3614na;

    public View$OnClickListenerC1328f(C1325e c1325e, MessageFragment messageFragment) {
        this.f3614na = c1325e;
        this.f3613mZ = messageFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1325e.AbstractC1326a abstractC1326a;
        long j;
        abstractC1326a = this.f3614na.f3610mY;
        j = this.f3614na.originalMessageId;
        abstractC1326a.mo41167a((QuickReplyButtonFragment) this.f3613mZ, j);
    }
}
