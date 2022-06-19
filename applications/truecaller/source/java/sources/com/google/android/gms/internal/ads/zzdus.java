package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdus.class */
public final class zzdus implements zzgla<zzdur> {
    private final zzgln<zzazb> zza;
    private final zzgln<Map<zzfem, zzduq>> zzb;

    public zzdus(zzgln<zzazb> zzglnVar, zzgln<Map<zzfem, zzduq>> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzdur zzb() {
        return new zzdur(this.zza.zzb(), ((zzgle) this.zzb).zzb());
    }
}
