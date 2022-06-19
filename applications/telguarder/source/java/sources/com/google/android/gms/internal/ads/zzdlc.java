package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlc.class */
public final class zzdlc implements zzeqb<zzdkx> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzcxy> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdnr> zzhez;
    private final zzeqo<zzdlh> zzhhz;

    public zzdlc(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzbgc> zzeqoVar3, zzeqo<zzcxy> zzeqoVar4, zzeqo<zzdlh> zzeqoVar5, zzeqo<zzdnr> zzeqoVar6) {
        this.zzhex = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzewg = zzeqoVar3;
        this.zzgyt = zzeqoVar4;
        this.zzhhz = zzeqoVar5;
        this.zzhez = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdkx(this.zzhex.get(), this.zzfux.get(), this.zzewg.get(), this.zzgyt.get(), this.zzhhz.get(), this.zzhez.get());
    }
}
