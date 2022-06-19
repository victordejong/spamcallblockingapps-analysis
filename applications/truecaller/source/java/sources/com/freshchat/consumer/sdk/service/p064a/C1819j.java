package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1923y;
/* renamed from: com.freshchat.consumer.sdk.service.a.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/j.class */
public class C1819j extends AbstractC1808d {
    public static final String TAG = "com.freshchat.consumer.sdk.service.a.j";

    public C1819j(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        C1805a m39516dt = m39516dt();
        try {
            String m39528dr = m39516dt.m39528dr();
            if (C1466e.m40905i(getContext()).m40964bl()) {
                C1923y c1923y = new C1923y();
                c1923y.m39313K(m39528dr);
                C1870d.m39385b(getContext(), c1923y);
                return;
            }
            String str = TAG;
            C1613ai.m40284d(str, "The user is not registered yet. Backlogging GCM device token to be processed later " + m39516dt);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
