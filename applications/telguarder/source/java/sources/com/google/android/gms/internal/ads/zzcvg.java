package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvg.class */
public final class zzcvg implements zzeqb<zzcve> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzchi> zzgtg;

    public zzcvg(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzchi> zzeqoVar3) {
        this.zzewk = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzgtg = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcve(this.zzewk.get(), this.zzfux.get(), this.zzgtg.get());
    }
}
