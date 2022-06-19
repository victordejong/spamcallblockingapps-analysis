package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24144j;
import p193e.p1577m.p1578a.p1580b.p1583j.C24163v;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24074t;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.RunnableC24050a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.RunnableC24053d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1592f0.C24138a;
/* loaded from: classes2-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final /* synthetic */ int f4834a = 0;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter(RemoteMessageConst.Notification.PRIORITY)).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C24163v.m5516c(context);
        AbstractC24158r.AbstractC24159a m5527a = AbstractC24158r.m5527a();
        m5527a.mo5522b(queryParameter);
        m5527a.mo5521c(C24138a.m5547b(intValue));
        if (queryParameter2 != null) {
            ((C24144j.C24146b) m5527a).f66864b = Base64.decode(queryParameter2, 0);
        }
        C24074t c24074t = C24163v.m5518a().f66897d;
        c24074t.f66736e.execute(new RunnableC24053d(c24074t, m5527a.mo5523a(), i, RunnableC24050a.f66687a));
    }
}
