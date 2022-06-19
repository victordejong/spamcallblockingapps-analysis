package com.freshchat.consumer.sdk.p057j.p059b;

import com.freshchat.consumer.sdk.p057j.C1723q;
/* renamed from: com.freshchat.consumer.sdk.j.b.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/b/b.class */
public class RunnableC1640b implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            C1639a c1639a = new C1639a();
            if (!c1639a.m40133c("pool.ntp.org", 10000)) {
                return;
            }
            C1641c.m40130a(c1639a);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
