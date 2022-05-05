package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/RegexCache.class */
public class RegexCache {
    private LRUCache<String, Pattern> cache;

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/RegexCache$LRUCache.class */
    private static class LRUCache<K, V> {
        private LinkedHashMap<K, V> map;
        private int size;

        public LRUCache(int i) {
            this.size = i;
            this.map = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.google.i18n.phonenumbers.RegexCache.LRUCache.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > LRUCache.this.size;
                }
            };
        }

        public boolean containsKey(K k) {
            boolean containsKey;
            synchronized (this) {
                containsKey = this.map.containsKey(k);
            }
            return containsKey;
        }

        public V get(K k) {
            V v;
            synchronized (this) {
                v = this.map.get(k);
            }
            return v;
        }

        public void put(K k, V v) {
            synchronized (this) {
                this.map.put(k, v);
            }
        }
    }

    public RegexCache(int i) {
        this.cache = new LRUCache<>(i);
    }

    boolean containsRegex(String str) {
        return this.cache.containsKey(str);
    }

    public Pattern getPatternForRegex(String str) {
        Pattern pattern = this.cache.get(str);
        Pattern pattern2 = pattern;
        if (pattern == null) {
            pattern2 = Pattern.compile(str);
            this.cache.put(str, pattern2);
        }
        return pattern2;
    }
}
