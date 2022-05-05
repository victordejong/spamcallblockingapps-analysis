package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/util/LruCache.class */
public class LruCache<T, Y> {
    private final Map<T, Y> cache = new LinkedHashMap(100, 0.75f, true);
    private long currentSize;
    private final long initialMaxSize;
    private long maxSize;

    public LruCache(long j) {
        this.initialMaxSize = j;
        this.maxSize = j;
    }

    private void evict() {
        trimToSize(this.maxSize);
    }

    public void clearMemory() {
        trimToSize(0L);
    }

    public boolean contains(@NonNull T t) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.cache.containsKey(t);
        }
        return containsKey;
    }

    @Nullable
    public Y get(@NonNull T t) {
        Y y;
        synchronized (this) {
            y = this.cache.get(t);
        }
        return y;
    }

    protected int getCount() {
        int size;
        synchronized (this) {
            size = this.cache.size();
        }
        return size;
    }

    public long getCurrentSize() {
        long j;
        synchronized (this) {
            j = this.currentSize;
        }
        return j;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getSize(@Nullable Y y) {
        return 1;
    }

    protected void onItemEvicted(@NonNull T t, @Nullable Y y) {
    }

    @Nullable
    public Y put(@NonNull T t, @Nullable Y y) {
        synchronized (this) {
            long size = getSize(y);
            if (size >= this.maxSize) {
                onItemEvicted(t, y);
                return null;
            }
            if (y != null) {
                this.currentSize += size;
            }
            Y put = this.cache.put(t, y);
            if (put != null) {
                this.currentSize -= getSize(put);
                if (!put.equals(y)) {
                    onItemEvicted(t, put);
                }
            }
            evict();
            return put;
        }
    }

    @Nullable
    public Y remove(@NonNull T t) {
        Y remove;
        synchronized (this) {
            remove = this.cache.remove(t);
            if (remove != null) {
                this.currentSize -= getSize(remove);
            }
        }
        return remove;
    }

    public void setSizeMultiplier(float f) {
        synchronized (this) {
            if (f < 0.0f) {
                throw new IllegalArgumentException("Multiplier must be >= 0");
            }
            this.maxSize = Math.round(((float) this.initialMaxSize) * f);
            evict();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void trimToSize(long j) {
        synchronized (this) {
            while (this.currentSize > j) {
                Iterator<Map.Entry<T, Y>> it = this.cache.entrySet().iterator();
                Map.Entry<T, Y> next = it.next();
                Y value = next.getValue();
                this.currentSize -= getSize(value);
                T key = next.getKey();
                it.remove();
                onItemEvicted(key, value);
            }
        }
    }
}
