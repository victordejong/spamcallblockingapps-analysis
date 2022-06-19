package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsl.class */
public final class zzcsl implements zzeqb<zzcsg> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbmr> zzgtg;
    private final zzeqo<zzdvz<zzdmw, zzad>> zzgtq;

    public zzcsl(zzeqo<zzbmr> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<Executor> zzeqoVar3, zzeqo<zzchq> zzeqoVar4, zzeqo<zzdnp> zzeqoVar5, zzeqo<zzdvz<zzdmw, zzad>> zzeqoVar6) {
        this.zzgtg = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfux = zzeqoVar3;
        this.zzggo = zzeqoVar4;
        this.zzfvf = zzeqoVar5;
        this.zzgtq = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcsg(this.zzgtg.get(), this.zzewk.get(), this.zzfux.get(), this.zzggo.get(), this.zzfvf.get(), this.zzgtq.get());
    }
}
