package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdia.class */
public final class zzdia implements zzeqb<zzdhx> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdhv> zzgys;
    private final zzeqo<zzdil> zzhfh;

    public zzdia(zzeqo<zzbgc> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<zzdhv> zzeqoVar4, zzeqo<zzdil> zzeqoVar5, zzeqo<zzazn> zzeqoVar6) {
        this.zzewg = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzgyr = zzeqoVar3;
        this.zzgys = zzeqoVar4;
        this.zzhfh = zzeqoVar5;
        this.zzftb = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdhx(this.zzewg.get(), this.zzewk.get(), this.zzgyr.get(), this.zzgys.get(), this.zzhfh.get(), this.zzftb.get());
    }
}
