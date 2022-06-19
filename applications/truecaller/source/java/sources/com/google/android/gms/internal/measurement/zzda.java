package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzda.class */
public final class zzda extends zzdt {
    public final /* synthetic */ zzbz zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzda(zzee zzeeVar, zzbz zzbzVar) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.getGmpAppId(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zzb() {
        this.zza.zzd(null);
    }
}
