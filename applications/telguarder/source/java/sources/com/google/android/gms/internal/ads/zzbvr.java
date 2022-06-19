package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvr.class */
public final class zzbvr implements zzeqb<zzbvm> {
    private final zzeqo<Set<zzbya<zzbvq>>> zzfvd;

    private zzbvr(zzeqo<Set<zzbya<zzbvq>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbvr zzq(zzeqo<Set<zzbya<zzbvq>>> zzeqoVar) {
        return new zzbvr(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvm(this.zzfvd.get());
    }
}
