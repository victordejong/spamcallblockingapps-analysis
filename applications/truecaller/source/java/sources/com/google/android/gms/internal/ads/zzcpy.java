package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpy.class */
public final class zzcpy implements zzewm {
    private final Context zza;
    private final zzbdl zzb;
    private final String zzc;
    private final zzcqu zzd;
    private final zzcpy zze = this;
    private final zzgln<Context> zzf;
    private final zzgln<zzbdl> zzg;
    private final zzgln<zzeli> zzh;
    private final zzgln<zzelm> zzi;
    private final zzgln<zzewj> zzj;

    public /* synthetic */ zzcpy(zzcqu zzcquVar, Context context, String str, zzbdl zzbdlVar, zzcql zzcqlVar) {
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzgln zzglnVar3;
        this.zzd = zzcquVar;
        this.zza = context;
        this.zzb = zzbdlVar;
        this.zzc = str;
        zzgla zza = zzglb.zza(context);
        this.zzf = zza;
        zzgla zza2 = zzglb.zza(zzbdlVar);
        this.zzg = zza2;
        zzglnVar = zzcquVar.zzo;
        zzgln<zzeli> zza3 = zzgkz.zza(new zzelj(zzglnVar));
        this.zzh = zza3;
        zzgln<zzelm> zza4 = zzgkz.zza(zzelo.zza());
        this.zzi = zza4;
        zzglnVar2 = zzcquVar.zzp;
        zzglnVar3 = zzcquVar.zzN;
        this.zzj = zzgkz.zza(new zzewk(zza, zzglnVar2, zza2, zzglnVar3, zza3, zza4, zzfat.zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzewm
    public final zzeko zza() {
        return new zzeko(this.zza, this.zzb, this.zzc, this.zzj.zzb(), this.zzh.zzb());
    }
}
