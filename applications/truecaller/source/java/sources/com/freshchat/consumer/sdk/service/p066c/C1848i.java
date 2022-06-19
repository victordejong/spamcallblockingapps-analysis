package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.FreshchatCallbackStatus;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p068e.C1903g;
import com.freshchat.consumer.sdk.service.p068e.C1921w;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.service.c.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/i.class */
public class C1848i extends AbstractC1841b<C1903g, C1921w> {
    /* renamed from: a */
    public C1921w mo39348b(C1903g c1903g) {
        int i;
        FreshchatCallbackStatus freshchatCallbackStatus;
        C1511g c1511g;
        List<Channel> m40772d;
        C1921w c1921w = new C1921w();
        try {
            c1511g = new C1511g(getContext());
            m40772d = new C1506c(getContext()).m40772d(c1903g.m39333dG());
        } catch (Exception e) {
            freshchatCallbackStatus = FreshchatCallbackStatus.STATUS_ERROR;
            C1723q.m39823a(e);
            i = 0;
        }
        if (C1716k.m39902a(m40772d)) {
            Map<Long, Integer> m40723cF = c1511g.m40723cF();
            if (C1716k.m39894d(m40723cF)) {
                Iterator<Channel> it = m40772d.iterator();
                int i2 = 0;
                while (true) {
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Channel next = it.next();
                    if (m40723cF.containsKey(Long.valueOf(next.getId()))) {
                        i2 += m40723cF.get(Long.valueOf(next.getId())).intValue();
                    }
                }
                freshchatCallbackStatus = FreshchatCallbackStatus.STATUS_SUCCESS;
                c1921w.setSuccess(true);
                c1921w.setCount(i);
                c1921w.m39315a(freshchatCallbackStatus);
                return c1921w;
            }
        }
        i = 0;
        freshchatCallbackStatus = FreshchatCallbackStatus.STATUS_SUCCESS;
        c1921w.setSuccess(true);
        c1921w.setCount(i);
        c1921w.m39315a(freshchatCallbackStatus);
        return c1921w;
    }
}
