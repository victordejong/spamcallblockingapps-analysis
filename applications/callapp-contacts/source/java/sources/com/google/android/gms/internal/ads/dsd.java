package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsd.class */
public class dsd<K, V, V2> {

    /* renamed from: a */
    final LinkedHashMap<K, dsv<V>> f47507a;

    public dsd(int i) {
        this.f47507a = dsg.m15776b(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public dsd<K, V, V2> mo15768a(K k, dsv<V> dsvVar) {
        this.f47507a.put(dso.m15765a(k, "key"), dso.m15765a(dsvVar, "provider"));
        return this;
    }
}
