package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrx.class */
public final class zzcrx implements zzeqb<zzcru> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzblk> zzgtg;

    public zzcrx(zzeqo<zzblk> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<Executor> zzeqoVar3, zzeqo<zzchq> zzeqoVar4, zzeqo<zzdnp> zzeqoVar5, zzeqo<zzazn> zzeqoVar6) {
        this.zzgtg = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfux = zzeqoVar3;
        this.zzggo = zzeqoVar4;
        this.zzfvf = zzeqoVar5;
        this.zzfze = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcru(this.zzgtg.get(), this.zzewk.get(), this.zzfux.get(), this.zzggo.get(), this.zzfvf.get(), this.zzfze.get());
    }
}
