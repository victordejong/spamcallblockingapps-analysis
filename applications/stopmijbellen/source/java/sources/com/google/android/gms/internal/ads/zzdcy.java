package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcy.class */
public final class zzdcy implements zzgpr<zzdlw<zzdfl>> {
    private final zzgqe<zzdjb> zza;
    private final zzgqe<Executor> zzb;

    public zzdcy(zzgqe<zzdjb> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdlw(this.zza.zzb(), this.zzb.zzb());
    }
}
