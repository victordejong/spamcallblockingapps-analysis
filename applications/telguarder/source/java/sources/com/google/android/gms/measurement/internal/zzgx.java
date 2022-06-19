package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgx.class */
public final class zzgx implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzhn zzb;

    public zzgx(zzhn zzhnVar, Bundle bundle) {
        this.zzb = zzhnVar;
        this.zza = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhn zzhnVar = this.zzb;
        Bundle bundle = this.zza;
        zzhnVar.zzg();
        zzhnVar.zzb();
        Preconditions.checkNotNull(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        Preconditions.checkNotEmpty(string);
        Preconditions.checkNotEmpty(string2);
        Preconditions.checkNotNull(bundle.get("value"));
        if (!zzhnVar.zzx.zzF()) {
            zzhnVar.zzx.zzat().zzk().zza("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkg zzkgVar = new zzkg(string, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get("value"), string2);
        try {
            zzas zzV = zzhnVar.zzx.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), string2, 0L, true, false);
            zzhnVar.zzx.zzy().zzm(new zzaa(bundle.getString("app_id"), string2, zzkgVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzhnVar.zzx.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), string2, 0L, true, false), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zzV, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzhnVar.zzx.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), string2, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
