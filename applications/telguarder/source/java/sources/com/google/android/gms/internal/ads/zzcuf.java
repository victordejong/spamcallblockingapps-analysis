package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuf.class */
public final class zzcuf implements zzeqb<zzcug> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzcau> zzgtg;

    public zzcuf(zzeqo<Context> zzeqoVar, zzeqo<zzcau> zzeqoVar2, zzeqo<Executor> zzeqoVar3) {
        this.zzewk = zzeqoVar;
        this.zzgtg = zzeqoVar2;
        this.zzfux = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcug(this.zzewk.get(), this.zzgtg.get(), this.zzfux.get());
    }
}
