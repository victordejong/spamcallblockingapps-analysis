package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.AbstractC4396iw;
import com.google.android.gms.measurement.internal.C4392is;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements AbstractC4396iw {

    /* renamed from: a */
    private C4392is<AppMeasurementJobService> f18562a;

    /* renamed from: a */
    private final C4392is<AppMeasurementJobService> m4841a() {
        if (this.f18562a == null) {
            this.f18562a = new C4392is<>(this);
        }
        return this.f18562a;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4396iw
    @TargetApi(24)
    /* renamed from: a */
    public final void mo4292a(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4396iw
    /* renamed from: a */
    public final void mo4291a(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4396iw
    /* renamed from: a */
    public final boolean mo4293a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m4841a().m4304a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m4841a().m4297b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m4841a().m4294c(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return m4841a().m4302a(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return m4841a().m4296b(intent);
    }
}
