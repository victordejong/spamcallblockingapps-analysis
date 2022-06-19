package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.MarketingMessageStatus;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1878aa;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.a.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/k.class */
public class C1820k extends AbstractC1808d {
    public static final String TAG = "com.freshchat.consumer.sdk.service.a.k";

    public C1820k(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        try {
            C1613ai.m40284d(TAG, "Processing backlog - marketing message status");
            final C1805a m39516dt = m39516dt();
            final MarketingMessageStatus marketingMessageStatus = (MarketingMessageStatus) m39517ch().fromJson(m39516dt.getMeta().get("fc_marketing_metrics"), (Class<Object>) MarketingMessageStatus.class);
            C1878aa c1878aa = new C1878aa();
            c1878aa.m39363a(marketingMessageStatus);
            C1870d.m39383c(getContext(), c1878aa, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.a.k.1
                @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
                /* renamed from: a */
                public void mo39382a(AbstractC1907k abstractC1907k) {
                    if (abstractC1907k == null || !abstractC1907k.isSuccess()) {
                        return;
                    }
                    String str = C1820k.TAG;
                    StringBuilder m8728C = C22128a.m8728C("Marketing message status update from backlog successful ");
                    m8728C.append(marketingMessageStatus);
                    C1613ai.m40284d(str, m8728C.toString());
                    C1594aa.m40338l(C1820k.this.getContext(), m39516dt.m39528dr());
                }
            });
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
