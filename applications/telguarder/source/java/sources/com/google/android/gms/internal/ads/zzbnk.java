package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnk.class */
public final class zzbnk implements zzeqb<zzbnb> {
    private final zzeqo<zzagl> zzewe;
    private final zzeqo<zzbnw> zzfib;
    private final zzeqo<Runnable> zzfny;
    private final zzeqo<Executor> zzfux;

    public zzbnk(zzeqo<zzbnw> zzeqoVar, zzeqo<zzagl> zzeqoVar2, zzeqo<Runnable> zzeqoVar3, zzeqo<Executor> zzeqoVar4) {
        this.zzfib = zzeqoVar;
        this.zzewe = zzeqoVar2;
        this.zzfny = zzeqoVar3;
        this.zzfux = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnb(this.zzfib.get(), this.zzewe.get(), this.zzfny.get(), this.zzfux.get());
    }
}
