package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwo.class */
public final class zzbwo implements zzeqb<Set<zzbya<zzbvn>>> {
    private final zzbwg zzgav;

    private zzbwo(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwo zzm(zzbwg zzbwgVar) {
        return new zzbwo(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
