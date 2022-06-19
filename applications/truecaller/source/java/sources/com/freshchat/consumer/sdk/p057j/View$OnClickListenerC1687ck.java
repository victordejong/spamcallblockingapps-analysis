package com.freshchat.consumer.sdk.p057j;

import android.view.View;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p057j.C1685cj;
/* renamed from: com.freshchat.consumer.sdk.j.ck */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ck.class */
public final class View$OnClickListenerC1687ck implements View.OnClickListener {

    /* renamed from: os */
    public final /* synthetic */ Message f4478os;

    /* renamed from: pQ */
    public final /* synthetic */ C1685cj.AbstractC1686a f4479pQ;

    public View$OnClickListenerC1687ck(C1685cj.AbstractC1686a abstractC1686a, Message message) {
        this.f4479pQ = abstractC1686a;
        this.f4478os = message;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1685cj.AbstractC1686a abstractC1686a = this.f4479pQ;
        if (abstractC1686a != null) {
            abstractC1686a.mo40012p(this.f4478os);
        }
    }
}
