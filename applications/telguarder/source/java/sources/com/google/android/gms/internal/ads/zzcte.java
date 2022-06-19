package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcte.class */
public final class zzcte implements zzeqb<zzcta> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzbmr> zzfnf;
    private final zzeqo<zzcsg> zzfnj;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzbrp> zzgug;

    public zzcte(zzeqo<zzbmr> zzeqoVar, zzeqo<zzcsg> zzeqoVar2, zzeqo<zzbrp> zzeqoVar3, zzeqo<ScheduledExecutorService> zzeqoVar4, zzeqo<zzdzv> zzeqoVar5) {
        this.zzfnf = zzeqoVar;
        this.zzfnj = zzeqoVar2;
        this.zzgug = zzeqoVar3;
        this.zzfrq = zzeqoVar4;
        this.zzewf = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcta(this.zzfnf.get(), this.zzfnj.get(), this.zzgug.get(), this.zzfrq.get(), this.zzewf.get());
    }
}
