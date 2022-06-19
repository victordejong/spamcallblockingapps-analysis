package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmm.class */
class zzfmm<K, V> extends zzfnd<K, V> implements kx2<K, V> {
    public zzfmm(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfnd
    public final <E> Collection<E> zza(Collection<E> collection) {
        return Collections.unmodifiableList(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzfnd
    public final Collection<V> zzb(K k, Collection<V> collection) {
        return zzj(k, (List) collection, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfnd
    public /* bridge */ /* synthetic */ Collection zzc() {
        throw null;
    }
}
