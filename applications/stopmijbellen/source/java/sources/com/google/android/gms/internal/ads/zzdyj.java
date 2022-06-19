package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyj.class */
public final class zzdyj implements zzgpr<zzdyi> {
    private final zzgqe<zzbay> zza;
    private final zzgqe<Map<zzfhy, zzdyh>> zzb;

    public zzdyj(zzgqe<zzbay> zzgqeVar, zzgqe<Map<zzfhy, zzdyh>> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzdyi zzb() {
        return new zzdyi(this.zza.zzb(), ((zzgpv) this.zzb).zzb());
    }
}
