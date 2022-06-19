package com.phone.libphone.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/internal/RegexCache.class */
public class RegexCache {

    /* renamed from: a */
    private LRUCache<String, Pattern> f40244a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/internal/RegexCache$LRUCache.class */
    public static class LRUCache<K, V> {

        /* renamed from: a */
        private LinkedHashMap<K, V> f40245a;

        /* renamed from: b */
        private int f40246b;

        public LRUCache(int i) {
            this.f40246b = i;
            this.f40245a = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.phone.libphone.internal.RegexCache.LRUCache.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > LRUCache.this.f40246b;
                }
            };
        }

        /* renamed from: b */
        public V m657b(K k) {
            V v;
            synchronized (this) {
                v = this.f40245a.get(k);
            }
            return v;
        }

        /* renamed from: c */
        public void m656c(K k, V v) {
            synchronized (this) {
                this.f40245a.put(k, v);
            }
        }
    }

    public RegexCache(int i) {
        this.f40244a = new LRUCache<>(i);
    }

    /* renamed from: a */
    public Pattern m659a(String str) {
        Pattern m657b = this.f40244a.m657b(str);
        Pattern pattern = m657b;
        if (m657b == null) {
            pattern = Pattern.compile(str);
            this.f40244a.m656c(str, pattern);
        }
        return pattern;
    }
}
