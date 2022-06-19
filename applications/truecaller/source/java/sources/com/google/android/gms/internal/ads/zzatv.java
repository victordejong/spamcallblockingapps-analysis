package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatv.class */
public final class zzatv {
    public final zzatg zza;
    public final zzats zzb;
    public final Object zzc;
    public final zzant[] zzd;

    public zzatv(zzatg zzatgVar, zzats zzatsVar, Object obj, zzant[] zzantVarArr) {
        this.zza = zzatgVar;
        this.zzb = zzatsVar;
        this.zzc = obj;
        this.zzd = zzantVarArr;
    }

    public final boolean zza(zzatv zzatvVar, int i) {
        return zzatvVar != null && zzave.zza(this.zzb.zza(i), zzatvVar.zzb.zza(i)) && zzave.zza(this.zzd[i], zzatvVar.zzd[i]);
    }
}
