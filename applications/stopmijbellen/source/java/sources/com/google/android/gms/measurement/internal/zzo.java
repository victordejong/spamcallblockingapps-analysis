package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzci;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzo.class */
final class zzo implements zzgv {
    public final zzci zza;
    public final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzo(AppMeasurementDynamiteService appMeasurementDynamiteService, zzci zzciVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzciVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgv
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.zza.zzd(str, str2, bundle, j);
        } catch (RemoteException e) {
            zzfu zzfuVar = this.zzb.zza;
            if (zzfuVar == null) {
                return;
            }
            zzfuVar.zzau().zze().zzb("Event listener threw exception", e);
        }
    }
}
