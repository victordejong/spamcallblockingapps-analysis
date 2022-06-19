package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjz.class */
public abstract class zzjz {
    private zzjy zza;
    private zzki zzb;

    public abstract void zzi(Object obj);

    public abstract zzka zzj(zzahw[] zzahwVarArr, zzs zzsVar, zzhf zzhfVar, zzaiq zzaiqVar) throws zzaeg;

    public final void zzk(zzjy zzjyVar, zzki zzkiVar) {
        this.zza = zzjyVar;
        this.zzb = zzkiVar;
    }

    public final void zzl() {
        zzjy zzjyVar = this.zza;
        if (zzjyVar != null) {
            zzjyVar.zza();
        }
    }

    public final zzki zzm() {
        zzki zzkiVar = this.zzb;
        Objects.requireNonNull(zzkiVar);
        return zzkiVar;
    }
}
