package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdov.class */
public final class zzdov implements zzgla<zzdou> {
    private final zzgln<zzbr> zza;
    private final zzgln<Clock> zzb;
    private final zzgln<Executor> zzc;

    public zzdov(zzgln<zzbr> zzglnVar, zzgln<Clock> zzglnVar2, zzgln<Executor> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbr zzb = this.zza.zzb();
        Clock zzb2 = this.zzb.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdou(zzb, zzb2, zzfsnVar);
    }
}
