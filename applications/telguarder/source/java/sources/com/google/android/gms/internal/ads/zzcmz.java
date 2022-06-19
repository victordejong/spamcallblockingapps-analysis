package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmz.class */
public final class zzcmz implements zzeqb<zzcmx> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzcnn> zzgnv;
    private final zzeqo<zzcol> zzgnw;

    public zzcmz(zzeqo<ScheduledExecutorService> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<zzcnn> zzeqoVar3, zzeqo<zzcol> zzeqoVar4) {
        this.zzfrq = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzgnv = zzeqoVar3;
        this.zzgnw = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcmx(this.zzfrq.get(), this.zzewf.get(), this.zzgnv.get(), zzeqc.zzav(this.zzgnw));
    }
}
