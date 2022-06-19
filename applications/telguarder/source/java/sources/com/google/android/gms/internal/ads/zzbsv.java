package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsv.class */
public final class zzbsv implements zzeqb<zzbsm> {
    private final zzeqo<Set<zzbya<zzbrm>>> zzfvd;

    private zzbsv(zzeqo<Set<zzbya<zzbrm>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbsv zzk(zzeqo<Set<zzbya<zzbrm>>> zzeqoVar) {
        return new zzbsv(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsm(this.zzfvd.get());
    }
}
