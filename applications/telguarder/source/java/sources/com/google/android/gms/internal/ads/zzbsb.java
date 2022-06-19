package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsb.class */
public final class zzbsb implements zzeqb<zzbrt> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbrx> zzfhv;
    private final zzeqo<Set<zzbya<zzbrq>>> zzfvd;

    private zzbsb(zzeqo<zzbrx> zzeqoVar, zzeqo<Set<zzbya<zzbrq>>> zzeqoVar2, zzeqo<Executor> zzeqoVar3) {
        this.zzfhv = zzeqoVar;
        this.zzfvd = zzeqoVar2;
        this.zzewf = zzeqoVar3;
    }

    public static zzbsb zzn(zzeqo<zzbrx> zzeqoVar, zzeqo<Set<zzbya<zzbrq>>> zzeqoVar2, zzeqo<Executor> zzeqoVar3) {
        return new zzbsb(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrt(this.zzfhv.get(), this.zzfvd.get(), this.zzewf.get());
    }
}
