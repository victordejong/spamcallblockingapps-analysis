package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwp.class */
public final class zzbwp implements zzeqb<Set<zzbya<zzbsa>>> {
    private final zzbwg zzgav;

    private zzbwp(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwp zzn(zzbwg zzbwgVar) {
        return new zzbwp(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamb(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
