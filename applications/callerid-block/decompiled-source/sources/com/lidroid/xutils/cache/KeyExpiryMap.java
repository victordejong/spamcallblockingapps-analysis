package com.lidroid.xutils.cache;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/KeyExpiryMap.class */
public class KeyExpiryMap<K, V> extends ConcurrentHashMap<K, Long> {
    private static final int DEFAULT_CONCURRENCY_LEVEL = 16;
    private static final long serialVersionUID = 1;

    public KeyExpiryMap() {
    }

    public KeyExpiryMap(int i) {
        super(i);
    }

    public KeyExpiryMap(int i, float f) {
        super(i, f, 16);
    }

    public KeyExpiryMap(int i, float f, int i2) {
        super(i, f, i2);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        synchronized (this) {
            super.clear();
        }
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        boolean z;
        synchronized (this) {
            z = false;
            Long l = (Long) super.get(obj);
            if (l == null || System.currentTimeMillis() >= l.longValue()) {
                remove(obj);
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public Long get(Object obj) {
        synchronized (this) {
            if (!containsKey(obj)) {
                return null;
            }
            return (Long) super.get(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Long put(K k, Long l) {
        Long l2;
        synchronized (this) {
            if (containsKey(k)) {
                remove((Object) k);
            }
            l2 = (Long) super.put((KeyExpiryMap<K, V>) k, (K) l);
        }
        return l2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((KeyExpiryMap<K, V>) obj, (Long) obj2);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public Long remove(Object obj) {
        Long l;
        synchronized (this) {
            l = (Long) super.remove(obj);
        }
        return l;
    }
}
