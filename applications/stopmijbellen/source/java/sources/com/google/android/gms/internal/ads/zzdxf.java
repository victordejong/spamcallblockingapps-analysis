package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxf.class */
public final class zzdxf implements zzgpr<zzbay> {
    private final zzgqe<Context> zza;
    private final zzgqe<String> zzb;
    private final zzgqe<zzcjf> zzc;
    private final zzgqe<zzbbg> zzd;
    private final zzgqe<String> zze;

    public zzdxf(zzgqe<Context> zzgqeVar, zzgqe<String> zzgqeVar2, zzgqe<zzcjf> zzgqeVar3, zzgqe<zzbbg> zzgqeVar4, zzgqe<String> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcqr) this.zza).zza();
        final String zzb = ((zzecv) this.zzb).zzb();
        zzcjf zza2 = ((zzcrb) this.zzc).zza();
        final zzbbg zzb2 = this.zzd.zzb();
        final String zzb3 = this.zze.zzb();
        zzbay zzbayVar = new zzbay(new zzbbc(zza));
        zzbdv zza3 = zzbdw.zza();
        zza3.zza(zza2.zzb);
        zza3.zzc(zza2.zzc);
        zza3.zzb(true != zza2.zzd ? 2 : 0);
        final zzbdw zzah = zza3.zzah();
        zzbayVar.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzdxe
            @Override // com.google.android.gms.internal.ads.zzbax
            public final void zza(zzbcl zzbclVar) {
                zzbbg zzbbgVar = zzbbg.this;
                String str = zzb;
                zzbdw zzbdwVar = zzah;
                String str2 = zzb3;
                zzbbh zzau = zzbclVar.zza().zzau();
                zzau.zza(zzbbgVar);
                zzbclVar.zze(zzau);
                zzbcd zzau2 = zzbclVar.zzb().zzau();
                zzau2.zza(str);
                zzau2.zzb(zzbdwVar);
                zzbclVar.zzg(zzau2);
                zzbclVar.zzh(str2);
            }
        });
        return zzbayVar;
    }
}
