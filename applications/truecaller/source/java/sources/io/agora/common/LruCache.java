package io.agora.common;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes16-dex2jar.jar:io/agora/common/LruCache.class */
public class LruCache<K, V> extends LinkedHashMap<K, V> {
    private static final long serialVersionUID = -6570821102245394445L;
    private int maxSize;

    public LruCache(int i) {
        super(0, 0.75f, true);
        this.maxSize = i;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, V> entry) {
        return size() > this.maxSize;
    }
}
