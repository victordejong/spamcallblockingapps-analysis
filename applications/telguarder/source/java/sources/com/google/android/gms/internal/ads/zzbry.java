package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbry.class */
public final class zzbry implements zzeqb<zzbrx> {
    private final zzeqo<Set<zzbya<zzbsa>>> zzfvd;

    private zzbry(zzeqo<Set<zzbya<zzbsa>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbry zzh(zzeqo<Set<zzbya<zzbsa>>> zzeqoVar) {
        return new zzbry(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrx(this.zzfvd.get());
    }
}
