package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.beans.reqres.ChannelsResponseTimeResponse;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1724r;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1897c;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
/* renamed from: com.freshchat.consumer.sdk.service.c.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/e.class */
public class C1844e extends AbstractC1829a<C1897c, AbstractC1907k> {
    /* renamed from: a */
    public boolean m39460a(C1897c c1897c) {
        boolean z = false;
        if (C1731w.m39793ay(getContext()) && C1731w.m39796aA(getContext())) {
            if (System.currentTimeMillis() - C1724r.m39818ey() > getRefreshIntervals().getResponseTimeExpectationsFetchInterval()) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: b */
    public AbstractC1907k mo39348b(C1897c c1897c) {
        ChannelsResponseTimeResponse channelsResponseTimeResponse;
        boolean z = true;
        if (!m39460a(c1897c)) {
            return new C1904h(true);
        }
        try {
            channelsResponseTimeResponse = new C1528a(getContext()).m40617cZ();
        } catch (DeletedException | Exception e) {
            C1723q.m39823a(e);
            z = false;
            channelsResponseTimeResponse = null;
        }
        if (z && channelsResponseTimeResponse != null) {
            C1724r.m39821a(getContext(), channelsResponseTimeResponse);
            C1460a.m41055X(getContext());
        }
        return new C1904h(z);
    }
}
