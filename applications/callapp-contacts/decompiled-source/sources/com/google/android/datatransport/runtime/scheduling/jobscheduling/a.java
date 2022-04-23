package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.scheduling.a.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/a.class */
public final class a implements s {

    /* renamed from: a  reason: collision with root package name */
    private final Context f20546a;

    /* renamed from: b  reason: collision with root package name */
    private final c f20547b;

    /* renamed from: c  reason: collision with root package name */
    private AlarmManager f20548c;

    /* renamed from: d  reason: collision with root package name */
    private final g f20549d;
    private final com.google.android.datatransport.runtime.d.a e;

    a(Context context, c cVar, AlarmManager alarmManager, com.google.android.datatransport.runtime.d.a aVar, g gVar) {
        this.f20546a = context;
        this.f20547b = cVar;
        this.f20548c = alarmManager;
        this.e = aVar;
        this.f20549d = gVar;
    }

    public a(Context context, c cVar, com.google.android.datatransport.runtime.d.a aVar, g gVar) {
        this(context, cVar, (AlarmManager) context.getSystemService("alarm"), aVar, gVar);
    }

    private boolean a(Intent intent) {
        return PendingIntent.getBroadcast(this.f20546a, 0, intent, 536870912) != null;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public final void a(l lVar, int i) {
        a(lVar, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public final void a(l lVar, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", lVar.a());
        builder.appendQueryParameter("priority", String.valueOf(com.google.android.datatransport.runtime.e.a.a(lVar.c())));
        if (lVar.b() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(lVar.b(), 0));
        }
        Intent intent = new Intent(this.f20546a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (z || !a(intent)) {
            long a2 = this.f20547b.a(lVar);
            long a3 = this.f20549d.a(lVar.c(), a2, i);
            com.google.android.datatransport.runtime.b.a.a("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", lVar, Long.valueOf(a3), Long.valueOf(a2), Integer.valueOf(i));
            this.f20548c.set(3, this.e.a() + a3, PendingIntent.getBroadcast(this.f20546a, 0, intent, 0));
            return;
        }
        com.google.android.datatransport.runtime.b.a.a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", lVar);
    }
}
