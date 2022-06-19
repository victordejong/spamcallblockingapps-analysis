package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavr.class */
public abstract class zzavr {
    private zzavq zza;

    public abstract zzavs zzc(zzapm[] zzapmVarArr, zzavd zzavdVar) throws zzaos;

    public abstract void zzd(Object obj);

    public final void zzf(zzavq zzavqVar) {
        this.zza = zzavqVar;
    }

    public final void zzg() {
        zzavq zzavqVar = this.zza;
        if (zzavqVar != null) {
            zzavqVar.zzf();
        }
    }
}
