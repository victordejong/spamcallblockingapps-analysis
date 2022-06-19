package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeh.class */
public final class zzaeh implements zzaeq {
    private zzab zza;
    private zzfk zzb;
    private zzxt zzc;

    public zzaeh(String str) {
        zzz zzzVar = new zzz();
        zzzVar.zzS(str);
        this.zza = zzzVar.zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    public final void zza(zzfd zzfdVar) {
        zzdy.zzb(this.zzb);
        int i = zzfn.zza;
        long zzd = this.zzb.zzd();
        long zze = this.zzb.zze();
        if (zzd == -9223372036854775807L || zze == -9223372036854775807L) {
            return;
        }
        zzab zzabVar = this.zza;
        if (zze != zzabVar.zzq) {
            zzz zzb = zzabVar.zzb();
            zzb.zzW(zze);
            zzab zzY = zzb.zzY();
            this.zza = zzY;
            this.zzc.zzk(zzY);
        }
        int zza = zzfdVar.zza();
        zzxr.zzb(this.zzc, zzfdVar, zza);
        this.zzc.zzs(zzd, 1, zza, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    public final void zzb(zzfk zzfkVar, zzws zzwsVar, zzafd zzafdVar) {
        this.zzb = zzfkVar;
        zzafdVar.zzc();
        zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 5);
        this.zzc = zzv;
        zzv.zzk(this.zza);
    }
}
