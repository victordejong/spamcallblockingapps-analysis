package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.measurement.internal.AbstractC7829p8;
import com.google.android.gms.measurement.internal.C7840q8;
@TargetApi(24)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements AbstractC7829p8 {

    /* renamed from: d */
    private C7840q8<AppMeasurementJobService> f34959d;

    /* renamed from: c */
    private final C7840q8<AppMeasurementJobService> m6625c() {
        if (this.f34959d == null) {
            this.f34959d = new C7840q8<>(this);
        }
        return this.f34959d;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7829p8
    /* renamed from: B */
    public final boolean mo6097B(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7829p8
    /* renamed from: a */
    public final void mo6096a(@RecentlyNonNull Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7829p8
    @TargetApi(24)
    /* renamed from: b */
    public final void mo6095b(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m6625c().m6091a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        m6625c().m6090b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(@RecentlyNonNull Intent intent) {
        m6625c().m6084h(intent);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(@RecentlyNonNull JobParameters jobParameters) {
        m6625c().m6085g(jobParameters);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@RecentlyNonNull JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public boolean onUnbind(@RecentlyNonNull Intent intent) {
        m6625c().m6086f(intent);
        return true;
    }
}
