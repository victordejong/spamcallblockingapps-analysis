package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfub.class */
final class zzfub<K, V> extends zzfqv<K, V> {
    public final transient zzfqs<? extends List<V>> zza;

    public zzfub(Map<K, Collection<V>> map, zzfqs<? extends List<V>> zzfqsVar) {
        super(map);
        this.zza = zzfqsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqv, com.google.android.gms.internal.ads.zzfrm
    public final /* bridge */ /* synthetic */ Collection zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzfrm, com.google.android.gms.internal.ads.zzfrp
    public final Map<K, Collection<V>> zzj() {
        return zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzfrm, com.google.android.gms.internal.ads.zzfrp
    public final Set<K> zzl() {
        return zzm();
    }
}
