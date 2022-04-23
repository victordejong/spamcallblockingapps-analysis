package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dse.class */
abstract class dse<K, V, V2> implements dsi<Map<K, V2>> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, dsv<V>> f27152a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dse(Map<K, dsv<V>> map) {
        this.f27152a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, dsv<V>> b() {
        return this.f27152a;
    }
}
