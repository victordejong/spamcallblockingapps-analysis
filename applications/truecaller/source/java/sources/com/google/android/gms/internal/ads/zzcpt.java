package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpt.class */
public final class zzcpt implements zzeuy {
    private final zzcqu zza;
    private final zzcpt zzb = this;
    private final zzgln<Context> zzc;
    private final zzgln<String> zzd;
    private final zzgln<zzexo<zzcuk, zzcuq>> zze;
    private final zzgln<zzevv> zzf;
    private final zzgln<zzeup> zzg;
    private final zzgln<zzeuv> zzh;
    private final zzgln<zzexo<zzcuv, zzcva>> zzi;
    private final zzgln<zzevx> zzj;
    private final zzgln<zzewd> zzk;

    public /* synthetic */ zzcpt(zzcqu zzcquVar, Context context, String str, zzcql zzcqlVar) {
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzgln zzglnVar3;
        zzgln zzglnVar4;
        zzgln zzglnVar5;
        zzgln zzglnVar6;
        zzgln zzglnVar7;
        zzgln zzglnVar8;
        zzgln zzglnVar9;
        zzgln zzglnVar10;
        zzgln zzglnVar11;
        zzgln zzglnVar12;
        this.zza = zzcquVar;
        zzgla zza = zzglb.zza(context);
        this.zzc = zza;
        zzgla zza2 = zzglb.zza(str);
        this.zzd = zza2;
        zzglnVar = zzcquVar.zzas;
        zzglnVar2 = zzcquVar.zzat;
        zzexs zzexsVar = new zzexs(zza, zzglnVar, zzglnVar2);
        this.zze = zzexsVar;
        zzglnVar3 = zzcquVar.zzas;
        zzgln<zzevv> zza3 = zzgkz.zza(new zzevw(zzglnVar3));
        this.zzf = zza3;
        zzglnVar4 = zzcquVar.zzp;
        zzglnVar5 = zzcquVar.zzN;
        zzgln<zzeup> zza4 = zzgkz.zza(new zzeuq(zza, zzglnVar4, zzglnVar5, zzexsVar, zza3, zzfat.zza()));
        this.zzg = zza4;
        zzglnVar6 = zzcquVar.zzN;
        zzglnVar7 = zzcquVar.zzi;
        this.zzh = zzgkz.zza(new zzeuw(zzglnVar6, zza, zza2, zza4, zza3, zzglnVar7));
        zzglnVar8 = zzcquVar.zzas;
        zzglnVar9 = zzcquVar.zzat;
        zzexr zzexrVar = new zzexr(zza, zzglnVar8, zzglnVar9);
        this.zzi = zzexrVar;
        zzglnVar10 = zzcquVar.zzp;
        zzglnVar11 = zzcquVar.zzN;
        zzgln<zzevx> zza5 = zzgkz.zza(new zzevy(zza, zzglnVar10, zzglnVar11, zzexrVar, zza3, zzfat.zza()));
        this.zzj = zza5;
        zzglnVar12 = zzcquVar.zzN;
        this.zzk = zzgkz.zza(new zzewe(zzglnVar12, zza, zza2, zza5, zza3));
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final zzeuv zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final zzewd zzb() {
        return this.zzk.zzb();
    }
}
