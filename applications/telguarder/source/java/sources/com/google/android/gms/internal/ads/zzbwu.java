package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwu.class */
public final class zzbwu implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzbwg zzgav;

    private zzbwu(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwu zzs(zzbwg zzbwgVar) {
        return new zzbwu(zzbwgVar);
    }

    public static Set<zzbya<zzbtb>> zzt(zzbwg zzbwgVar) {
        return (Set) zzeqh.zza(zzbwgVar.zzalz(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzt(this.zzgav);
    }
}
