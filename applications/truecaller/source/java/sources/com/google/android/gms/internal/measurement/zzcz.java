package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcz.class */
public final class zzcz extends zzdt {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcz(zzee zzeeVar, String str) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.endAdUnitExposure(this.zza, this.zzi);
    }
}
