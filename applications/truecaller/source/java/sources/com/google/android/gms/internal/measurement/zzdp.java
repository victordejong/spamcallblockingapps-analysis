package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdp.class */
public final class zzdp extends zzdt {
    public final /* synthetic */ zzdv zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdp(zzee zzeeVar, zzdv zzdvVar) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = zzdvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.registerOnMeasurementEventListener(this.zza);
    }
}
