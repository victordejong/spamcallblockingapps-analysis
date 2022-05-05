package com.aotter.net.trek.ads.cache;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/cache/Cache.class */
public interface Cache<K, V> {
    void clear();

    V get(K k);

    int getMaxMemorySize();

    int getMemorySize();

    V put(K k, V v);

    V remove(K k);
}
