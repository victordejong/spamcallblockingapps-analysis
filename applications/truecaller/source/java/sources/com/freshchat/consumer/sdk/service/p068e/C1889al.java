package com.freshchat.consumer.sdk.service.p068e;

import android.os.Bundle;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.Status;
import com.freshchat.consumer.sdk.service.p066c.AbstractC1829a;
/* renamed from: com.freshchat.consumer.sdk.service.e.al */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/al.class */
public class C1889al extends AbstractC1829a<C1888ak, C1886ai> {
    /* renamed from: a */
    private void m39350a(String str, C1886ai c1886ai) {
        C1460a.m41036e(getContext(), m39347b(str, c1886ai));
    }

    /* renamed from: b */
    private Bundle m39347b(String str, C1886ai c1886ai) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("RESPONSE", c1886ai);
        bundle.putString("SEARCH_TERM", str);
        return bundle;
    }

    /* renamed from: a */
    public C1886ai mo39348b(C1888ak c1888ak) {
        Status status;
        C1886ai c1886ai = new C1886ai();
        String m39352iW = c1888ak.m39352iW();
        if (!m39349b(c1888ak)) {
            status = Status.ERROR;
        } else if (C1618al.m40261aS(getContext())) {
            C1886ai m40624b = new C1528a(getContext()).m40624b(c1888ak.m39353iU(), m39352iW, c1888ak.getTags());
            m39350a(m39352iW, m40624b);
            return m40624b;
        } else {
            status = Status.NO_INTERNET;
        }
        c1886ai.setStatus(status);
        m39350a(m39352iW, c1886ai);
        return c1886ai;
    }

    /* renamed from: b */
    public boolean m39349b(C1888ak c1888ak) {
        return C1731w.m39793ay(getContext()) && C1731w.m39792az(getContext()) && C1733y.m39775cp(getContext());
    }
}
