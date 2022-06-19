package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmn.class */
public final class zzbmn implements zzeqb<zzaxd> {
    private final zzeqo<Context> zzewk;
    private final zzbmc zzfvc;
    private final zzeqo<zzdnp> zzfvf;

    public zzbmn(zzbmc zzbmcVar, zzeqo<Context> zzeqoVar, zzeqo<zzdnp> zzeqoVar2) {
        this.zzfvc = zzbmcVar;
        this.zzewk = zzeqoVar;
        this.zzfvf = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzaxd) zzeqh.zza(new zzaxd(this.zzewk.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
