package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqf.class */
public final class zzcqf implements zzdwr {
    private final Context zza;
    private final zzbqm zzb;
    private final zzcqu zzc;
    private final zzcqf zzd = this;
    private final zzgln<zzdwr> zze;
    private final zzgln<zzbqm> zzf;
    private final zzgln<zzdwm> zzg;
    private final zzgln<zzdwo> zzh;

    public /* synthetic */ zzcqf(zzcqu zzcquVar, Context context, zzbqm zzbqmVar, zzcql zzcqlVar) {
        this.zzc = zzcquVar;
        this.zza = context;
        this.zzb = zzbqmVar;
        zzgla zza = zzglb.zza(this);
        this.zze = zza;
        zzgla zza2 = zzglb.zza(zzbqmVar);
        this.zzf = zza2;
        zzdwn zzdwnVar = new zzdwn(zza2);
        this.zzg = zzdwnVar;
        this.zzh = zzgkz.zza(new zzdwp(zza, zzdwnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdwr
    public final zzdwo zzc() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdwr
    public final zzdwi zzd() {
        return new zzcqc(this.zzc, this.zzd, null);
    }
}
