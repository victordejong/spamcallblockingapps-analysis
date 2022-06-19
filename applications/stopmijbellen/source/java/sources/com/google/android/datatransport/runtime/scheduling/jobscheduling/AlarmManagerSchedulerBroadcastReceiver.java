package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import p027c2.RunnableC0813a;
import p028c3.C0816a;
import p250u2.AbstractC4469i;
import p250u2.C4456b;
import p250u2.C4474m;
import p293y2.C4997n;
import p293y2.RunnableC4990g;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final /* synthetic */ int f6215a = 0;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C4474m.m883b(context);
        AbstractC4469i.AbstractC4470a m893a = AbstractC4469i.m893a();
        m893a.mo888b(queryParameter);
        m893a.mo887c(C0816a.m7344b(intValue));
        if (queryParameter2 != null) {
            ((C4456b.C4458b) m893a).f13835b = Base64.decode(queryParameter2, 0);
        }
        C4997n c4997n = C4474m.m884a().f13859d;
        c4997n.f15224e.execute(new RunnableC4990g(c4997n, m893a.mo889a(), i, RunnableC0813a.f2991c));
    }
}
