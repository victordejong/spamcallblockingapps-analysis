package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkt.class */
public final class zzdkt implements zzeqb<zzdkn<zzbkx, zzblg>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdov> zzeyu;
    private final zzeqo<zzdpq> zzeyv;

    public zzdkt(zzeqo<Context> zzeqoVar, zzeqo<zzdov> zzeqoVar2, zzeqo<zzdpq> zzeqoVar3) {
        this.zzewk = zzeqoVar;
        this.zzeyu = zzeqoVar2;
        this.zzeyv = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdkn) zzeqh.zza(zzdkr.zza(this.zzewk.get(), this.zzeyu.get(), this.zzeyv.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
