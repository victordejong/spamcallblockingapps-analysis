package com.criteo.publisher.m0;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/m.class */
public final class m {
    public static final <K, V> V a(ConcurrentMap<K, V> getOrCompute, K k, Function0<? extends V> defaultValue) {
        p.c(getOrCompute, "$this$getOrCompute");
        p.c(defaultValue, "defaultValue");
        V v = getOrCompute.get(k);
        V v2 = v;
        if (v == null) {
            v2 = (V) defaultValue.invoke();
            V putIfAbsent = getOrCompute.putIfAbsent(k, v2);
            if (putIfAbsent != null) {
                v2 = putIfAbsent;
            }
        }
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> a(Map<K, ? extends V> filterNotNullValues) {
        p.c(filterNotNullValues, "$this$filterNotNullValues");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : filterNotNullValues.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }
}
