package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.p318b.C10692a;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.p321e.C10727a;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/a.class */
public final class C10800a implements AbstractC10824s {

    /* renamed from: a */
    private final Context f34707a;

    /* renamed from: b */
    private final AbstractC10762c f34708b;

    /* renamed from: c */
    private AlarmManager f34709c;

    /* renamed from: d */
    private final AbstractC10808g f34710d;

    /* renamed from: e */
    private final AbstractC10719a f34711e;

    C10800a(Context context, AbstractC10762c abstractC10762c, AlarmManager alarmManager, AbstractC10719a abstractC10719a, AbstractC10808g abstractC10808g) {
        this.f34707a = context;
        this.f34708b = abstractC10762c;
        this.f34709c = alarmManager;
        this.f34711e = abstractC10719a;
        this.f34710d = abstractC10808g;
    }

    public C10800a(Context context, AbstractC10762c abstractC10762c, AbstractC10719a abstractC10719a, AbstractC10808g abstractC10808g) {
        this(context, abstractC10762c, (AlarmManager) context.getSystemService("alarm"), abstractC10719a, abstractC10808g);
    }

    /* renamed from: a */
    private boolean m22353a(Intent intent) {
        return PendingIntent.getBroadcast(this.f34707a, 0, intent, 536870912) != null;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s
    /* renamed from: a */
    public final void mo22330a(AbstractC10738l abstractC10738l, int i) {
        mo22329a(abstractC10738l, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s
    /* renamed from: a */
    public final void mo22329a(AbstractC10738l abstractC10738l, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", abstractC10738l.mo22450a());
        builder.appendQueryParameter("priority", String.valueOf(C10727a.m22487a(abstractC10738l.mo22448c())));
        if (abstractC10738l.mo22449b() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(abstractC10738l.mo22449b(), 0));
        }
        Intent intent = new Intent(this.f34707a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z && m22353a(intent)) {
            C10692a.m22517a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", abstractC10738l);
            return;
        }
        long mo22393a = this.f34708b.mo22393a(abstractC10738l);
        long m22344a = this.f34710d.m22344a(abstractC10738l.mo22448c(), mo22393a, i);
        C10692a.m22515a("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", abstractC10738l, Long.valueOf(m22344a), Long.valueOf(mo22393a), Integer.valueOf(i));
        this.f34709c.set(3, this.f34711e.mo22491a() + m22344a, PendingIntent.getBroadcast(this.f34707a, 0, intent, 0));
    }
}
