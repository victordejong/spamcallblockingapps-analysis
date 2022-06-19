package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfh.class */
public final class zzcfh implements zzgla<zzcfg> {
    private final zzgln<Context> zza;
    private final zzgln<zzced> zzb;

    public zzcfh(zzgln<Context> zzglnVar, zzgln<zzced> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcfg(this.zza.zzb(), ((zzcee) this.zzb).zzb());
    }
}
