package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.h.r;
import com.google.android.datatransport.p062h.AbstractC1304m;
import com.google.android.datatransport.p062h.p070z.C1327a;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static /* synthetic */ void m9107a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        r.f(context);
        AbstractC1304m.AbstractC1305a m9209a = AbstractC1304m.m9209a();
        m9209a.m9203b(queryParameter);
        m9209a.m9201d(C1327a.m9132b(intValue));
        if (queryParameter2 != null) {
            m9209a.m9202c(Base64.decode(queryParameter2, 0));
        }
        r.c().e().m9075g(m9209a.m9204a(), i, RunnableC1338b.m9084a());
    }
}
