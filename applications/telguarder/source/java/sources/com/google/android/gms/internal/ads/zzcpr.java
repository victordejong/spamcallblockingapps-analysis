package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpr.class */
public final class zzcpr implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzcpz> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcpr(zzeqo<zzcpz> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzcpr zzan(zzeqo<zzcpz> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzcpr(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
