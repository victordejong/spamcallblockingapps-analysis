package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.da */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/da.class */
public final class RunnableC1705da implements Runnable {

    /* renamed from: iI */
    public final /* synthetic */ Context f4499iI;

    /* renamed from: ny */
    public final /* synthetic */ C1649bg.AbstractC1651b f4500ny;

    public RunnableC1705da(Context context, C1649bg.AbstractC1651b abstractC1651b) {
        this.f4499iI = context;
        this.f4500ny = abstractC1651b;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4499iI == null) {
            C1613ai.m40283e("FRESHCHAT_WARNING", "context cannot be null while broadcasting event.");
            return;
        }
        try {
            C1460a.m41054a(this.f4499iI, C1649bg.m40089a(this.f4500ny.mo39980gy()));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
