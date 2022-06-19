package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzder.class */
public final class zzder implements zzeqb<zzdek> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcxj> zzexf;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<String> zzftc;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzcxh> zzgwd;

    private zzder(zzeqo<zzdzv> zzeqoVar, zzeqo<ScheduledExecutorService> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<zzcxj> zzeqoVar4, zzeqo<Context> zzeqoVar5, zzeqo<zzdnp> zzeqoVar6, zzeqo<zzcxh> zzeqoVar7) {
        this.zzewf = zzeqoVar;
        this.zzfrq = zzeqoVar2;
        this.zzftc = zzeqoVar3;
        this.zzexf = zzeqoVar4;
        this.zzewk = zzeqoVar5;
        this.zzfvf = zzeqoVar6;
        this.zzgwd = zzeqoVar7;
    }

    public static zzder zzc(zzeqo<zzdzv> zzeqoVar, zzeqo<ScheduledExecutorService> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<zzcxj> zzeqoVar4, zzeqo<Context> zzeqoVar5, zzeqo<zzdnp> zzeqoVar6, zzeqo<zzcxh> zzeqoVar7) {
        return new zzder(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdek(this.zzewf.get(), this.zzfrq.get(), this.zzftc.get(), this.zzexf.get(), this.zzewk.get(), this.zzfvf.get(), this.zzgwd.get());
    }
}
