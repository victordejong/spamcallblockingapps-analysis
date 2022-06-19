package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsn.class */
public final class zzbsn implements zzeqb<zzbsg> {
    private final zzeqo<Set<zzbya<zzbsh>>> zzfvd;

    private zzbsn(zzeqo<Set<zzbya<zzbsh>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbsn zzj(zzeqo<Set<zzbya<zzbsh>>> zzeqoVar) {
        return new zzbsn(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsg(this.zzfvd.get());
    }
}
