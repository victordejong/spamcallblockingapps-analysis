package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxr.class */
public final class zzcxr implements zzeqb<zzcxs> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzwx> zzgxp;
    private final zzeqo<zzblv> zzgxq;

    public zzcxr(zzeqo<Context> zzeqoVar, zzeqo<zzwx> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3, zzeqo<zzblv> zzeqoVar4) {
        this.zzewk = zzeqoVar;
        this.zzgxp = zzeqoVar2;
        this.zzfvf = zzeqoVar3;
        this.zzgxq = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxs(this.zzewk.get(), this.zzgxp.get(), this.zzfvf.get(), this.zzgxq.get());
    }
}
