package com.freshchat.consumer.sdk.p062l;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.reqres.AgentAvailabilityResponse;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1683ch;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p062l.C1766c;
import java.util.TimeZone;
/* renamed from: com.freshchat.consumer.sdk.l.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/d.class */
public class RunnableC1769d implements Runnable {

    /* renamed from: iI */
    public final /* synthetic */ Context f4609iI;

    /* renamed from: px */
    public final /* synthetic */ String f4610px;

    /* renamed from: py */
    public final /* synthetic */ C1766c.AbstractC1767a f4611py;

    /* renamed from: pz */
    public final /* synthetic */ C1766c f4612pz;

    public RunnableC1769d(C1766c c1766c, Context context, String str, C1766c.AbstractC1767a abstractC1767a) {
        this.f4612pz = c1766c;
        this.f4609iI = context;
        this.f4610px = str;
        this.f4611py = abstractC1767a;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            AgentAvailabilityResponse m40622bp = new C1528a(this.f4609iI).m40622bp(this.f4610px);
            m40622bp.setProcessedCalendarDataMap(C1683ch.m40017a(TimeZone.getDefault(), m40622bp));
            this.f4612pz.m39611a(new RunnableC1770e(this, m40622bp));
        } catch (DeletedException | Exception e) {
            C1723q.m39823a(e);
            this.f4612pz.m39611a(new RunnableC1771f(this));
        }
    }
}
