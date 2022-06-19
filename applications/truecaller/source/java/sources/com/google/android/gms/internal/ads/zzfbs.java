package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfbs.class */
public final class zzfbs implements zzgla<zzfbr> {
    private final zzgln<Context> zza;
    private final zzgln<zzcgi> zzb;

    public zzfbs(zzgln<Context> zzglnVar, zzgln<zzcgi> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfbr(((zzfbv) this.zza).zza(), ((zzfbw) this.zzb).zzb());
    }
}
