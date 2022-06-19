package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgo.class */
public final class zzdgo implements zzeqb<zzdgk> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzayk> zzexx;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzayo> zzhas;
    private final zzeqo<Integer> zzhdz;

    public zzdgo(zzeqo<zzayk> zzeqoVar, zzeqo<Integer> zzeqoVar2, zzeqo<Context> zzeqoVar3, zzeqo<zzayo> zzeqoVar4, zzeqo<ScheduledExecutorService> zzeqoVar5, zzeqo<Executor> zzeqoVar6) {
        this.zzexx = zzeqoVar;
        this.zzhdz = zzeqoVar2;
        this.zzewk = zzeqoVar3;
        this.zzhas = zzeqoVar4;
        this.zzfrq = zzeqoVar5;
        this.zzewf = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgk(this.zzexx.get(), this.zzhdz.get().intValue(), this.zzewk.get(), this.zzhas.get(), this.zzfrq.get(), this.zzewf.get());
    }
}
