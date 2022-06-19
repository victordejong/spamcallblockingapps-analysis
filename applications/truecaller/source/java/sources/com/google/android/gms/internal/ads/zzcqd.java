package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqd.class */
public final class zzcqd implements zzdwj {
    private final Long zza;
    private final String zzb;
    private final zzcqu zzc;
    private final zzcqf zzd;
    private final zzcqd zze = this;

    public /* synthetic */ zzcqd(zzcqu zzcquVar, zzcqf zzcqfVar, Long l, String str, zzcql zzcqlVar) {
        this.zzc = zzcquVar;
        this.zzd = zzcqfVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdwj
    public final zzdwt zza() {
        Context context;
        zzdwm zzc;
        long longValue = this.zza.longValue();
        context = this.zzd.zza;
        zzc = zzdwn.zzc(this.zzd.zzb);
        return zzdwu.zza(longValue, context, zzc, this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdwj
    public final zzdwx zzb() {
        Context context;
        zzdwm zzc;
        long longValue = this.zza.longValue();
        context = this.zzd.zza;
        zzc = zzdwn.zzc(this.zzd.zzb);
        return zzdwy.zza(longValue, context, zzc, this.zzc, this.zzb);
    }
}
