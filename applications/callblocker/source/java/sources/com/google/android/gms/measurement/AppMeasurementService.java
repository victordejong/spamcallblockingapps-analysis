package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.AbstractC4396iw;
import com.google.android.gms.measurement.internal.C4392is;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements AbstractC4396iw {

    /* renamed from: a */
    private C4392is<AppMeasurementService> f18564a;

    /* renamed from: a */
    private final C4392is<AppMeasurementService> m4840a() {
        if (this.f18564a == null) {
            this.f18564a = new C4392is<>(this);
        }
        return this.f18564a;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4396iw
    /* renamed from: a */
    public final void mo4292a(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4396iw
    /* renamed from: a */
    public final void mo4291a(Intent intent) {
        AppMeasurementReceiver.m20023a(intent);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4396iw
    /* renamed from: a */
    public final boolean mo4293a(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return m4840a().m4301a(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m4840a().m4304a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m4840a().m4297b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m4840a().m4294c(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return m4840a().m4300a(intent, i, i2);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return m4840a().m4296b(intent);
    }
}
