package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyv.class */
public final class zzcyv implements zzeqb<zzcyt> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzvs> zzgyq;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdkx> zzgys;
    private final zzeqo<zzcxy> zzgyt;
    private final zzeqo<zzdlh> zzgyu;

    public zzcyv(zzeqo<Context> zzeqoVar, zzeqo<zzvs> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<zzdkx> zzeqoVar4, zzeqo<zzcxy> zzeqoVar5, zzeqo<zzdlh> zzeqoVar6) {
        this.zzewk = zzeqoVar;
        this.zzgyq = zzeqoVar2;
        this.zzgyr = zzeqoVar3;
        this.zzgys = zzeqoVar4;
        this.zzgyt = zzeqoVar5;
        this.zzgyu = zzeqoVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcyt(this.zzewk.get(), this.zzgyq.get(), this.zzgyr.get(), this.zzgys.get(), this.zzgyt.get(), this.zzgyu.get());
    }
}
