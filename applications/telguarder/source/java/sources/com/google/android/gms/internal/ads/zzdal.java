package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdal.class */
public final class zzdal implements zzeqb<zzdaj> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcmx> zzgnv;

    public zzdal(zzeqo<Executor> zzeqoVar, zzeqo<zzcmx> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzgnv = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdaj(this.zzewf.get(), this.zzgnv.get());
    }
}
