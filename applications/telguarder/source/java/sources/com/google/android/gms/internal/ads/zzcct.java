package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcct.class */
public final class zzcct implements zzeqb<zzaxd> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnp> zzfvf;
    private final zzccp zzgfg;

    private zzcct(zzccp zzccpVar, zzeqo<Context> zzeqoVar, zzeqo<zzdnp> zzeqoVar2) {
        this.zzgfg = zzccpVar;
        this.zzewk = zzeqoVar;
        this.zzfvf = zzeqoVar2;
    }

    public static zzcct zza(zzccp zzccpVar, zzeqo<Context> zzeqoVar, zzeqo<zzdnp> zzeqoVar2) {
        return new zzcct(zzccpVar, zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzaxd) zzeqh.zza(new zzaxd(this.zzewk.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
