package com.fasterxml.jackson.databind.util;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/LookupCache.class */
public interface LookupCache<K, V> {
    V get(Object obj);

    V putIfAbsent(K k, V v);
}
