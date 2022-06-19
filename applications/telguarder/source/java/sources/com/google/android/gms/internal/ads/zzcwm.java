package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbsu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwm.class */
public final class zzcwm<AdT, AdapterT, ListenerT extends zzbsu> implements zzeqb<zzcwi<AdT, AdapterT, ListenerT>> {
    private final zzeqo<zzcro<AdapterT, ListenerT>> zzfqp;
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzcrr<AdT, AdapterT, ListenerT>> zzgwn;

    private zzcwm(zzeqo<zzdrj> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<zzcro<AdapterT, ListenerT>> zzeqoVar3, zzeqo<zzcrr<AdT, AdapterT, ListenerT>> zzeqoVar4) {
        this.zzfvi = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzfqp = zzeqoVar3;
        this.zzgwn = zzeqoVar4;
    }

    public static <AdT, AdapterT, ListenerT extends zzbsu> zzcwm<AdT, AdapterT, ListenerT> zzg(zzeqo<zzdrj> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<zzcro<AdapterT, ListenerT>> zzeqoVar3, zzeqo<zzcrr<AdT, AdapterT, ListenerT>> zzeqoVar4) {
        return new zzcwm<>(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcwi(this.zzfvi.get(), this.zzfux.get(), this.zzfqp.get(), this.zzgwn.get());
    }
}
