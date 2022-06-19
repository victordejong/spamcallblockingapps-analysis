package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dse.class */
abstract class dse<K, V, V2> implements dsi<Map<K, V2>> {

    /* renamed from: a */
    private final Map<K, dsv<V>> f47508a;

    public dse(Map<K, dsv<V>> map) {
        this.f47508a = Collections.unmodifiableMap(map);
    }

    /* renamed from: b */
    public final Map<K, dsv<V>> m15779b() {
        return this.f47508a;
    }
}
