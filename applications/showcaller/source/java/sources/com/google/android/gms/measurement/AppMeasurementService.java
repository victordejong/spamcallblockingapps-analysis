package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.AbstractC7829p8;
import com.google.android.gms.measurement.internal.C7840q8;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements AbstractC7829p8 {

    /* renamed from: d */
    private C7840q8<AppMeasurementService> f34961d;

    /* renamed from: c */
    private final C7840q8<AppMeasurementService> m6624c() {
        if (this.f34961d == null) {
            this.f34961d = new C7840q8<>(this);
        }
        return this.f34961d;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7829p8
    /* renamed from: B */
    public final boolean mo6097B(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7829p8
    /* renamed from: a */
    public final void mo6096a(@RecentlyNonNull Intent intent) {
        WakefulBroadcastReceiver.m32440b(intent);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7829p8
    /* renamed from: b */
    public final void mo6095b(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    @RecentlyNonNull
    public IBinder onBind(@RecentlyNonNull Intent intent) {
        return m6624c().m6087e(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m6624c().m6091a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        m6624c().m6090b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(@RecentlyNonNull Intent intent) {
        m6624c().m6084h(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(@RecentlyNonNull Intent intent, int i, int i2) {
        m6624c().m6089c(intent, i, i2);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(@RecentlyNonNull Intent intent) {
        m6624c().m6086f(intent);
        return true;
    }
}
