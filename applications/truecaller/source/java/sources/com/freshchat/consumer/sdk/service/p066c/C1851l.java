package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.p049c.C1488a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1909m;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.service.c.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/l.class */
public class C1851l extends AbstractC1841b<C1909m, AbstractC1907k> {
    private static String TAG = "FRESHCHAT";

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1909m c1909m) {
        boolean z;
        boolean z2;
        Exception e;
        if (!C1618al.m40261aS(getContext())) {
            return new C1904h(false);
        }
        boolean z3 = true;
        boolean z4 = true;
        try {
            C1594aa.m40342fF();
            List<C1805a> m40814cp = new C1488a(getContext()).m40814cp();
            if (C1613ai.m40287ck()) {
                C1613ai.m40284d(TAG, "*********************************************");
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("There are ");
                sb.append(m40814cp.size());
                sb.append(" back log events");
                C1613ai.m40284d(str, sb.toString());
                C1613ai.m40284d(TAG, "*********************************************");
            }
            Iterator<C1805a> it = m40814cp.iterator();
            while (true) {
                z4 = z3;
                z = z3;
                if (!it.hasNext()) {
                    break;
                }
                boolean z5 = z3;
                C1805a next = it.next();
                try {
                    C1613ai.m40281i(TAG, "Processing Backlog : " + next.getType() + " p: " + next.getPriority());
                    if (C1613ai.m40287ck()) {
                        C1613ai.m40284d(TAG, "#############################################");
                        C1613ai.m40284d(TAG, "Processing backlog " + next);
                        C1613ai.m40284d(TAG, "#############################################");
                    }
                    C1807c.m39527a(getContext(), next).mo39515ds();
                } catch (Exception e2) {
                    try {
                        C1723q.m39823a(e2);
                        z3 = false;
                    } catch (Exception e3) {
                        e = e3;
                        z2 = false;
                        C1723q.m39823a(e);
                        z = z2;
                        return new C1904h(z);
                    }
                }
            }
        } catch (Exception e4) {
            e = e4;
            z2 = z4;
        }
        return new C1904h(z);
    }
}
