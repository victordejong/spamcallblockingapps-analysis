package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzn.class */
public final class zzn implements zzgl {
    public final zzv zza;
    final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzn(AppMeasurementDynamiteService appMeasurementDynamiteService, zzv zzvVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgl
    public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.zza.zzd(str, str2, bundle, j);
        } catch (RemoteException e) {
            zzfl zzflVar = this.zzb.zza;
            if (zzflVar == null) {
                return;
            }
            zzflVar.zzat().zze().zzb("Event interceptor threw exception", e);
        }
    }
}
