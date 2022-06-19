package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrx.class */
public final class zzdrx implements zzeqb<zzdrv> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzazo> zzexv;

    public zzdrx(zzeqo<Executor> zzeqoVar, zzeqo<zzazo> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzexv = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdrv(this.zzewf.get(), this.zzexv.get());
    }
}
