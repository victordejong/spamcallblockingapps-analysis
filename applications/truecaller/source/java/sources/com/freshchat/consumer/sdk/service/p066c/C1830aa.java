package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1881ad;
/* renamed from: com.freshchat.consumer.sdk.service.c.aa */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/aa.class */
public class C1830aa extends AbstractC1829a<C1881ad, AbstractC1907k> {
    /* renamed from: c */
    private void m39506c(C1881ad c1881ad) {
        try {
            if (!c1881ad.m39359dT()) {
                return;
            }
            C1613ai.m40284d("FRESHCHAT", "Backlogging user session request failure");
            C1594aa.m40346c(getContext(), new C1805a(3));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    public boolean m39508a(C1881ad c1881ad) {
        if (!C1731w.m39793ay(getContext())) {
            return false;
        }
        if (m39479dw().m40964bl()) {
            return true;
        }
        C1613ai.m40284d("FRESHCHAT", EnumC1464c.USER_NOT_REGISTERED_ACTIVITY_NOT_SENT.toString());
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        if (r9 != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0084  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.AbstractC1907k mo39348b(com.freshchat.consumer.sdk.service.p068e.C1881ad r5) {
        /*
            r4 = this;
            r0 = r4
            android.content.Context r0 = r0.getContext()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = r5
            boolean r0 = r0.m39508a(r1)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            if (r0 == 0) goto L4e
            r0 = r4
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1618al.m40261aS(r0)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            if (r0 == 0) goto L35
            com.freshchat.consumer.sdk.e.a r0 = new com.freshchat.consumer.sdk.e.a     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            r10 = r0
            r0 = r10
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            r0 = r10
            boolean r0 = r0.m40620cV()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            r11 = r0
            goto L38
        L35:
            r0 = 0
            r11 = r0
        L38:
            r0 = r11
            if (r0 == 0) goto L4b
            java.lang.String r0 = "FRESHCHAT"
            java.lang.String r1 = "Registered user session"
            com.freshchat.consumer.sdk.p057j.C1613ai.m40284d(r0, r1)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L62 com.freshchat.consumer.sdk.exception.DeletedException -> L71
            r0 = r8
            r9 = r0
            goto L4e
        L4b:
            r0 = 1
            r9 = r0
        L4e:
            r0 = r9
            if (r0 == 0) goto L76
        L53:
            r0 = r4
            r1 = r5
            r0.m39506c(r1)
            goto L76
        L5b:
            r6 = move-exception
            r0 = 0
            r9 = r0
            goto L7f
        L62:
            r6 = move-exception
            r0 = r6
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L6a
            goto L53
        L6a:
            r6 = move-exception
            r0 = r7
            r9 = r0
            goto L7f
        L71:
            r6 = move-exception
            r0 = r6
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L5b
        L76:
            com.freshchat.consumer.sdk.service.e.h r0 = new com.freshchat.consumer.sdk.service.e.h     // Catch: java.lang.Throwable -> L5b
            r1 = r0
            r2 = 1
            r1.<init>(r2)
            return r0
        L7f:
            r0 = r9
            if (r0 == 0) goto L89
            r0 = r4
            r1 = r5
            r0.m39506c(r1)
        L89:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.service.p066c.C1830aa.mo39348b(com.freshchat.consumer.sdk.service.e.ad):com.freshchat.consumer.sdk.service.e.k");
    }
}
