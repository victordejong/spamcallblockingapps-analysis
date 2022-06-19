package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhm.class */
public final class zzdhm implements zzgla<zzehp> {
    private final zzdgp zza;
    private final zzgln<Clock> zzb;
    private final zzgln<zzehq> zzc;
    private final zzgln<zzeeh> zzd;

    public zzdhm(zzdgp zzdgpVar, zzgln<Clock> zzglnVar, zzgln<zzehq> zzglnVar2, zzgln<zzeeh> zzglnVar3) {
        this.zza = zzdgpVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
        this.zzd = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzehp zzq = this.zza.zzq(this.zzb.zzb(), ((zzehr) this.zzc).zzb(), this.zzd.zzb());
        zzgli.zzb(zzq);
        return zzq;
    }
}
