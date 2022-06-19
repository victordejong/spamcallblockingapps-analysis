package com.freshchat.consumer.sdk.p062l;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1646be;
import com.freshchat.consumer.sdk.p057j.C1731w;
import java.lang.ref.WeakReference;
/* renamed from: com.freshchat.consumer.sdk.l.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/c.class */
public class C1766c extends AbstractC1765b {

    /* renamed from: com.freshchat.consumer.sdk.l.c$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/c$a.class */
    public interface AbstractC1767a {
        /* renamed from: a */
        void mo39606a(AgentAvailabilityResponse agentAvailabilityResponse);

        /* renamed from: hU */
        void mo39605hU();
    }

    /* renamed from: com.freshchat.consumer.sdk.l.c$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/c$b.class */
    public interface AbstractC1768b {
        /* renamed from: hu */
        void mo39604hu();

        /* renamed from: o */
        void mo39603o(Message message);
    }

    /* renamed from: a */
    public void m39608a(AbstractC1768b abstractC1768b) {
        if (abstractC1768b == null) {
            return;
        }
        m39611a(new RunnableC1774i(this, abstractC1768b));
    }

    /* renamed from: a */
    public void m39610a(Context context, long j, AbstractC1768b abstractC1768b) {
        if (abstractC1768b == null) {
            return;
        }
        if (j <= 0) {
            m39608a(abstractC1768b);
            return;
        }
        C1646be.m40116eC().m40113gx().execute(new RunnableC1772g(this, new WeakReference(context), abstractC1768b, j));
    }

    /* renamed from: a */
    public void m39609a(Context context, String str, AbstractC1767a abstractC1767a) {
        if (!C1731w.m39793ay(context) || str == null || !C1618al.m40261aS(context)) {
            abstractC1767a.mo39605hU();
        } else {
            C1646be.m40116eC().m40114gZ().execute(new RunnableC1769d(this, context, str, abstractC1767a));
        }
    }
}
