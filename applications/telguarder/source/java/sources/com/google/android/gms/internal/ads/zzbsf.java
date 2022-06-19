package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsf.class */
public final class zzbsf implements zzeqb<zzbsd> {
    private final zzeqo<Set<zzbya<zzbse>>> zzfvd;

    private zzbsf(zzeqo<Set<zzbya<zzbse>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbsf zzi(zzeqo<Set<zzbya<zzbse>>> zzeqoVar) {
        return new zzbsf(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsd(this.zzfvd.get());
    }
}
