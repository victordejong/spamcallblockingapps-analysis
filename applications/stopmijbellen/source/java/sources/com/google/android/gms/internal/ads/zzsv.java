package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsv.class */
public abstract class zzsv {
    private zzsu zza;
    private zzte zzb;

    public abstract zzsw zzi(zzim[] zzimVarArr, zzch zzchVar, zzpz zzpzVar, zzcd zzcdVar) throws zzgg;

    public abstract void zzj(Object obj);

    public final zzte zzk() {
        zzte zzteVar = this.zzb;
        Objects.requireNonNull(zzteVar);
        return zzteVar;
    }

    public final void zzl(zzsu zzsuVar, zzte zzteVar) {
        this.zza = zzsuVar;
        this.zzb = zzteVar;
    }

    public final void zzm() {
        zzsu zzsuVar = this.zza;
        if (zzsuVar != null) {
            zzsuVar.zzj();
        }
    }
}
