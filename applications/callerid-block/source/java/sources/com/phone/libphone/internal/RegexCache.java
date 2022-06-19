package com.phone.libphone.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/internal/RegexCache.class */
public class RegexCache {

    /* renamed from: a */
    private LRUCache<String, Pattern> f11641a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/internal/RegexCache$LRUCache.class */
    public static class LRUCache<K, V> {

        /* renamed from: a */
        private LinkedHashMap<K, V> f11642a;

        /* renamed from: b */
        private int f11643b;

        public LRUCache(int i) {
            this.f11643b = i;
            this.f11642a = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.phone.libphone.internal.RegexCache.LRUCache.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > LRUCache.this.f11643b;
                }
            };
        }

        /* renamed from: b */
        public V m1641b(K k) {
            V v;
            synchronized (this) {
                v = this.f11642a.get(k);
            }
            return v;
        }

        /* renamed from: c */
        public void m1640c(K k, V v) {
            synchronized (this) {
                this.f11642a.put(k, v);
            }
        }
    }

    public RegexCache(int i) {
        this.f11641a = new LRUCache<>(i);
    }

    /* renamed from: a */
    public Pattern m1643a(String str) {
        Pattern m1641b = this.f11641a.m1641b(str);
        Pattern pattern = m1641b;
        if (m1641b == null) {
            pattern = Pattern.compile(str);
            this.f11641a.m1640c(str, pattern);
        }
        return pattern;
    }
}
