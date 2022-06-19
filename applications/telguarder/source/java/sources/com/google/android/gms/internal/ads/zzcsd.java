package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsd.class */
public final class zzcsd implements zzeqb<zzcrz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbkx> zzgtg;

    public zzcsd(zzeqo<zzbkx> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<Executor> zzeqoVar3, zzeqo<zzchq> zzeqoVar4) {
        this.zzgtg = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfux = zzeqoVar3;
        this.zzggo = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcrz(this.zzgtg.get(), this.zzewk.get(), this.zzfux.get(), this.zzggo.get());
    }
}
