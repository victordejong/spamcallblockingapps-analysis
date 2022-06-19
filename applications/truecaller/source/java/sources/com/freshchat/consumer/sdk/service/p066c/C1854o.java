package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1913p;
/* renamed from: com.freshchat.consumer.sdk.service.c.o */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/o.class */
public class C1854o extends AbstractC1829a<C1913p, AbstractC1907k> {
    /* renamed from: a */
    public boolean m39437a(C1913p c1913p) {
        if (!C1731w.m39793ay(getContext())) {
            return false;
        }
        if (m39479dw().m40964bl()) {
            return true;
        }
        C1613ai.m40284d("FRESHCHAT", EnumC1464c.USER_NOT_REGISTERED_HEARTBEAT_NOT_SENT.toString());
        return false;
    }

    /* renamed from: b */
    public AbstractC1907k mo39348b(C1913p c1913p) {
        boolean z;
        try {
            Context context = getContext();
            z = false;
            if (m39437a(c1913p)) {
                z = false;
                if (C1618al.m40261aS(context)) {
                    z = new C1528a(context).m40619cW();
                }
            }
        } catch (DeletedException | Exception e) {
            C1723q.m39823a(e);
            z = false;
        }
        C1613ai.m40284d("FRESHCHAT", z ? "Registered user heartbeat." : EnumC1464c.USER_HEARTBEAT_NOT_SENT.toString());
        return new C1904h(true);
    }
}
