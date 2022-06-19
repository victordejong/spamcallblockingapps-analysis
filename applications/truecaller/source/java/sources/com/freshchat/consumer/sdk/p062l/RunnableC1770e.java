package com.freshchat.consumer.sdk.p062l;

import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
/* renamed from: com.freshchat.consumer.sdk.l.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/e.class */
public class RunnableC1770e implements Runnable {

    /* renamed from: pA */
    public final /* synthetic */ AgentAvailabilityResponse f4613pA;

    /* renamed from: pB */
    public final /* synthetic */ RunnableC1769d f4614pB;

    public RunnableC1770e(RunnableC1769d runnableC1769d, AgentAvailabilityResponse agentAvailabilityResponse) {
        this.f4614pB = runnableC1769d;
        this.f4613pA = agentAvailabilityResponse;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4614pB.f4611py.mo39606a(this.f4613pA);
    }
}
