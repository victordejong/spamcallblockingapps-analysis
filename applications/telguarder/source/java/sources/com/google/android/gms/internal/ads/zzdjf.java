package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjf.class */
public final class zzdjf implements zzeqb<zzdiz> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Context> zzewk;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdix> zzgys;
    private final zzeqo<zzdil> zzhfh;

    public zzdjf(zzeqo<zzbgc> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<zzdix> zzeqoVar4, zzeqo<zzdil> zzeqoVar5) {
        this.zzewg = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzgyr = zzeqoVar3;
        this.zzgys = zzeqoVar4;
        this.zzhfh = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdiz(this.zzewg.get(), this.zzewk.get(), this.zzgyr.get(), this.zzgys.get(), this.zzhfh.get());
    }
}
