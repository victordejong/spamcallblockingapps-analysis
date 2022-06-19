package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqq.class */
public final class zzbqq implements zzeqb<zzbql> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbsd> zzfyh;
    private final zzeqo<zzdmw> zzfyi;
    private final zzeqo<ScheduledExecutorService> zzfyj;

    private zzbqq(zzeqo<zzbsd> zzeqoVar, zzeqo<zzdmw> zzeqoVar2, zzeqo<ScheduledExecutorService> zzeqoVar3, zzeqo<Executor> zzeqoVar4) {
        this.zzfyh = zzeqoVar;
        this.zzfyi = zzeqoVar2;
        this.zzfyj = zzeqoVar3;
        this.zzewf = zzeqoVar4;
    }

    public static zzbqq zzb(zzeqo<zzbsd> zzeqoVar, zzeqo<zzdmw> zzeqoVar2, zzeqo<ScheduledExecutorService> zzeqoVar3, zzeqo<Executor> zzeqoVar4) {
        return new zzbqq(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbql(this.zzfyh.get(), this.zzfyi.get(), this.zzfyj.get(), this.zzewf.get());
    }
}
