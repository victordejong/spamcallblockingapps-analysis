package com.freshchat.consumer.sdk.service.p065b;

import android.content.Context;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p066c.AbstractC1849j;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.b.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/b/b.class */
public class C1826b {
    /* renamed from: a */
    private AbstractC1849j m39513a(Context context, AbstractC1906j abstractC1906j) {
        AbstractC1849j m39514a = C1825a.m39514a(abstractC1906j);
        if (m39514a != null) {
            m39514a.mo39444a(C1466e.m40905i(context));
            m39514a.setContext(context);
        } else {
            abstractC1906j.getClass().getSimpleName();
        }
        return m39514a;
    }

    /* renamed from: b */
    public void m39512b(Context context, AbstractC1906j abstractC1906j, AbstractC1804a abstractC1804a) {
        AbstractC1849j m39513a;
        if (abstractC1906j == null || (m39513a = m39513a(context, abstractC1906j)) == null) {
            return;
        }
        AbstractC1907k abstractC1907k = null;
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder m8728C = C22128a.m8728C("Now Processing ");
        m8728C.append(abstractC1906j.getClass().getSimpleName());
        C1613ai.m40281i("FRESHCHAT_SERVICE", m8728C.toString());
        try {
            abstractC1907k = m39513a.mo39348b(abstractC1906j);
        } catch (Exception e) {
            C1613ai.m40282e("ERROR", "Exception occured", e);
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        StringBuilder m8728C2 = C22128a.m8728C("Time taken to process ");
        m8728C2.append(abstractC1906j.getClass().getSimpleName());
        m8728C2.append(" = ");
        m8728C2.append(currentTimeMillis2 - currentTimeMillis);
        C1613ai.m40284d("FRESHCHAT_SERVICE", m8728C2.toString());
        if (abstractC1804a == null) {
            return;
        }
        abstractC1804a.mo39382a(abstractC1907k);
    }
}
