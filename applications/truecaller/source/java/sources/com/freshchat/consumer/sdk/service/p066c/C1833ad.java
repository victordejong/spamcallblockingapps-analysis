package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1883af;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
/* renamed from: com.freshchat.consumer.sdk.service.c.ad */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ad.class */
public class C1833ad extends AbstractC1841b<C1883af, AbstractC1907k> {
    /* renamed from: a */
    public AbstractC1907k mo39348b(C1883af c1883af) {
        C1466e m40905i = C1466e.m40905i(getContext());
        if (!m40905i.m39913eO()) {
            return new C1904h(true);
        }
        C1613ai.m40281i("FRESHCHAT", "Prefs migration starting now");
        long m39866fP = C1719n.m39866fP();
        m40905i.m39915bo(getContext());
        C1613ai.m40281i("FRESHCHAT", "Prefs migration ended in " + (C1719n.m39866fP() - m39866fP) + "ms");
        return new C1904h(true);
    }
}
