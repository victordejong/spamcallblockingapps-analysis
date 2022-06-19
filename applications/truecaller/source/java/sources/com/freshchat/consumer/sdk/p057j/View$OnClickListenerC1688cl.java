package com.freshchat.consumer.sdk.p057j;

import android.view.View;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p057j.C1685cj;
/* renamed from: com.freshchat.consumer.sdk.j.cl */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cl.class */
public final class View$OnClickListenerC1688cl implements View.OnClickListener {

    /* renamed from: os */
    public final /* synthetic */ Message f4480os;

    /* renamed from: pQ */
    public final /* synthetic */ C1685cj.AbstractC1686a f4481pQ;

    public View$OnClickListenerC1688cl(C1685cj.AbstractC1686a abstractC1686a, Message message) {
        this.f4481pQ = abstractC1686a;
        this.f4480os = message;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1685cj.AbstractC1686a abstractC1686a = this.f4481pQ;
        if (abstractC1686a != null) {
            abstractC1686a.mo40011q(this.f4480os);
        }
    }
}
