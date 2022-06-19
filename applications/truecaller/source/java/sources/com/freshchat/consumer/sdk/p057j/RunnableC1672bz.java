package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.UserEvent;
import com.freshchat.consumer.sdk.p057j.C1669by;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.j.bz */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bz.class */
public class RunnableC1672bz implements Runnable {

    /* renamed from: iI */
    public final /* synthetic */ Context f4455iI;

    /* renamed from: mM */
    public final /* synthetic */ String f4456mM;

    /* renamed from: mN */
    public final /* synthetic */ Map f4457mN;

    /* renamed from: mO */
    public final /* synthetic */ C1669by f4458mO;

    public RunnableC1672bz(C1669by c1669by, Context context, String str, Map map) {
        this.f4458mO = c1669by;
        this.f4455iI = context;
        this.f4456mM = str;
        this.f4457mN = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map m40053b;
        C1669by.C1670a c1670a;
        try {
            this.f4458mO.m40063E(this.f4455iI, this.f4456mM);
            m40053b = this.f4458mO.m40053b(this.f4455iI, this.f4457mN);
            UserEvent userEvent = new UserEvent(this.f4456mM, m40053b, C1719n.m39866fP());
            c1670a = this.f4458mO.f4447mI;
            c1670a.m40043a(this.f4455iI, userEvent);
            this.f4458mO.m40049bQ(this.f4455iI);
            this.f4458mO.m40046e(this.f4455iI, false);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
