package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwx.class */
public final class zzcwx implements zzgla<zzcww> {
    private final zzgln<Context> zza;
    private final zzgln<zzcml> zzb;
    private final zzgln<zzezz> zzc;
    private final zzgln<zzcgz> zzd;

    public zzcwx(zzgln<Context> zzglnVar, zzgln<zzcml> zzglnVar2, zzgln<zzezz> zzglnVar3, zzgln<zzcgz> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcww(((zzfbv) this.zza).zza(), ((zzcwc) this.zzb).zza(), ((zzcxw) this.zzc).zza(), ((zzcox) this.zzd).zza());
    }
}
