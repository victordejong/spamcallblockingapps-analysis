package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbws.class */
public final class zzbws implements zzeqb<Set<zzbya<zzbse>>> {
    private final zzbwg zzgav;

    private zzbws(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbws zzq(zzbwg zzbwgVar) {
        return new zzbws(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamf(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
