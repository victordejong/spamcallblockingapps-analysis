package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwj.class */
public final class zzbwj implements zzeqb<Set<zzbya<zzbsh>>> {
    private final zzbwg zzgav;

    private zzbwj(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwj zzh(zzbwg zzbwgVar) {
        return new zzbwj(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
