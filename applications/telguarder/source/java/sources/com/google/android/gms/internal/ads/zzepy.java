package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepy.class */
abstract class zzepy<K, V, V2> implements zzeqb<Map<K, V2>> {
    private final Map<K, zzeqo<V>> zzjbw;

    public zzepy(Map<K, zzeqo<V>> map) {
        this.zzjbw = Collections.unmodifiableMap(map);
    }

    public final Map<K, zzeqo<V>> zzbmm() {
        return this.zzjbw;
    }
}
