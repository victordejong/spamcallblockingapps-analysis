package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wi3.class */
public class wi3<K, V, V2> {

    /* renamed from: a */
    final LinkedHashMap<K, pj3<V>> f31592a;

    public wi3(int i) {
        this.f31592a = yi3.m8817c(i);
    }

    /* renamed from: a */
    public final wi3<K, V, V2> m9582a(K k, pj3<V> pj3Var) {
        LinkedHashMap<K, pj3<V>> linkedHashMap = this.f31592a;
        kj3.m13880a(k, "key");
        kj3.m13880a(pj3Var, "provider");
        linkedHashMap.put(k, pj3Var);
        return this;
    }
}
