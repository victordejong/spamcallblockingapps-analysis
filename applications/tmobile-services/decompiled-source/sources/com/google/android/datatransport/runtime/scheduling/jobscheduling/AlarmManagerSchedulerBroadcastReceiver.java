package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m15352a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter(Constants.FirelogAnalytics.PARAM_PRIORITY)).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        TransportRuntime.m15411f(context);
        TransportContext.Builder a = TransportContext.m15427a();
        a.mo15421b(queryParameter);
        a.mo15419d(PriorityMapping.m15186b(intValue));
        if (queryParameter2 != null) {
            a.mo15420c(Base64.decode(queryParameter2, 0));
        }
        TransportRuntime.m15414c().m15412e().m15319g(a.mo15422a(), i, AlarmManagerSchedulerBroadcastReceiver$$Lambda$1.m15351a());
    }
}
