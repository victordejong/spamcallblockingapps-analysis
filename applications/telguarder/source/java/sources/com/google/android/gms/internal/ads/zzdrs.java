package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrs.class */
public final class zzdrs implements zzeqb<zzdrj> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdrm> zzfae;
    private final zzeqo<ScheduledExecutorService> zzfun;

    private zzdrs(zzeqo<zzdzv> zzeqoVar, zzeqo<ScheduledExecutorService> zzeqoVar2, zzeqo<zzdrm> zzeqoVar3) {
        this.zzewf = zzeqoVar;
        this.zzfun = zzeqoVar2;
        this.zzfae = zzeqoVar3;
    }

    public static zzdrs zzae(zzeqo<zzdzv> zzeqoVar, zzeqo<ScheduledExecutorService> zzeqoVar2, zzeqo<zzdrm> zzeqoVar3) {
        return new zzdrs(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdrj(this.zzewf.get(), this.zzfun.get(), this.zzfae.get());
    }
}
