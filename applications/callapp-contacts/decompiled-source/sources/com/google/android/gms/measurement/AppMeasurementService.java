package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.Cdo;
import com.google.android.gms.measurement.internal.es;
import com.google.android.gms.measurement.internal.fl;
import com.google.android.gms.measurement.internal.ip;
import com.google.android.gms.measurement.internal.iq;
import com.google.android.gms.measurement.internal.jo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements ip {

    /* renamed from: a  reason: collision with root package name */
    private iq<AppMeasurementService> f29390a;

    private final iq<AppMeasurementService> a() {
        if (this.f29390a == null) {
            this.f29390a = new iq<>(this);
        }
        return this.f29390a;
    }

    @Override // com.google.android.gms.measurement.internal.ip
    public final void a(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.ip
    public final void a(Intent intent) {
        AppMeasurementReceiver.a(intent);
    }

    @Override // com.google.android.gms.measurement.internal.ip
    public final boolean a(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        iq<AppMeasurementService> a2 = a();
        if (intent == null) {
            a2.c().f29506c.a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new fl(jo.a(a2.f29858a), null);
        }
        a2.c().f.a("onBind received unknown action", action);
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        a().a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        a().b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        a().b(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, final int i2) {
        final iq<AppMeasurementService> a2 = a();
        final Cdo c2 = es.a(a2.f29858a, (zzz) null, (Long) null).c();
        if (intent == null) {
            c2.f.a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        c2.k.a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        a2.a(new Runnable(a2, i2, c2, intent) { // from class: com.google.android.gms.measurement.internal.im

            /* renamed from: a  reason: collision with root package name */
            private final iq f29849a;

            /* renamed from: b  reason: collision with root package name */
            private final int f29850b;

            /* renamed from: c  reason: collision with root package name */
            private final Cdo f29851c;

            /* renamed from: d  reason: collision with root package name */
            private final Intent f29852d;

            {
                this.f29849a = a2;
                this.f29850b = i2;
                this.f29851c = c2;
                this.f29852d = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                iq iqVar = this.f29849a;
                int i3 = this.f29850b;
                Cdo doVar = this.f29851c;
                Intent intent2 = this.f29852d;
                if (iqVar.f29858a.a(i3)) {
                    doVar.k.a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i3));
                    iqVar.c().k.a("Completed wakeful intent.");
                    iqVar.f29858a.a(intent2);
                }
            }
        });
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        a().a(intent);
        return true;
    }
}
