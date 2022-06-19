package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqk.class */
public final class zzcqk implements zzeyf {
    private final zzcqu zza;
    private final zzcqk zzb = this;
    private final zzgln<Context> zzc;
    private final zzgln<zzbdl> zzd;
    private final zzgln<String> zze;
    private final zzgln<zzeli> zzf;
    private final zzgln<zzezc> zzg;
    private final zzgln<zzeyc> zzh;
    private final zzgln<zzelq> zzi;

    public /* synthetic */ zzcqk(zzcqu zzcquVar, Context context, String str, zzbdl zzbdlVar, zzcql zzcqlVar) {
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzgln zzglnVar3;
        zzgln zzglnVar4;
        this.zza = zzcquVar;
        zzgla zza = zzglb.zza(context);
        this.zzc = zza;
        zzgla zza2 = zzglb.zza(zzbdlVar);
        this.zzd = zza2;
        zzgla zza3 = zzglb.zza(str);
        this.zze = zza3;
        zzglnVar = zzcquVar.zzo;
        zzgln<zzeli> zza4 = zzgkz.zza(new zzelj(zzglnVar));
        this.zzf = zza4;
        zzglnVar2 = zzcquVar.zzas;
        zzgln<zzezc> zza5 = zzgkz.zza(new zzezd(zzglnVar2));
        this.zzg = zza5;
        zzglnVar3 = zzcquVar.zzp;
        zzglnVar4 = zzcquVar.zzN;
        zzgln<zzeyc> zza6 = zzgkz.zza(new zzeyd(zza, zzglnVar3, zzglnVar4, zza4, zza5, zzfat.zza()));
        this.zzh = zza6;
        this.zzi = zzgkz.zza(new zzelr(zza, zza2, zza3, zza6, zza4, zza5));
    }

    @Override // com.google.android.gms.internal.ads.zzeyf
    public final zzelq zza() {
        return this.zzi.zzb();
    }
}
