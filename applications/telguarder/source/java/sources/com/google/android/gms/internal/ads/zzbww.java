package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbww.class */
public final class zzbww implements zzeqb<Set<zzbya<zzbtg>>> {
    private final zzbwg zzgav;

    private zzbww(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbww zzv(zzbwg zzbwgVar) {
        return new zzbww(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamg(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
