package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctn.class */
public final class zzctn implements zzgla<zzctm> {
    private final zzgln<Context> zza;
    private final zzgln<zzavz> zzb;

    public zzctn(zzgln<Context> zzglnVar, zzgln<zzavz> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzctm(((zzfbv) this.zza).zza(), this.zzb.zzb());
    }
}
