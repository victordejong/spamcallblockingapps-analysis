package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsx.class */
public final class zzcsx implements zzeqb<zzcsw> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzbzy> zzgtg;
    private final zzeqo<zzdmu> zzgua;

    public zzcsx(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzbzy> zzeqoVar3, zzeqo<zzdmu> zzeqoVar4) {
        this.zzewk = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzgtg = zzeqoVar3;
        this.zzgua = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcsw(this.zzewk.get(), this.zzfux.get(), this.zzgtg.get(), this.zzgua.get());
    }
}
