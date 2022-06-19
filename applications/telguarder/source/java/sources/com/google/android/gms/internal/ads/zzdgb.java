package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgb.class */
public final class zzdgb implements zzeqb<zzdfw> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzayk> zzexx;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<Integer> zzhdz;

    public zzdgb(zzeqo<zzayk> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<ScheduledExecutorService> zzeqoVar3, zzeqo<Executor> zzeqoVar4, zzeqo<Integer> zzeqoVar5) {
        this.zzexx = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfrq = zzeqoVar3;
        this.zzewf = zzeqoVar4;
        this.zzhdz = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdfw(this.zzexx.get(), this.zzewk.get(), this.zzfrq.get(), this.zzewf.get(), this.zzhdz.get().intValue());
    }
}
