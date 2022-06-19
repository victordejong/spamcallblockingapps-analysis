package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavs.class */
public final class zzavs {
    public final zzavd zza;
    public final zzavp zzb;
    public final Object zzc;
    public final zzapn[] zzd;

    public zzavs(zzavd zzavdVar, zzavp zzavpVar, Object obj, zzapn[] zzapnVarArr) {
        this.zza = zzavdVar;
        this.zzb = zzavpVar;
        this.zzc = obj;
        this.zzd = zzapnVarArr;
    }

    public final boolean zza(zzavs zzavsVar, int i) {
        return zzavsVar != null && zzaxb.zzo(this.zzb.zza(i), zzavsVar.zzb.zza(i)) && zzaxb.zzo(this.zzd[i], zzavsVar.zzd[i]);
    }
}
