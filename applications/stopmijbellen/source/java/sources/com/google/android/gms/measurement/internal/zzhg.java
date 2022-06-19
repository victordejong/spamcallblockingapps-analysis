package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhg.class */
public final class zzhg implements Runnable {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzhw zzb;

    public zzhg(zzhw zzhwVar, Bundle bundle) {
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
        String string = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        String string2 = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN);
        Preconditions.checkNotEmpty(string);
        Preconditions.checkNotEmpty(string2);
        Preconditions.checkNotNull(bundle.get(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        if (!zzhwVar.zzs.zzF()) {
            C0608b.m7623l(zzhwVar.zzs, "Conditional property not set since app measurement is disabled");
            return;
        }
        zzkq zzkqVar = new zzkq(string, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get(AppMeasurementSdk.ConditionalUserProperty.VALUE), string2);
        try {
            zzas zzV = zzhwVar.zzs.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), string2, 0L, true, false);
            zzhwVar.zzs.zzy().zzm(new zzaa(bundle.getString("app_id"), string2, zzkqVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzhwVar.zzs.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), string2, 0L, true, false), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zzV, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzhwVar.zzs.zzl().zzV(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), string2, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
