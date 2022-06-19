package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbos.class */
public final class zzbos implements zzeqb<zzbya<zzbse>> {
    private final zzeqo<zzbto> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzbos(zzeqo<zzbto> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzbos zzc(zzeqo<zzbto> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzbos(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
