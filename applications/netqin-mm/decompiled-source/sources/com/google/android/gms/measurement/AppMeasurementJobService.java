package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzju;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements zzju {

    /* renamed from: a */
    public zzjq<AppMeasurementJobService> f29775a;

    /* renamed from: a */
    public final zzjq<AppMeasurementJobService> m9392a() {
        if (this.f29775a == null) {
            this.f29775a = new zzjq<>(this);
        }
        return this.f29775a;
    }

    @Override // com.google.android.gms.measurement.internal.zzju
    /* renamed from: a */
    public final void mo8864a(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.zzju
    /* renamed from: a */
    public final void mo8863a(Intent intent) {
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m9392a().m8878a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m9392a().m8871b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m9392a().m8868c(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return m9392a().m8876a(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return m9392a().m8870b(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzju
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }
}
