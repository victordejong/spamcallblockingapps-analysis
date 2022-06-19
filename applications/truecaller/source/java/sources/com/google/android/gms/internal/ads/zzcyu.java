package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyu.class */
public final class zzcyu implements zzgla<zzcyt> {
    private final zzgln<Clock> zza;
    private final zzgln<zzcfy> zzb;

    public zzcyu(zzgln<Clock> zzglnVar, zzgln<zzcfy> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcyt(this.zza.zzb(), this.zzb.zzb());
    }
}
