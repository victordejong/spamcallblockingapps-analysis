package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwv.class */
public final class zzbwv implements zzeqb<Set<zzbya<zzbtt>>> {
    private final zzbwg zzgav;

    private zzbwv(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwv zzu(zzbwg zzbwgVar) {
        return new zzbwv(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamh(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
