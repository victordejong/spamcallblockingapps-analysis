package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcec.class */
public final class zzcec implements zzgla<zzceb> {
    private final zzgln<Clock> zza;
    private final zzgln<zzg> zzb;
    private final zzgln<zzcfa> zzc;

    public zzcec(zzgln<Clock> zzglnVar, zzgln<zzg> zzglnVar2, zzgln<zzcfa> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzceb(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
