package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
/* renamed from: com.freshchat.consumer.sdk.service.a.n */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/n.class */
public class C1822n extends AbstractC1808d {
    public C1822n(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        try {
            C1638b.m40154a(getContext(), new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.a.n.1
                @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
                /* renamed from: a */
                public void mo39382a(AbstractC1907k abstractC1907k) {
                    if (abstractC1907k == null || !abstractC1907k.isSuccess()) {
                        return;
                    }
                    C1594aa.m40338l(C1822n.this.getContext(), C1822n.this.m39516dt().m39528dr());
                }
            });
        } catch (Throwable th) {
            C1723q.m39823a(th);
        }
    }
}
