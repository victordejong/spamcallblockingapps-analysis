package com.freshchat.consumer.sdk.service.p066c;

import android.os.Bundle;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.Status;
import com.freshchat.consumer.sdk.service.p068e.C1885ah;
import com.freshchat.consumer.sdk.service.p068e.C1886ai;
/* renamed from: com.freshchat.consumer.sdk.service.c.ag */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ag.class */
public class C1836ag extends AbstractC1829a<C1885ah, C1886ai> {
    /* renamed from: a */
    private Bundle m39492a(C1886ai c1886ai) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("RESPONSE", c1886ai);
        return bundle;
    }

    /* renamed from: b */
    private void m39490b(C1886ai c1886ai) {
        C1460a.m41043c(getContext(), m39492a(c1886ai));
    }

    /* renamed from: a */
    public C1886ai mo39348b(C1885ah c1885ah) {
        Status status;
        C1886ai c1886ai = new C1886ai();
        if (!m39491b(c1885ah)) {
            status = Status.ERROR;
        } else if (C1618al.m40261aS(getContext())) {
            C1886ai m40637a = new C1528a(getContext()).m40637a(c1885ah.m39357iU(), c1885ah.getCategoryId(), c1885ah.getTags());
            m39490b(m40637a);
            return m40637a;
        } else {
            status = Status.NO_INTERNET;
        }
        c1886ai.setStatus(status);
        m39490b(c1886ai);
        return c1886ai;
    }

    /* renamed from: b */
    public boolean m39491b(C1885ah c1885ah) {
        return C1731w.m39793ay(getContext()) && C1731w.m39792az(getContext()) && C1733y.m39775cp(getContext());
    }
}
