package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1920v;
/* renamed from: com.freshchat.consumer.sdk.service.a.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/h.class */
public class C1815h extends AbstractC1808d {
    public C1815h(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        C1920v c1920v = new C1920v();
        final String m39528dr = m39516dt().m39528dr();
        c1920v.m39316t(m39528dr);
        C1870d.m39383c(getContext(), c1920v, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.a.h.1
            @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
            /* renamed from: a */
            public void mo39382a(AbstractC1907k abstractC1907k) {
                if (abstractC1907k == null || !abstractC1907k.isSuccess()) {
                    return;
                }
                C1594aa.m40338l(C1815h.this.getContext(), m39528dr);
            }
        });
    }
}
