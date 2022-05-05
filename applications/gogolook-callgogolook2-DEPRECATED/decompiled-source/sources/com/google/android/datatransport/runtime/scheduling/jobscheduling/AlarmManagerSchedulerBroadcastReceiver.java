package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.C6586r;
import p081h.p203i.p204a.p206b.p209j.p211b0.C6561a;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.RunnableC6627b;
/* loaded from: classes2-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static /* synthetic */ void m32213a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter(IapProductRealmObject.PRIORITY)).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C6586r.m22281a(context);
        AbstractC6580m.AbstractC6581a d = AbstractC6580m.m22292d();
        d.mo22289a(queryParameter);
        d.mo22290a(C6561a.m22343a(intValue));
        if (queryParameter2 != null) {
            d.mo22288a(Base64.decode(queryParameter2, 0));
        }
        C6586r.m22277b().m22282a().m22183a(d.mo22291a(), i, RunnableC6627b.m22215a());
    }
}
