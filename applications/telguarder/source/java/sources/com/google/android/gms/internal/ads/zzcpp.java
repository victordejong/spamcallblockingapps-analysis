package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpp.class */
public final class zzcpp implements zzeqb<zzcpn> {
    private final zzeqo<Set<zzcpq>> zzglz;
    private final zzeqo<zzdsa> zzgqg;

    private zzcpp(zzeqo<Set<zzcpq>> zzeqoVar, zzeqo<zzdsa> zzeqoVar2) {
        this.zzglz = zzeqoVar;
        this.zzgqg = zzeqoVar2;
    }

    public static zzcpp zzam(zzeqo<Set<zzcpq>> zzeqoVar, zzeqo<zzdsa> zzeqoVar2) {
        return new zzcpp(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpn(this.zzglz.get(), this.zzgqg.get());
    }
}
