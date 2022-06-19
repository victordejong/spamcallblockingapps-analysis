package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmp.class */
public final class zzdmp implements zzeqb<zzdmk> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdmc> zzgys;
    private final zzeqo<zzdlh> zzhfh;

    public zzdmp(zzeqo<String> zzeqoVar, zzeqo<zzdmc> zzeqoVar2, zzeqo<Context> zzeqoVar3, zzeqo<zzdlh> zzeqoVar4, zzeqo<zzdnk> zzeqoVar5) {
        this.zzgyr = zzeqoVar;
        this.zzgys = zzeqoVar2;
        this.zzewk = zzeqoVar3;
        this.zzhfh = zzeqoVar4;
        this.zzfpa = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdmk(this.zzgyr.get(), this.zzgys.get(), this.zzewk.get(), this.zzhfh.get(), this.zzfpa.get());
    }
}
