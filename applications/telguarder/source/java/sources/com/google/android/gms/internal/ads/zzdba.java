package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdba.class */
public final class zzdba implements zzeqb<zzday> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdch<zzdfp>> zzeyf;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzayo> zzhas;

    private zzdba(zzeqo<zzdch<zzdfp>> zzeqoVar, zzeqo<zzdnp> zzeqoVar2, zzeqo<Context> zzeqoVar3, zzeqo<zzayo> zzeqoVar4) {
        this.zzeyf = zzeqoVar;
        this.zzfvf = zzeqoVar2;
        this.zzewk = zzeqoVar3;
        this.zzhas = zzeqoVar4;
    }

    public static zzdba zzh(zzeqo<zzdch<zzdfp>> zzeqoVar, zzeqo<zzdnp> zzeqoVar2, zzeqo<Context> zzeqoVar3, zzeqo<zzayo> zzeqoVar4) {
        return new zzdba(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzday(this.zzeyf.get(), this.zzfvf.get(), this.zzewk.get(), this.zzhas.get());
    }
}
