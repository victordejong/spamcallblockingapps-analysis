package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewc.class */
public final class zzewc implements zzelx<zzcva> {
    public final /* synthetic */ zzewd zza;

    public zzewc(zzewd zzewdVar) {
        this.zza = zzewdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final /* bridge */ /* synthetic */ void zzb(zzcva zzcvaVar) {
        zzevv zzevvVar;
        zzevv zzevvVar2;
        zzcva zzcvaVar2 = zzcvaVar;
        synchronized (this.zza) {
            zzcva zzcvaVar3 = this.zza.zza;
            if (zzcvaVar3 != null) {
                zzcvaVar3.zzT();
            }
            zzewd zzewdVar = this.zza;
            zzewdVar.zza = zzcvaVar2;
            zzcvaVar2.zza(zzewdVar);
            zzevvVar = this.zza.zzg;
            zzewd zzewdVar2 = this.zza;
            zzevvVar2 = zzewdVar2.zzg;
            zzevvVar.zzm(new zzcvb(zzcvaVar2, zzewdVar2, zzevvVar2));
            zzcvaVar2.zzS();
        }
    }
}
