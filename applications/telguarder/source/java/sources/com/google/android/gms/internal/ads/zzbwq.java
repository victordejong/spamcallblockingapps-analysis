package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwq.class */
public final class zzbwq implements zzeqb<Set<zzbya<zzbrr>>> {
    private final zzbwg zzgav;

    private zzbwq(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwq zzo(zzbwg zzbwgVar) {
        return new zzbwq(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzama(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
