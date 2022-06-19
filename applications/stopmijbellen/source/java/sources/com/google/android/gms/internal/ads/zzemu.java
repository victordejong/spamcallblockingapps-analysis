package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemu.class */
public final class zzemu<AdT, AdapterT, ListenerT extends zzdgb> implements zzgpr<zzemt<AdT, AdapterT, ListenerT>> {
    private final zzgqe<zzfie> zza;
    private final zzgqe<zzfxb> zzb;
    private final zzgqe<zzehv<AdapterT, ListenerT>> zzc;
    private final zzgqe<zzeib<AdT, AdapterT, ListenerT>> zzd;

    public zzemu(zzgqe<zzfie> zzgqeVar, zzgqe<zzfxb> zzgqeVar2, zzgqe<zzehv<AdapterT, ListenerT>> zzgqeVar3, zzgqe<zzeib<AdT, AdapterT, ListenerT>> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    /* renamed from: zza */
    public final zzemt<AdT, AdapterT, ListenerT> zzb() {
        return new zzemt<>(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb());
    }
}
