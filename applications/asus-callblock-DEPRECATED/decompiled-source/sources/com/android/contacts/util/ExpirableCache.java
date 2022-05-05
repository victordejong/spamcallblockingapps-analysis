package com.android.contacts.util;

import android.util.LruCache;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ExpirableCache.class */
public class ExpirableCache<K, V> {
    private LruCache<K, CachedValue<V>> mCache;
    private final AtomicInteger mGeneration = new AtomicInteger(0);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/ExpirableCache$CachedValue.class */
    public interface CachedValue<V> {
        V getValue();

        boolean isExpired();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/ExpirableCache$GenerationalCachedValue.class */
    public static class GenerationalCachedValue<V> implements CachedValue<V> {
        private final AtomicInteger mCacheGeneration;
        private final int mGeneration;
        public final V mValue;

        public GenerationalCachedValue(V v, AtomicInteger atomicInteger) {
            this.mValue = v;
            this.mCacheGeneration = atomicInteger;
            this.mGeneration = this.mCacheGeneration.get();
        }

        @Override // com.android.contacts.util.ExpirableCache.CachedValue
        public V getValue() {
            return this.mValue;
        }

        @Override // com.android.contacts.util.ExpirableCache.CachedValue
        public boolean isExpired() {
            return this.mGeneration != this.mCacheGeneration.get();
        }
    }

    private ExpirableCache(LruCache<K, CachedValue<V>> lruCache) {
        this.mCache = lruCache;
    }

    public static <K, V> ExpirableCache<K, V> create(int i) {
        return create(new LruCache(i));
    }

    public static <K, V> ExpirableCache<K, V> create(LruCache<K, CachedValue<V>> lruCache) {
        return new ExpirableCache<>(lruCache);
    }

    public void clearCache() {
        this.mCache.evictAll();
    }

    public void expireAll() {
        this.mGeneration.incrementAndGet();
    }

    public V get(K k) {
        CachedValue<V> cachedValue = getCachedValue(k);
        return (cachedValue == null || cachedValue.isExpired()) ? null : cachedValue.getValue();
    }

    public CachedValue<V> getCachedValue(K k) {
        return this.mCache.get(k);
    }

    public V getPossiblyExpired(K k) {
        CachedValue<V> cachedValue = getCachedValue(k);
        return cachedValue == null ? null : cachedValue.getValue();
    }

    public CachedValue<V> newCachedValue(V v) {
        return new GenerationalCachedValue(v, this.mGeneration);
    }

    public void put(K k, V v) {
        this.mCache.put(k, newCachedValue(v));
    }
}
