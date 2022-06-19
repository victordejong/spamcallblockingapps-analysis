package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjl.class */
public final class zzdjl implements zzeqb<zzdje> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzcxy> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdnr> zzhez;
    private final zzeqo<zzvs> zzhgo;
    private final zzeqo<zzcys> zzhgp;

    public zzdjl(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzvs> zzeqoVar3, zzeqo<zzbgc> zzeqoVar4, zzeqo<zzcxy> zzeqoVar5, zzeqo<zzcys> zzeqoVar6, zzeqo<zzdnr> zzeqoVar7) {
        this.zzhex = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzhgo = zzeqoVar3;
        this.zzewg = zzeqoVar4;
        this.zzgyt = zzeqoVar5;
        this.zzhgp = zzeqoVar6;
        this.zzhez = zzeqoVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdje(this.zzhex.get(), this.zzfux.get(), this.zzhgo.get(), this.zzewg.get(), this.zzgyt.get(), this.zzhgp.get(), this.zzhez.get());
    }
}
