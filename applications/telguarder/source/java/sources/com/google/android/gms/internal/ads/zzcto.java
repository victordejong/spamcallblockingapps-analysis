package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcto.class */
public final class zzcto implements zzeqb<zzctf> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbzy> zzgtg;

    public zzcto(zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3, zzeqo<Executor> zzeqoVar4, zzeqo<zzbzy> zzeqoVar5, zzeqo<zzchq> zzeqoVar6) {
        this.zzewk = zzeqoVar;
        this.zzftb = zzeqoVar2;
        this.zzfvf = zzeqoVar3;
        this.zzfux = zzeqoVar4;
        this.zzgtg = zzeqoVar5;
        this.zzggo = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzctf(this.zzewk.get(), this.zzftb.get(), this.zzfvf.get(), this.zzfux.get(), this.zzgtg.get(), this.zzggo.get());
    }
}
