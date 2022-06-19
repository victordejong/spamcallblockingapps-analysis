package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfps.class */
final class zzfps<K, V> extends zzfmm<K, V> {

    /* renamed from: i */
    final transient jv2<? extends List<V>> f34077i;

    public zzfps(Map<K, Collection<V>> map, jv2<? extends List<V>> jv2Var) {
        super(map);
        this.f34077i = jv2Var;
    }

    @Override // com.google.android.gms.internal.ads.zzfmm, com.google.android.gms.internal.ads.zzfnd
    public final /* bridge */ /* synthetic */ Collection zzc() {
        return this.f34077i.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzfnd, com.google.android.gms.internal.ads.ew2
    final Set<K> zzk() {
        return zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzfnd, com.google.android.gms.internal.ads.ew2
    final Map<K, Collection<V>> zzp() {
        return zzq();
    }
}
