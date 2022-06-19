package com.freshchat.consumer.sdk.p062l;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p062l.C1766c;
import java.lang.ref.WeakReference;
/* renamed from: com.freshchat.consumer.sdk.l.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/g.class */
public class RunnableC1772g implements Runnable {

    /* renamed from: fk */
    public final /* synthetic */ long f4616fk;

    /* renamed from: pC */
    public final /* synthetic */ WeakReference f4617pC;

    /* renamed from: pD */
    public final /* synthetic */ C1766c.AbstractC1768b f4618pD;

    /* renamed from: pz */
    public final /* synthetic */ C1766c f4619pz;

    public RunnableC1772g(C1766c c1766c, WeakReference weakReference, C1766c.AbstractC1768b abstractC1768b, long j) {
        this.f4619pz = c1766c;
        this.f4617pC = weakReference;
        this.f4618pD = abstractC1768b;
        this.f4616fk = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context = (Context) this.f4617pC.get();
        if (context == null) {
            this.f4619pz.m39608a(this.f4618pD);
            return;
        }
        Message m40741B = new C1511g(context).m40741B(this.f4616fk);
        if (m40741B == null) {
            this.f4619pz.m39608a(this.f4618pD);
        } else {
            this.f4619pz.m39611a(new RunnableC1773h(this, m40741B));
        }
    }
}
