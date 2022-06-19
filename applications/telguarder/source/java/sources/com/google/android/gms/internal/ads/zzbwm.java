package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwm.class */
public final class zzbwm implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzbwg zzgav;

    private zzbwm(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwm zzj(zzbwg zzbwgVar) {
        return new zzbwm(zzbwgVar);
    }

    public static Set<zzbya<zzbtb>> zzk(zzbwg zzbwgVar) {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzk(this.zzgav);
    }
}
