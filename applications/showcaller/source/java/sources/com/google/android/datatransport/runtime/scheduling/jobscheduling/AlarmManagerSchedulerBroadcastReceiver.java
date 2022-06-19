package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.C4679r;
import com.google.android.datatransport.p232h.p240z.C4754a;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static /* synthetic */ void m21815a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C4679r.m22008f(context);
        AbstractC4673m.AbstractC4674a mo22016d = AbstractC4673m.m22024a().mo22018b(queryParameter).mo22016d(C4754a.m21845b(intValue));
        if (queryParameter2 != null) {
            mo22016d.mo22017c(Base64.decode(queryParameter2, 0));
        }
        C4679r.m22011c().m22009e().m21776g(mo22016d.mo22019a(), i, RunnableC4775b.m21800a());
    }
}
