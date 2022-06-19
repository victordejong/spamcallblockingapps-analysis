package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbor.class */
public final class zzbor implements zzeqb<zzbya<zzbtg>> {
    private final zzeqo<zzbto> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzbor(zzeqo<zzbto> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzbor zzb(zzeqo<zzbto> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzbor(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
