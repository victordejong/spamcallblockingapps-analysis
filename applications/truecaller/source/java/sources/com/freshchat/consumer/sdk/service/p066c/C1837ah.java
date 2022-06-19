package com.freshchat.consumer.sdk.service.p066c;

import android.os.Bundle;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1477m;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.Status;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1890am;
import com.freshchat.consumer.sdk.service.p068e.C1892an;
/* renamed from: com.freshchat.consumer.sdk.service.c.ah */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ah.class */
public class C1837ah extends AbstractC1829a<C1890am, AbstractC1907k> {
    /* renamed from: a */
    private Bundle m39488a(C1892an c1892an) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("RESPONSE", c1892an);
        return bundle;
    }

    /* renamed from: b */
    private void m39486b(C1892an c1892an) {
        C1460a.m41034f(getContext(), m39488a(c1892an));
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1890am c1890am) {
        Status status;
        C1892an c1892an = new C1892an();
        if (!m39487b(c1890am)) {
            status = Status.ERROR;
        } else if (C1618al.m40261aS(getContext())) {
            String faqId = c1890am.getFaqId();
            String categoryId = c1890am.getCategoryId();
            String value = c1890am.m39346iX().getValue();
            String locale = c1890am.getLocale();
            String lastUpdatedAt = c1890am.getLastUpdatedAt();
            C1892an m40615d = new C1528a(getContext()).m40615d(categoryId, faqId, value, locale);
            if (m40615d.getStatus() == Status.SUCCESS) {
                new C1477m(getContext()).m40827c(categoryId, faqId, value, lastUpdatedAt);
            }
            m39486b(m40615d);
            return m40615d;
        } else {
            status = Status.NO_INTERNET;
        }
        c1892an.setStatus(status);
        m39486b(c1892an);
        return c1892an;
    }

    /* renamed from: b */
    public boolean m39487b(C1890am c1890am) {
        return C1731w.m39793ay(getContext()) && C1731w.m39792az(getContext()) && C1733y.m39775cp(getContext());
    }
}
