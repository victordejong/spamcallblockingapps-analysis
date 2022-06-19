package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdto.class */
public final class zzdto implements zzgla<zzazb> {
    private final zzgln<Context> zza;
    private final zzgln<String> zzb;
    private final zzgln<zzcgz> zzc;
    private final zzgln<zzazj> zzd;
    private final zzgln<String> zze;

    public zzdto(zzgln<Context> zzglnVar, zzgln<String> zzglnVar2, zzgln<zzcgz> zzglnVar3, zzgln<zzazj> zzglnVar4, zzgln<String> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcoo) this.zza).zza();
        String zzb = ((zzdze) this.zzb).zzb();
        zzcgz zza2 = ((zzcox) this.zzc).zza();
        zzazj zzb2 = this.zzd.zzb();
        String zzb3 = this.zze.zzb();
        zzazb zzazbVar = new zzazb(new zzazf(zza));
        zzbby zza3 = zzbbz.zza();
        zza3.zza(zza2.zzb);
        zza3.zzb(zza2.zzc);
        zza3.zzc(true != zza2.zzd ? 2 : 0);
        zzazbVar.zzb(new zzaza(zzb2, zzb, zza3.zzah(), zzb3) { // from class: com.google.android.gms.internal.ads.zzdtn
            private final zzazj zza;
            private final String zzb;
            private final zzbbz zzc;
            private final String zzd;

            {
                this.zza = zzb2;
                this.zzb = zzb;
                this.zzc = zzah;
                this.zzd = zzb3;
            }

            @Override // com.google.android.gms.internal.ads.zzaza
            public final void zza(zzbao zzbaoVar) {
                zzazj zzazjVar = this.zza;
                String str = this.zzb;
                zzbbz zzbbzVar = this.zzc;
                String str2 = this.zzd;
                zzazk zzau = zzbaoVar.zzg().zzau();
                zzau.zza(zzazjVar);
                zzbaoVar.zzh(zzau);
                zzbag zzau2 = zzbaoVar.zze().zzau();
                zzau2.zza(str);
                zzau2.zzb(zzbbzVar);
                zzbaoVar.zzf(zzau2);
                zzbaoVar.zzb(str2);
            }
        });
        return zzazbVar;
    }
}
