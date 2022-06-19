package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p067d.C1866a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1895b;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1924z;
/* renamed from: com.freshchat.consumer.sdk.service.c.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/d.class */
public class C1843d extends AbstractC1829a<C1895b, AbstractC1907k> {
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    private long m39463a(C1895b.EnumC1896a enumC1896a) {
        char c = 0;
        if (enumC1896a != C1895b.EnumC1896a.IMMEDIATE) {
            if (enumC1896a == C1895b.EnumC1896a.NORMAL) {
                c = getRefreshIntervals().getChannelsFetchIntervalNormal();
            } else if (enumC1896a == C1895b.EnumC1896a.LAID_BACK) {
                c = getRefreshIntervals().getChannelsFetchIntervalLaidback();
            }
        }
        return c;
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1895b c1895b) {
        if (!m39461b(c1895b)) {
            return new C1904h(false);
        }
        if (C1866a.m39397v(getContext())) {
            C1638b.m40150a(getContext(), C1924z.EnumC1925a.CHANNEL_ICONS);
        }
        return new C1904h(true);
    }

    /* renamed from: b */
    public boolean m39461b(C1895b c1895b) {
        if (C1731w.m39793ay(getContext()) && C1731w.m39796aA(getContext())) {
            if (C1612ah.m40295aP(getContext())) {
                return true;
            }
            String m40987bG = m39479dw().m40987bG();
            return C1626as.isEmpty(m40987bG) || System.currentTimeMillis() - Long.parseLong(m40987bG) > m39463a(c1895b.m39340dC());
        }
        return false;
    }
}
