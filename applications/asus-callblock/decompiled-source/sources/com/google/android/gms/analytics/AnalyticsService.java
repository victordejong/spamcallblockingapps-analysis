package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.analytics.internal.zzak;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/AnalyticsService.class */
public final class AnalyticsService extends Service implements zzak.zza {

    /* renamed from: a  reason: collision with root package name */
    private zzak f3767a;

    private zzak a() {
        if (this.f3767a == null) {
            this.f3767a = new zzak(this);
        }
        return this.f3767a;
    }

    @Override // com.google.android.gms.analytics.internal.zzak.zza
    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.analytics.internal.zzak.zza
    public final Context getContext() {
        return this;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return a().onBind(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        a().onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        a().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return a().onStartCommand(intent, i, i2);
    }
}
