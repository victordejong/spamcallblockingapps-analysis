package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdml.class */
public final class zzdml implements zzeqb<zzdmc> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdlh> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdkn<zzchi, zzchb>> zzhey;
    private final zzeqo<zzdnr> zzhez;

    public zzdml(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzbgc> zzeqoVar3, zzeqo<zzdkn<zzchi, zzchb>> zzeqoVar4, zzeqo<zzdlh> zzeqoVar5, zzeqo<zzdnr> zzeqoVar6, zzeqo<zzdnk> zzeqoVar7) {
        this.zzhex = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzewg = zzeqoVar3;
        this.zzhey = zzeqoVar4;
        this.zzgyt = zzeqoVar5;
        this.zzhez = zzeqoVar6;
        this.zzfpa = zzeqoVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdmc(this.zzhex.get(), this.zzfux.get(), this.zzewg.get(), this.zzhey.get(), this.zzgyt.get(), this.zzhez.get(), this.zzfpa.get());
    }
}
