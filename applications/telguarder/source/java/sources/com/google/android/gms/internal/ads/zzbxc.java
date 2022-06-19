package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxc.class */
public final class zzbxc implements zzeqb<Set<zzbya<zzbyf>>> {
    private final zzbwg zzgav;

    private zzbxc(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbxc zzab(zzbwg zzbwgVar) {
        return new zzbxc(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
