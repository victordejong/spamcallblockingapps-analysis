package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
/* renamed from: com.freshchat.consumer.sdk.service.a.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/f.class */
public class C1811f extends AbstractC1808d {
    public static final String TAG = "com.freshchat.consumer.sdk.service.a.f";

    public C1811f(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        C1805a m39516dt = m39516dt();
        try {
            C1511g c1511g = new C1511g(getContext());
            final String m39528dr = m39516dt.m39528dr();
            Message m40737X = c1511g.m40737X(m39528dr);
            if (m40737X == null) {
                return;
            }
            C1638b.m40158a(getContext(), m40737X, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.a.f.1
                @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
                /* renamed from: a */
                public void mo39382a(AbstractC1907k abstractC1907k) {
                    if (abstractC1907k != null) {
                        try {
                            if (abstractC1907k.isSuccess()) {
                                if (C1613ai.m40287ck()) {
                                    String str = C1811f.TAG;
                                    C1613ai.m40284d(str, "******************");
                                    C1613ai.m40284d(str, "Upload message success on backlog " + m39528dr + ". Removing entry");
                                    C1613ai.m40284d(str, "******************");
                                }
                                C1594aa.m40338l(C1811f.this.getContext(), m39528dr);
                                return;
                            }
                        } catch (Exception e) {
                            C1723q.m39823a(e);
                            return;
                        }
                    }
                    if (C1613ai.m40287ck()) {
                        String str2 = C1811f.TAG;
                        C1613ai.m40284d(str2, "XXXXXXXXXXXXXXXXXX");
                        C1613ai.m40284d(str2, "Could not upload message on backlog " + m39528dr + ". Keeping the entry");
                        C1613ai.m40284d(str2, "XXXXXXXXXXXXXXXXXX");
                    }
                }
            });
        } catch (Exception e) {
            String str = TAG;
            C1613ai.m40283e(str, "Create message failed for backlog " + m39516dt);
            C1723q.m39823a(e);
        }
    }
}
