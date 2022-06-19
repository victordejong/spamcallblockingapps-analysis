package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1894ap;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
/* renamed from: com.freshchat.consumer.sdk.service.c.ak */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ak.class */
public class C1840ak extends AbstractC1829a<C1894ap, AbstractC1907k> {
    /* renamed from: a */
    public boolean m39481a(C1894ap c1894ap) {
        return C1731w.m39793ay(getContext());
    }

    /* renamed from: b */
    public AbstractC1907k mo39348b(C1894ap c1894ap) {
        C1904h c1904h = new C1904h(true);
        boolean z = false;
        if (!m39481a(c1894ap)) {
            c1904h.setSuccess(false);
            return c1904h;
        } else if (!C1618al.m40261aS(getContext())) {
            c1904h.setSuccess(false);
            return c1904h;
        } else {
            try {
                z = new C1528a(getContext()).m40630a(c1894ap.m39343dn(), c1894ap.m39342fo(), c1894ap.getReferenceId());
            } catch (DeletedException e) {
                C1723q.m39823a(e);
            }
            c1904h.setSuccess(z);
            return c1904h;
        }
    }
}
