package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1919u;
/* renamed from: com.freshchat.consumer.sdk.service.c.s */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/s.class */
public class C1858s extends AbstractC1829a<C1919u, AbstractC1907k> {
    /* renamed from: a */
    public boolean m39419a(C1919u c1919u) {
        if (!C1731w.m39793ay(getContext())) {
            return false;
        }
        boolean m40964bl = m39479dw().m40964bl();
        long currentTimeMillis = System.currentTimeMillis();
        if (m40964bl) {
            String m40943cc = m39479dw().m40943cc();
            if (C1626as.isEmpty(m40943cc)) {
                return true;
            }
            long parseLong = Long.parseLong(m40943cc);
            boolean z = false;
            if (currentTimeMillis > parseLong) {
                z = false;
                if (C1719n.m39873c(parseLong, currentTimeMillis)) {
                    z = true;
                }
            }
            return z;
        }
        String m40920gP = m39479dw().m40920gP();
        if (C1626as.isEmpty(m40920gP)) {
            return true;
        }
        long parseLong2 = Long.parseLong(m40920gP);
        boolean z2 = false;
        if (currentTimeMillis > parseLong2) {
            z2 = false;
            if (C1719n.m39868e(parseLong2, currentTimeMillis)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: b */
    public AbstractC1907k mo39348b(C1919u c1919u) {
        boolean z;
        if (m39419a(c1919u)) {
            try {
                if (new C1528a(getContext()).m40618cX()) {
                    C1466e m39479dw = m39479dw();
                    if (m39479dw.m40964bl()) {
                        m39479dw.m40942cd();
                    } else {
                        m39479dw.m40919gQ();
                    }
                }
            } catch (DeletedException | Exception e) {
                C1723q.m39823a(e);
            }
            z = true;
        } else {
            z = false;
        }
        return new C1904h(z);
    }
}
