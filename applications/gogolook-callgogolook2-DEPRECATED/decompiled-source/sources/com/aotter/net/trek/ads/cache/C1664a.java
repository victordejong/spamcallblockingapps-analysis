package com.aotter.net.trek.ads.cache;

import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.aotter.net.trek.ads.cache.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/cache/a.class */
public final class C1664a<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: a */
    public final int f1189a;

    public C1664a(int i) {
        super(i, 0.75f, true);
        this.f1189a = i;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.f1189a;
    }
}
