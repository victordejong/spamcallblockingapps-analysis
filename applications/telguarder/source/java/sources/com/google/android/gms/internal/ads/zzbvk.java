package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvk.class */
public final class zzbvk implements zzeqb<zzbvi> {
    private final zzeqo<Set<zzbya<zzbvn>>> zzfvd;

    private zzbvk(zzeqo<Set<zzbya<zzbvn>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbvk zzp(zzeqo<Set<zzbya<zzbvn>>> zzeqoVar) {
        return new zzbvk(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvi(this.zzfvd.get());
    }
}
