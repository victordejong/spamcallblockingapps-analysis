package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcft.class */
public final class zzcft implements zzeqb<zzcfi> {
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzchq> zzggo;

    public zzcft(zzeqo<zzdnp> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzchq> zzeqoVar3) {
        this.zzfvf = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzggo = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfi(this.zzfvf.get(), this.zzfux.get(), this.zzggo.get());
    }
}
