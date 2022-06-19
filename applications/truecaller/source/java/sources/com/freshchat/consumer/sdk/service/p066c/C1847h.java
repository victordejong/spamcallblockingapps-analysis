package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.beans.config.RefreshIntervals;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.p067d.C1872e;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1924z;
/* renamed from: com.freshchat.consumer.sdk.service.c.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/h.class */
public class C1847h extends AbstractC1829a<C1901f, AbstractC1907k> {
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private long m39448a(C1901f.EnumC1902a enumC1902a) {
        RefreshIntervals refreshIntervals = C1622ap.m40245bD(getContext()).getRefreshIntervals();
        return enumC1902a == C1901f.EnumC1902a.NORMAL ? refreshIntervals.getFaqFetchIntervalNormal() : enumC1902a == C1901f.EnumC1902a.LAID_BACK ? refreshIntervals.getFaqFetchIntervalLaidback() : (char) 0;
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1901f c1901f) {
        if (m39446b(c1901f) ? C1872e.m39376x(getContext()) : false) {
            C1460a.m41031h(getContext());
            C1638b.m40150a(getContext(), C1924z.EnumC1925a.FAQ_ICONS);
        }
        return new C1904h(true);
    }

    /* renamed from: b */
    public boolean m39446b(C1901f c1901f) {
        if (C1731w.m39793ay(getContext()) && C1731w.m39792az(getContext()) && !C1733y.m39775cp(getContext())) {
            if (C1612ah.m40296aO(getContext())) {
                return true;
            }
            String m40957br = m39479dw().m40957br();
            return C1626as.isEmpty(m40957br) || System.currentTimeMillis() - Long.parseLong(m40957br) > m39448a(c1901f.m39334dF());
        }
        return false;
    }
}
