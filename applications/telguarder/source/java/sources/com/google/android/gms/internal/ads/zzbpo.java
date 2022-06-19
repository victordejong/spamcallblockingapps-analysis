package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpo.class */
public final class zzbpo implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbjq> zzftr;

    private zzbpo(zzeqo<zzbjq> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzftr = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzbya<zzbtb> zza(zzbjq zzbjqVar, Executor executor) {
        return (zzbya) zzeqh.zza(new zzbya(zzbjqVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzbpo zzj(zzeqo<zzbjq> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzbpo(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzftr.get(), this.zzewf.get());
    }
}
