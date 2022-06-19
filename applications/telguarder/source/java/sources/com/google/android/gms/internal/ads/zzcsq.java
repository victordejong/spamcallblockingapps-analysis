package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsq.class */
public final class zzcsq implements zzeqb<zzcso> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzbmr> zzgtg;

    public zzcsq(zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzbmr> zzeqoVar3, zzeqo<Executor> zzeqoVar4) {
        this.zzewk = zzeqoVar;
        this.zzftb = zzeqoVar2;
        this.zzgtg = zzeqoVar3;
        this.zzfux = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcso(this.zzewk.get(), this.zzftb.get(), this.zzgtg.get(), this.zzfux.get());
    }
}
