package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcs.class */
public final class zzcs extends zzdt {
    public final /* synthetic */ Boolean zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcs(zzee zzeeVar, Boolean bool) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = bool;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzcc zzccVar2;
        if (this.zza != null) {
            zzccVar2 = this.zzb.zzj;
            Objects.requireNonNull(zzccVar2, "null reference");
            zzccVar2.setMeasurementEnabled(this.zza.booleanValue(), this.zzh);
            return;
        }
        zzccVar = this.zzb.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.clearMeasurementEnabled(this.zzh);
    }
}
