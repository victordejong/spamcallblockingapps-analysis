package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqn.class */
public final class zzcqn implements zzezt {
    private final zzcqu zza;
    private final zzcqn zzb = this;
    private final zzgln<Context> zzc;
    private final zzgln<zzexo<zzdsb, zzdrw>> zzd;
    private final zzgln<zzezc> zze;
    private final zzgln<zzfam> zzf;
    private final zzgln<zzezm> zzg;
    private final zzgln<zzezw> zzh;
    private final zzgln<String> zzi;
    private final zzgln<zzezq> zzj;

    public /* synthetic */ zzcqn(zzcqu zzcquVar, Context context, String str, zzcql zzcqlVar) {
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzgln zzglnVar3;
        zzgln zzglnVar4;
        zzgln zzglnVar5;
        this.zza = zzcquVar;
        zzgla zza = zzglb.zza(context);
        this.zzc = zza;
        zzglnVar = zzcquVar.zzas;
        zzglnVar2 = zzcquVar.zzat;
        zzext zzextVar = new zzext(zza, zzglnVar, zzglnVar2);
        this.zzd = zzextVar;
        zzglnVar3 = zzcquVar.zzas;
        zzgln<zzezc> zza2 = zzgkz.zza(new zzezd(zzglnVar3));
        this.zze = zza2;
        zzgln<zzfam> zza3 = zzgkz.zza(zzfao.zza());
        this.zzf = zza3;
        zzglnVar4 = zzcquVar.zzp;
        zzglnVar5 = zzcquVar.zzN;
        zzgln<zzezm> zza4 = zzgkz.zza(new zzezn(zza, zzglnVar4, zzglnVar5, zzextVar, zza2, zzfat.zza(), zza3));
        this.zzg = zza4;
        this.zzh = zzgkz.zza(new zzezx(zza4, zza2, zza3));
        zzgla zzc = zzglb.zzc(str);
        this.zzi = zzc;
        this.zzj = zzgkz.zza(new zzezr(zzc, zza4, zza, zza2, zza3));
    }

    @Override // com.google.android.gms.internal.ads.zzezt
    public final zzezw zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzezt
    public final zzezq zzb() {
        return this.zzj.zzb();
    }
}
