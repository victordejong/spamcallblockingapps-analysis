package com.aotter.net.trek.ads.cache;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/cache/LruCache.class */
public class LruCache<K, V> implements Cache<K, V> {

    /* renamed from: a */
    public static final int f1184a = -1;

    /* renamed from: b */
    public static final int f1185b = 10;

    /* renamed from: c */
    public final Map<K, V> f1186c;

    /* renamed from: d */
    public final int f1187d;

    /* renamed from: e */
    public int f1188e;

    public LruCache() {
        this(10);
    }

    public LruCache(int i) {
        if (i > 0) {
            this.f1186c = new C1664a(i);
            this.f1187d = i * 1024 * 1024;
            return;
        }
        throw new IllegalArgumentException("capacity <= 0");
    }

    /* renamed from: a */
    private void m36561a(int i) {
        while (this.f1188e > i && !this.f1186c.isEmpty()) {
            if (this.f1188e < 0 || (this.f1186c.isEmpty() && this.f1188e != 0)) {
                throw new IllegalStateException(m36562a() + ".getValueSize() is reporting inconsistent results");
            }
            Map.Entry<K, V> next = this.f1186c.entrySet().iterator().next();
            this.f1186c.remove(next.getKey());
            this.f1188e -= m36560a((LruCache<K, V>) next.getValue());
        }
    }

    /* renamed from: a */
    public int m36560a(V v) {
        return 1;
    }

    /* renamed from: a */
    public String m36562a() {
        return LruCache.class.getName();
    }

    @Override // com.aotter.net.trek.ads.cache.Cache
    public final void clear() {
        synchronized (this) {
            m36561a(-1);
        }
    }

    @Override // com.aotter.net.trek.ads.cache.Cache
    public final V get(K k) {
        if (k == null) {
            return null;
        }
        synchronized (this) {
            V v = this.f1186c.get(k);
            if (v != null) {
                return v;
            }
            return null;
        }
    }

    @Override // com.aotter.net.trek.ads.cache.Cache
    public final int getMaxMemorySize() {
        int i;
        synchronized (this) {
            i = this.f1187d;
        }
        return i;
    }

    @Override // com.aotter.net.trek.ads.cache.Cache
    public final int getMemorySize() {
        int i;
        synchronized (this) {
            i = this.f1188e;
        }
        return i;
    }

    @Override // com.aotter.net.trek.ads.cache.Cache
    public final V put(K k, V v) {
        V v2;
        if (k == null || v == null) {
            v2 = null;
        } else {
            synchronized (this) {
                v2 = this.f1186c.put(k, v);
                this.f1188e += m36560a((LruCache<K, V>) v);
                if (v2 != null) {
                    this.f1188e -= m36560a((LruCache<K, V>) v2);
                }
                m36561a(this.f1187d);
            }
        }
        return v2;
    }

    @Override // com.aotter.net.trek.ads.cache.Cache
    public final V remove(K k) {
        V v;
        if (k != null) {
            synchronized (this) {
                v = this.f1186c.remove(k);
                if (v != null) {
                    this.f1188e -= m36560a((LruCache<K, V>) v);
                }
            }
        } else {
            v = null;
        }
        return v;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f1186c);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String sb;
        synchronized (this) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<K, V> entry : this.f1186c.entrySet()) {
                sb2.append(entry.getKey());
                sb2.append('=');
                sb2.append(entry.getValue());
                sb2.append(",");
            }
            sb2.append("maxMemory=");
            sb2.append(this.f1187d);
            sb2.append(",");
            sb2.append("memorySize=");
            sb2.append(this.f1188e);
            sb = sb2.toString();
        }
        return sb;
    }
}
