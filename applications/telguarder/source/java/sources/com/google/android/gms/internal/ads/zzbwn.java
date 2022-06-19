package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwn.class */
public final class zzbwn implements zzeqb<Set<zzbya<zzvc>>> {
    private final zzbwg zzgav;

    private zzbwn(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwn zzl(zzbwg zzbwgVar) {
        return new zzbwn(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzame(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
