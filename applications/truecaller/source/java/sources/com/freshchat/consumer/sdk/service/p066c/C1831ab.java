package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1619am;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p068e.C1882ae;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
/* renamed from: com.freshchat.consumer.sdk.service.c.ab */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ab.class */
public class C1831ab extends AbstractC1841b<C1882ae, C1904h> {
    /* renamed from: a */
    public C1904h mo39348b(C1882ae c1882ae) {
        Throwable e;
        C1466e m39479dw = m39479dw();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (m39479dw.m40941ce() > 0) {
                z = false;
                if (C1619am.m40256aV(getContext())) {
                    z = new C1528a(getContext()).m40610q(m39479dw.m40941ce());
                }
                z2 = z;
                z3 = z;
                m39479dw.m40940cf();
            }
        } catch (DeletedException e2) {
            e = e2;
            z = z3;
            C1723q.m39823a(e);
            return new C1904h(z);
        } catch (Exception e3) {
            e = e3;
            z = z2;
            C1723q.m39823a(e);
            return new C1904h(z);
        }
        return new C1904h(z);
    }
}
