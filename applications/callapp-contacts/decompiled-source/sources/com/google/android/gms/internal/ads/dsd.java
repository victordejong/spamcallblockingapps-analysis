package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsd.class */
public class dsd<K, V, V2> {

    /* renamed from: a  reason: collision with root package name */
    final LinkedHashMap<K, dsv<V>> f27151a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dsd(int i) {
        this.f27151a = dsg.b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public dsd<K, V, V2> a(K k, dsv<V> dsvVar) {
        this.f27151a.put(dso.a(k, "key"), dso.a(dsvVar, "provider"));
        return this;
    }
}
