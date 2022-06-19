package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.beans.CsatResponse;
import com.freshchat.consumer.sdk.beans.reqres.CsatResponseRequest;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1918t;
import java.util.HashMap;
/* renamed from: com.freshchat.consumer.sdk.service.c.r */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/r.class */
public class C1857r extends AbstractC1829a<C1918t, AbstractC1907k> {
    /* renamed from: b */
    private void m39421b(CsatResponseRequest csatResponseRequest) {
        try {
            CsatResponse csatResponse = csatResponseRequest.getCsatResponse();
            if (csatResponse != null && csatResponse.getConversationId() != 0) {
                String json = new C1597ab().toJson(csatResponseRequest);
                HashMap hashMap = new HashMap();
                hashMap.put("fc_csat_response", json);
                C1594aa.m40346c(getContext(), new C1805a(9, "csat_" + Long.toString(csatResponse.getConversationId())).m39529b(hashMap));
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    public boolean m39422a(C1918t c1918t) {
        return C1731w.m39793ay(getContext());
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009c, code lost:
        if (r9 != false) goto L18;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.AbstractC1907k mo39348b(com.freshchat.consumer.sdk.service.p068e.C1918t r6) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.service.p066c.C1857r.mo39348b(com.freshchat.consumer.sdk.service.e.t):com.freshchat.consumer.sdk.service.e.k");
    }
}
