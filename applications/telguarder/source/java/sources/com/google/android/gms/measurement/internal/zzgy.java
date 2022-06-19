package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgy.class */
public final class zzgy implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzhn zzb;

    public zzgy(zzhn zzhnVar, Bundle bundle) {
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
        Preconditions.checkNotEmpty(bundle.getString("name"));
        if (!zzhnVar.zzx.zzF()) {
            zzhnVar.zzx.zzat().zzk().zza("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            zzhnVar.zzx.zzy().zzm(new zzaa(bundle.getString("app_id"), bundle.getString("origin"), new zzkg(bundle.getString("name"), 0L, null, null), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzhnVar.zzx.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
