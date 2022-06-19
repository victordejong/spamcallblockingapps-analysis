package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.p047b.C1466e;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.j.ca */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ca.class */
public class RunnableC1675ca implements Runnable {

    /* renamed from: iI */
    public final /* synthetic */ Context f4466iI;

    /* renamed from: mO */
    public final /* synthetic */ C1669by f4467mO;

    /* renamed from: mP */
    public final /* synthetic */ boolean f4468mP;

    public RunnableC1675ca(C1669by c1669by, boolean z, Context context) {
        this.f4467mO = c1669by;
        this.f4468mP = z;
        this.f4466iI = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map m40051bO;
        if (this.f4468mP) {
            m40051bO = this.f4467mO.m40051bO(this.f4466iI);
            this.f4467mO.m40048c(this.f4466iI, C1466e.m40905i(this.f4466iI).m40966bj(), m40051bO);
        }
        this.f4467mO.m40046e(this.f4466iI, true);
    }
}
