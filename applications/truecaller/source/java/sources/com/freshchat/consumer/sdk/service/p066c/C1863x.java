package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.beans.MarketingMessageStatus;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1878aa;
import java.util.HashMap;
/* renamed from: com.freshchat.consumer.sdk.service.c.x */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/x.class */
public class C1863x extends AbstractC1829a<C1878aa, AbstractC1907k> {
    /* renamed from: c */
    private void m39403c(C1878aa c1878aa) {
        try {
            C1613ai.m40284d("FRESHCHAT", "Failed to update marketing message status. Backlogging");
            MarketingMessageStatus m39362dS = c1878aa.m39362dS();
            String json = new C1597ab().toJson(m39362dS);
            HashMap hashMap = new HashMap();
            hashMap.put("fc_marketing_metrics", json);
            C1594aa.m40346c(getContext(), new C1805a(6, String.valueOf(m39362dS.getMarketingId())).m39529b(hashMap));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    public boolean m39405a(C1878aa c1878aa) {
        return C1731w.m39793ay(getContext());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00cb  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.AbstractC1907k mo39348b(com.freshchat.consumer.sdk.service.p068e.C1878aa r7) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.service.p066c.C1863x.mo39348b(com.freshchat.consumer.sdk.service.e.aa):com.freshchat.consumer.sdk.service.e.k");
    }
}
