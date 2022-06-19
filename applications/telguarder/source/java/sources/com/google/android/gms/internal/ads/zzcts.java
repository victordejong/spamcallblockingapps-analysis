package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcts.class */
public final class zzcts implements zzeqb<zzctq> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzbzy> zzgtg;

    public zzcts(zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzbzy> zzeqoVar3, zzeqo<Executor> zzeqoVar4) {
        this.zzewk = zzeqoVar;
        this.zzftb = zzeqoVar2;
        this.zzgtg = zzeqoVar3;
        this.zzfux = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzctq(this.zzewk.get(), this.zzftb.get(), this.zzgtg.get(), this.zzfux.get());
    }
}
