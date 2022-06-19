package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqv.class */
class zzfqv<K, V> extends zzfrm<K, V> implements zzfth<K, V> {
    public zzfqv(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.android.gms.internal.ads.zzfrm
    public /* bridge */ /* synthetic */ Collection zza() {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfrm
    public final <E> Collection<E> zzb(Collection<E> collection) {
        return Collections.unmodifiableList(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzfrm
    public final Collection<V> zzc(K k, Collection<V> collection) {
        return zzh(k, (List) collection, null);
    }
}
