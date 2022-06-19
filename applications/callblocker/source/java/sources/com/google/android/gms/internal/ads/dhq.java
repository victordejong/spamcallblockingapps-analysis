package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhq.class */
abstract class dhq<K, V, V2> implements dht<Map<K, V2>> {

    /* renamed from: a */
    private final Map<K, dig<V>> f14380a;

    public dhq(Map<K, dig<V>> map) {
        this.f14380a = Collections.unmodifiableMap(map);
    }

    /* renamed from: b */
    public final Map<K, dig<V>> m9453b() {
        return this.f14380a;
    }
}
