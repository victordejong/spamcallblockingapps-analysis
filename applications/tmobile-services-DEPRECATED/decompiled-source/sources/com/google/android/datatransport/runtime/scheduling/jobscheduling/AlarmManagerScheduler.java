package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler.class */
public class AlarmManagerScheduler implements WorkScheduler {

    /* renamed from: a */
    private final Context f6708a;

    /* renamed from: b */
    private final EventStore f6709b;

    /* renamed from: c */
    private AlarmManager f6710c;

    /* renamed from: d */
    private final SchedulerConfig f6711d;

    /* renamed from: e */
    private final Clock f6712e;

    @VisibleForTesting
    AlarmManagerScheduler(Context context, EventStore eventStore, AlarmManager alarmManager, Clock clock, SchedulerConfig schedulerConfig) {
        this.f6708a = context;
        this.f6709b = eventStore;
        this.f6710c = alarmManager;
        this.f6712e = clock;
        this.f6711d = schedulerConfig;
    }

    public AlarmManagerScheduler(Context context, EventStore eventStore, Clock clock, SchedulerConfig schedulerConfig) {
        this(context, eventStore, (AlarmManager) context.getSystemService("alarm"), clock, schedulerConfig);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    /* renamed from: a */
    public void mo15304a(TransportContext transportContext, int i) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", transportContext.mo15426b());
        builder.appendQueryParameter(Constants.FirelogAnalytics.PARAM_PRIORITY, String.valueOf(PriorityMapping.m15187a(transportContext.mo15424d())));
        if (transportContext.mo15425c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(transportContext.mo15425c(), 0));
        }
        Intent intent = new Intent(this.f6708a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (m15353b(intent)) {
            Logging.m15376a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", transportContext);
            return;
        }
        long k0 = this.f6709b.mo15249k0(transportContext);
        long g = this.f6711d.m15340g(transportContext.mo15424d(), k0, i);
        Logging.m15375b("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", transportContext, Long.valueOf(g), Long.valueOf(k0), Integer.valueOf(i));
        this.f6710c.set(3, this.f6712e.mo15188a() + g, PendingIntent.getBroadcast(this.f6708a, 0, intent, 0));
    }

    @VisibleForTesting
    /* renamed from: b */
    boolean m15353b(Intent intent) {
        boolean z = false;
        if (PendingIntent.getBroadcast(this.f6708a, 0, intent, 536870912) != null) {
            z = true;
        }
        return z;
    }
}
