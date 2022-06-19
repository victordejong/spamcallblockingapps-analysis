package com.freshchat.consumer.sdk.p062l;

import com.freshchat.consumer.sdk.beans.Message;
/* renamed from: com.freshchat.consumer.sdk.l.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/h.class */
public class RunnableC1773h implements Runnable {

    /* renamed from: pE */
    public final /* synthetic */ Message f4620pE;

    /* renamed from: pF */
    public final /* synthetic */ RunnableC1772g f4621pF;

    public RunnableC1773h(RunnableC1772g runnableC1772g, Message message) {
        this.f4621pF = runnableC1772g;
        this.f4620pE = message;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4621pF.f4618pD.mo39603o(this.f4620pE);
    }
}
