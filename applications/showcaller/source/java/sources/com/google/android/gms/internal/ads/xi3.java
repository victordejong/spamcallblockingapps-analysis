package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xi3.class */
public abstract class xi3<K, V, V2> implements cj3<Map<K, V2>> {

    /* renamed from: a */
    private final Map<K, pj3<V>> f32064a;

    public xi3(Map<K, pj3<V>> map) {
        this.f32064a = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    public final Map<K, pj3<V>> m9149a() {
        return this.f32064a;
    }
}
