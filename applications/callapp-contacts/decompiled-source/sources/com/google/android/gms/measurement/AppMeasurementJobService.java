package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.Cdo;
import com.google.android.gms.measurement.internal.es;
import com.google.android.gms.measurement.internal.ip;
import com.google.android.gms.measurement.internal.iq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements ip {

    /* renamed from: a  reason: collision with root package name */
    private iq<AppMeasurementJobService> f29388a;

    private final iq<AppMeasurementJobService> a() {
        if (this.f29388a == null) {
            this.f29388a = new iq<>(this);
        }
        return this.f29388a;
    }

    @Override // com.google.android.gms.measurement.internal.ip
    public final void a(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.ip
    public final void a(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.ip
    public final boolean a(int i) {
        throw new UnsupportedOperationException();
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(final JobParameters jobParameters) {
        final iq<AppMeasurementJobService> a2 = a();
        final Cdo c2 = es.a(a2.f29858a, (zzz) null, (Long) null).c();
        String string = jobParameters.getExtras().getString("action");
        c2.k.a("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        a2.a(new Runnable(a2, c2, jobParameters) { // from class: com.google.android.gms.measurement.internal.in

            /* renamed from: a  reason: collision with root package name */
            private final iq f29853a;

            /* renamed from: b  reason: collision with root package name */
            private final Cdo f29854b;

            /* renamed from: c  reason: collision with root package name */
            private final JobParameters f29855c;

            {
                this.f29853a = a2;
                this.f29854b = c2;
                this.f29855c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                iq iqVar = this.f29853a;
                Cdo doVar = this.f29854b;
                JobParameters jobParameters2 = this.f29855c;
                doVar.k.a("AppMeasurementJobService processed last upload request.");
                iqVar.f29858a.a(jobParameters2);
            }
        });
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        a().a(intent);
        return true;
    }
}
