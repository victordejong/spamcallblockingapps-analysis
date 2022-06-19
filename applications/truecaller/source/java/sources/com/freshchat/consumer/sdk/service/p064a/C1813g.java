package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.reqres.CsatResponseRequest;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1918t;
/* renamed from: com.freshchat.consumer.sdk.service.a.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/g.class */
public class C1813g extends AbstractC1808d {
    public static final String TAG = "com.freshchat.consumer.sdk.service.a.g";

    public C1813g(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        try {
            C1805a m39516dt = m39516dt();
            CsatResponseRequest csatResponseRequest = (CsatResponseRequest) m39517ch().fromJson(m39516dt.getMeta().get("fc_csat_response"), (Class<Object>) CsatResponseRequest.class);
            final String m39528dr = m39516dt.m39528dr();
            C1918t c1918t = new C1918t();
            c1918t.m39319a(csatResponseRequest);
            C1870d.m39383c(getContext(), c1918t, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.a.g.1
                @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
                /* renamed from: a */
                public void mo39382a(AbstractC1907k abstractC1907k) {
                    if (abstractC1907k != null) {
                        try {
                            if (abstractC1907k.isSuccess()) {
                                String str = C1813g.TAG;
                                C1613ai.m40284d(str, "Csat upload success on backlog " + m39528dr + ". Removing entry");
                                C1594aa.m40338l(C1813g.this.getContext(), m39528dr);
                            }
                        } catch (Exception e) {
                            C1723q.m39823a(e);
                            return;
                        }
                    }
                    String str2 = C1813g.TAG;
                    C1613ai.m40284d(str2, "Could not upload csat on backlog " + m39528dr + ". Keeping the entry");
                }
            });
        } catch (Exception e) {
        }
    }
}
