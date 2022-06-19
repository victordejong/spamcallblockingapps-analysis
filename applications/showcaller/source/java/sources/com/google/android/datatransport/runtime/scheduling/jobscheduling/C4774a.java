package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p235v.C4687a;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.p232h.p240z.C4754a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/a.class */
public class C4774a implements AbstractC4793r {

    /* renamed from: a */
    private final Context f14388a;

    /* renamed from: b */
    private final AbstractC4710c f14389b;

    /* renamed from: c */
    private AlarmManager f14390c;

    /* renamed from: d */
    private final SchedulerConfig f14391d;

    /* renamed from: e */
    private final AbstractC4746a f14392e;

    C4774a(Context context, AbstractC4710c abstractC4710c, AlarmManager alarmManager, AbstractC4746a abstractC4746a, SchedulerConfig schedulerConfig) {
        this.f14388a = context;
        this.f14389b = abstractC4710c;
        this.f14390c = alarmManager;
        this.f14392e = abstractC4746a;
        this.f14391d = schedulerConfig;
    }

    public C4774a(Context context, AbstractC4710c abstractC4710c, AbstractC4746a abstractC4746a, SchedulerConfig schedulerConfig) {
        this(context, abstractC4710c, (AlarmManager) context.getSystemService("alarm"), abstractC4746a, schedulerConfig);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r
    /* renamed from: a */
    public void mo21764a(AbstractC4673m abstractC4673m, int i) {
        mo21763b(abstractC4673m, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r
    /* renamed from: b */
    public void mo21763b(AbstractC4673m abstractC4673m, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", abstractC4673m.mo22023b());
        builder.appendQueryParameter("priority", String.valueOf(C4754a.m21846a(abstractC4673m.mo22021d())));
        if (abstractC4673m.mo22022c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(abstractC4673m.mo22022c(), 0));
        }
        Intent intent = new Intent(this.f14388a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z && m21801c(intent)) {
            C4687a.m21993a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", abstractC4673m);
            return;
        }
        long mo21932b0 = this.f14389b.mo21932b0(abstractC4673m);
        long m21808g = this.f14391d.m21808g(abstractC4673m.mo22021d(), mo21932b0, i);
        C4687a.m21992b("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", abstractC4673m, Long.valueOf(m21808g), Long.valueOf(mo21932b0), Integer.valueOf(i));
        this.f14390c.set(3, this.f14392e.mo21847a() + m21808g, PendingIntent.getBroadcast(this.f14388a, 0, intent, 0));
    }

    /* renamed from: c */
    boolean m21801c(Intent intent) {
        boolean z = false;
        if (PendingIntent.getBroadcast(this.f14388a, 0, intent, 536870912) != null) {
            z = true;
        }
        return z;
    }
}
