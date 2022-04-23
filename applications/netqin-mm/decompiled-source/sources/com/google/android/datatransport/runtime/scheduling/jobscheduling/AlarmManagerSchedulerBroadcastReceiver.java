package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.C2577r;
import p131c.p161d.p170b.p173b.p176i.p178b0.C2552a;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.RunnableC2615b;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static /* synthetic */ void m18737a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C2577r.m29490a(context);
        AbstractC2571m.AbstractC2572a d = AbstractC2571m.m29502d();
        d.mo29499a(queryParameter);
        d.mo29500a(C2552a.m29553a(intValue));
        if (queryParameter2 != null) {
            d.mo29498a(Base64.decode(queryParameter2, 0));
        }
        C2577r.m29486b().m29491a().m29417a(d.mo29501a(), i, RunnableC2615b.m29428a());
    }
}
