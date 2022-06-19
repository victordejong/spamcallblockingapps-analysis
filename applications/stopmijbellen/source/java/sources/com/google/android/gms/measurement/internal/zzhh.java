package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhh.class */
public final class zzhh implements Runnable {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzhw zzb;

    public zzhh(zzhw zzhwVar, Bundle bundle) {
        this.zzb = zzhwVar;
        this.zza = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhw zzhwVar = this.zzb;
        Bundle bundle = this.zza;
        zzhwVar.zzg();
        zzhwVar.zzb();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        if (!zzhwVar.zzs.zzF()) {
            C0608b.m7623l(zzhwVar.zzs, "Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            zzhwVar.zzs.zzy().zzm(new zzaa(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), zzhwVar.zzs.zzc().zzn(null, zzea.zzax) ? new zzkq(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, "") : new zzkq(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, null), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzhwVar.zzs.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
