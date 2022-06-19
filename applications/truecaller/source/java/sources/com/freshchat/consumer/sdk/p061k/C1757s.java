package com.freshchat.consumer.sdk.p061k;

import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
import com.freshchat.consumer.sdk.p062l.C1766c;
import com.freshchat.consumer.sdk.service.AbstractC1828c;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.s */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/s.class */
public class C1757s implements C1766c.AbstractC1767a {

    /* renamed from: rw */
    public final /* synthetic */ AbstractC1828c f4581rw;

    /* renamed from: rx */
    public final /* synthetic */ C1756r f4582rx;

    public C1757s(C1756r c1756r, AbstractC1828c abstractC1828c) {
        this.f4582rx = c1756r;
        this.f4581rw = abstractC1828c;
    }

    @Override // com.freshchat.consumer.sdk.p062l.C1766c.AbstractC1767a
    /* renamed from: a */
    public void mo39606a(AgentAvailabilityResponse agentAvailabilityResponse) {
        List m39674jq;
        this.f4582rx.f4579ru = agentAvailabilityResponse;
        C1756r c1756r = this.f4582rx;
        m39674jq = c1756r.m39674jq();
        c1756r.f4580rv = m39674jq;
        this.f4582rx.m39678b(this.f4581rw);
    }

    @Override // com.freshchat.consumer.sdk.p062l.C1766c.AbstractC1767a
    /* renamed from: hU */
    public void mo39605hU() {
        this.f4582rx.m39677c(this.f4581rw);
    }
}
