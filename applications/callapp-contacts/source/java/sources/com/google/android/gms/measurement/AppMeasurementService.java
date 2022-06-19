package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC14084ip;
import com.google.android.gms.measurement.internal.BinderC13999fl;
import com.google.android.gms.measurement.internal.C13947do;
import com.google.android.gms.measurement.internal.C13979es;
import com.google.android.gms.measurement.internal.C14085iq;
import com.google.android.gms.measurement.internal.C14110jo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements AbstractC14084ip {

    /* renamed from: a */
    private C14085iq<AppMeasurementService> f51183a;

    /* renamed from: a */
    private final C14085iq<AppMeasurementService> m12136a() {
        if (this.f51183a == null) {
            this.f51183a = new C14085iq<>(this);
        }
        return this.f51183a;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14084ip
    /* renamed from: a */
    public final void mo11726a(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14084ip
    /* renamed from: a */
    public final void mo11725a(Intent intent) {
        AppMeasurementReceiver.m43339a(intent);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14084ip
    /* renamed from: a */
    public final boolean mo11727a(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        C14085iq<AppMeasurementService> m12136a = m12136a();
        if (intent == null) {
            m12136a.m11719c().f51395c.m12092a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new BinderC13999fl(C14110jo.m11687a(m12136a.f51913a), null);
        }
        m12136a.m11719c().f51398f.m12091a("onBind received unknown action", action);
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m12136a().m11724a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m12136a().m11721b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m12136a().m11720b(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        C14085iq<AppMeasurementService> m12136a = m12136a();
        C13947do mo11661c = C13979es.m11997a(m12136a.f51913a, (zzz) null, (Long) null).mo11661c();
        if (intent == null) {
            mo11661c.f51398f.m12092a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        mo11661c.f51403k.m12090a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m12136a.m11722a(new Runnable(m12136a, i2, mo11661c, intent) { // from class: com.google.android.gms.measurement.internal.im

            /* renamed from: a */
            private final C14085iq f51904a;

            /* renamed from: b */
            private final int f51905b;

            /* renamed from: c */
            private final C13947do f51906c;

            /* renamed from: d */
            private final Intent f51907d;

            {
                this.f51904a = m12136a;
                this.f51905b = i2;
                this.f51906c = mo11661c;
                this.f51907d = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C14085iq c14085iq = this.f51904a;
                int i3 = this.f51905b;
                C13947do c13947do = this.f51906c;
                Intent intent2 = this.f51907d;
                if (c14085iq.f51913a.mo11727a(i3)) {
                    c13947do.f51403k.m12091a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i3));
                    c14085iq.m11719c().f51403k.m12092a("Completed wakeful intent.");
                    c14085iq.f51913a.mo11725a(intent2);
                }
            }
        });
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        m12136a().m11723a(intent);
        return true;
    }
}
