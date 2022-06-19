package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcff.class */
public final class zzcff implements zzeqb<zzcfb> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcer> zzgib;

    public zzcff(zzeqo<Executor> zzeqoVar, zzeqo<zzcer> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzgib = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfb(this.zzewf.get(), this.zzgib.get());
    }
}
