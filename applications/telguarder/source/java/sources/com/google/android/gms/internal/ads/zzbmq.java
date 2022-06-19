package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmq.class */
public final class zzbmq implements zzeqb<zzbya<zzqw>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbns> zzftr;
    private final zzbmc zzfvc;

    public zzbmq(zzbmc zzbmcVar, zzeqo<zzbns> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzfvc = zzbmcVar;
        this.zzftr = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
