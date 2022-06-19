package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeom.class */
public final class zzeom implements zzgla<zzeoh<zzeob>> {
    private final zzgln<zzeoa> zza;
    private final zzgln<Clock> zzb;

    public zzeom(zzgln<zzeoa> zzglnVar, zzgln<Clock> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeoh(((zzeoc) this.zza).zzb(), 10000L, this.zzb.zzb());
    }
}
