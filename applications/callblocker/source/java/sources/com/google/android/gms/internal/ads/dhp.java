package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhp.class */
public class dhp<K, V, V2> {

    /* renamed from: a */
    final LinkedHashMap<K, dig<V>> f14379a;

    public dhp(int i) {
        this.f14379a = dhs.m9449c(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public dhp<K, V, V2> mo9441a(K k, dig<V> digVar) {
        this.f14379a.put(dhz.m9438a(k, "key"), dhz.m9438a(digVar, "provider"));
        return this;
    }
}
