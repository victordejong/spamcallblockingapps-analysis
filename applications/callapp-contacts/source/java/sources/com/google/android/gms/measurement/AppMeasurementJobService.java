package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC14084ip;
import com.google.android.gms.measurement.internal.C13947do;
import com.google.android.gms.measurement.internal.C13979es;
import com.google.android.gms.measurement.internal.C14085iq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements AbstractC14084ip {

    /* renamed from: a */
    private C14085iq<AppMeasurementJobService> f51181a;

    /* renamed from: a */
    private final C14085iq<AppMeasurementJobService> m12137a() {
        if (this.f51181a == null) {
            this.f51181a = new C14085iq<>(this);
        }
        return this.f51181a;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14084ip
    /* renamed from: a */
    public final void mo11726a(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14084ip
    /* renamed from: a */
    public final void mo11725a(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14084ip
    /* renamed from: a */
    public final boolean mo11727a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m12137a().m11724a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m12137a().m11721b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m12137a().m11720b(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        C14085iq<AppMeasurementJobService> m12137a = m12137a();
        C13947do mo11661c = C13979es.m11997a(m12137a.f51913a, (zzz) null, (Long) null).mo11661c();
        String string = jobParameters.getExtras().getString("action");
        mo11661c.f51403k.m12091a("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            m12137a.m11722a(new Runnable(m12137a, mo11661c, jobParameters) { // from class: com.google.android.gms.measurement.internal.in

                /* renamed from: a */
                private final C14085iq f51908a;

                /* renamed from: b */
                private final C13947do f51909b;

                /* renamed from: c */
                private final JobParameters f51910c;

                {
                    this.f51908a = m12137a;
                    this.f51909b = mo11661c;
                    this.f51910c = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C14085iq c14085iq = this.f51908a;
                    C13947do c13947do = this.f51909b;
                    JobParameters jobParameters2 = this.f51910c;
                    c13947do.f51403k.m12092a("AppMeasurementJobService processed last upload request.");
                    c14085iq.f51913a.mo11726a(jobParameters2);
                }
            });
            return true;
        }
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        m12137a().m11723a(intent);
        return true;
    }
}
