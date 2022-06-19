package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdac.class */
public final class zzdac implements zzeqb<zzczo> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<zzdof<zzcgk>> zzgus;
    private final zzeqo<zzbgc> zzgzz;

    public zzdac(zzeqo<zzbgc> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzei> zzeqoVar3, zzeqo<zzazn> zzeqoVar4, zzeqo<zzdof<zzcgk>> zzeqoVar5, zzeqo<zzdzv> zzeqoVar6, zzeqo<ScheduledExecutorService> zzeqoVar7) {
        this.zzgzz = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfru = zzeqoVar3;
        this.zzftb = zzeqoVar4;
        this.zzgus = zzeqoVar5;
        this.zzewf = zzeqoVar6;
        this.zzfrq = zzeqoVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzczo(this.zzgzz.get(), this.zzewk.get(), this.zzfru.get(), this.zzftb.get(), this.zzgus.get(), this.zzewf.get(), this.zzfrq.get());
    }
}
