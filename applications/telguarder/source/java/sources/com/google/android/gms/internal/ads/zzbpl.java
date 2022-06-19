package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpl.class */
public final class zzbpl implements zzeqb<zzbya<zzbse>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbjq> zzftr;

    private zzbpl(zzeqo<zzbjq> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzftr = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzbpl zzh(zzeqo<zzbjq> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzbpl(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
