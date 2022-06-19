package com.criteo.publisher.p256m0;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.m0.m */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/m.class */
public final class C8442m {
    /* renamed from: a */
    public static final <K, V> V m25678a(ConcurrentMap<K, V> getOrCompute, K k, Function0<? extends V> defaultValue) {
        C18524p.m3841c(getOrCompute, "$this$getOrCompute");
        C18524p.m3841c(defaultValue, "defaultValue");
        V v = getOrCompute.get(k);
        V v2 = v;
        if (v == null) {
            v2 = defaultValue.invoke();
            V putIfAbsent = getOrCompute.putIfAbsent(k, v2);
            if (putIfAbsent != null) {
                v2 = putIfAbsent;
            }
        }
        return v2;
    }

    /* renamed from: a */
    public static final <K, V> Map<K, V> m25679a(Map<K, ? extends V> filterNotNullValues) {
        C18524p.m3841c(filterNotNullValues, "$this$filterNotNullValues");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : filterNotNullValues.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }
}
