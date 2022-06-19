package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdcm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejd.class */
public final class zzejd<AdT, AdapterT, ListenerT extends zzdcm> implements zzgla<zzejc<AdT, AdapterT, ListenerT>> {
    private final zzgln<zzfes> zza;
    private final zzgln<zzfsn> zzb;
    private final zzgln<zzeee<AdapterT, ListenerT>> zzc;
    private final zzgln<zzeek<AdT, AdapterT, ListenerT>> zzd;

    public zzejd(zzgln<zzfes> zzglnVar, zzgln<zzfsn> zzglnVar2, zzgln<zzeee<AdapterT, ListenerT>> zzglnVar3, zzgln<zzeek<AdT, AdapterT, ListenerT>> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    /* renamed from: zza */
    public final zzejc<AdT, AdapterT, ListenerT> zzb() {
        return new zzejc<>(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb());
    }
}
