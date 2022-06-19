package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvu.class */
public final class zzdvu implements zzgla<zzdvt> {
    private final zzgln<Clock> zza;

    public zzdvu(zzgln<Clock> zzglnVar) {
        this.zza = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdvt(this.zza.zzb());
    }
}
