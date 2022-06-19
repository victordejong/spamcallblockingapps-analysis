package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.C10744q;
import com.google.android.datatransport.runtime.p321e.C10727a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static /* synthetic */ void m22355a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C10744q.m22440a(context);
        AbstractC10738l.AbstractC10739a mo22445a = AbstractC10738l.m22447d().mo22444a(queryParameter).mo22445a(C10727a.m22488a(intValue));
        if (queryParameter2 != null) {
            mo22445a.mo22443a(Base64.decode(queryParameter2, 0));
        }
        C10744q.m22441a().f34607a.m22333a(mo22445a.mo22446a(), i, RunnableC10801b.m22352a());
    }
}
