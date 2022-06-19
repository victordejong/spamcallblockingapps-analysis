package com.millennialmedia.internal.utils;

import android.text.TextUtils;
import com.millennialmedia.MMLog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/TimedMemoryCache.class */
public class TimedMemoryCache<O> {
    private static final long CACHE_TIMEOUT = 60000;
    private static final long FORCE_REMOVE_TIME = -1;
    private static final String TAG = "TimedMemoryCache";
    private static long cleanerDelay = 10000;
    private Map<String, CacheItem> cache = new ConcurrentHashMap();
    private AtomicInteger lastCacheId = new AtomicInteger(0);
    private AtomicBoolean cleanerRunning = new AtomicBoolean();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/TimedMemoryCache$CacheItem.class */
    public static class CacheItem<T> {
        public T cachedObject;
        public long itemTimeout;

        public CacheItem(T t, Long l) {
            Long l2 = l;
            if (l == null) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TimedMemoryCache.TAG, "Cached item timeout is null, setting to default: 60000");
                }
                l2 = 60000L;
            }
            this.cachedObject = t;
            this.itemTimeout = System.currentTimeMillis() + l2.longValue();
        }

        public String toString() {
            return "cachedObject: " + this.cachedObject + ", itemTimeout: " + this.itemTimeout;
        }
    }

    private CacheItem getCachedItem(String str) {
        if (str == null) {
            return null;
        }
        CacheItem cacheItem = this.cache.get(str);
        if (cacheItem == null) {
            this.cache.remove(str);
            return null;
        } else if (!removeItemIfExpired(str, cacheItem, System.currentTimeMillis())) {
            return cacheItem;
        } else {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean removeItemIfExpired(String str, CacheItem cacheItem, long j) {
        if (j > cacheItem.itemTimeout || j == -1) {
            if (MMLog.isDebugEnabled()) {
                String str2 = TAG;
                MMLog.m4070d(str2, "Removed CacheItem\n\t:Checked time: " + j + "\n\tID: " + str + "\n\tItem: " + cacheItem);
            }
            this.cache.remove(str);
            onExpired(str, cacheItem.cachedObject);
            return true;
        }
        return false;
    }

    public void runCleaner(long j) {
        for (Map.Entry<String, CacheItem> entry : this.cache.entrySet()) {
            String key = entry.getKey();
            CacheItem value = entry.getValue();
            if (value != null) {
                removeItemIfExpired(key, value, j);
            } else if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4070d(str, "Attempted to remove CacheItem with ID <" + key + "> but item was null");
            }
        }
    }

    public static void setCleanerDelay(long j) {
        cleanerDelay = j;
    }

    private void startCleaner() {
        if (this.cleanerRunning.compareAndSet(false, true)) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.TimedMemoryCache.1
                @Override // java.lang.Runnable
                public void run() {
                    do {
                        try {
                            Thread.sleep(TimedMemoryCache.cleanerDelay);
                            TimedMemoryCache.this.runCleaner(System.currentTimeMillis());
                        } catch (InterruptedException e) {
                            MMLog.m4067e(TimedMemoryCache.TAG, "Error occurred while cleaner was sleeping", e);
                        }
                    } while (TimedMemoryCache.this.cache.size() > 0);
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(TimedMemoryCache.TAG, "Stopping cleaner");
                    }
                    TimedMemoryCache.this.cleanerRunning.set(false);
                }
            });
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "Cleaner already running");
        }
    }

    public String add(O o, Long l) {
        return add(null, o, l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String add(String str, O o, Long l) {
        if (o == null) {
            MMLog.m4068e(TAG, "Nothing to cache, object provided is null");
            return null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = String.valueOf(this.lastCacheId.incrementAndGet());
        }
        CacheItem cacheItem = this.cache.get(str2);
        if (cacheItem != null) {
            onOverwritten(str2, cacheItem.cachedObject);
        }
        CacheItem cacheItem2 = new CacheItem(o, l);
        this.cache.put(str2, cacheItem2);
        if (MMLog.isDebugEnabled()) {
            String str3 = TAG;
            MMLog.m4070d(str3, "Add CacheItem\n\tID: " + str2 + "\n\tItem: " + cacheItem2);
        }
        startCleaner();
        return str2;
    }

    public boolean containsKey(String str) {
        return this.cache.containsKey(str);
    }

    public void expireAll() {
        runCleaner(-1L);
    }

    public O get(String str) {
        CacheItem cachedItem = getCachedItem(str);
        if (cachedItem != null) {
            this.cache.remove(str);
            return (O) cachedItem.cachedObject;
        } else if (!MMLog.isDebugEnabled()) {
            return null;
        } else {
            String str2 = TAG;
            MMLog.m4070d(str2, "No item in cache for ID <" + str + ">");
            return null;
        }
    }

    public void onExpired(String str, O o) {
    }

    public void onOverwritten(String str, O o) {
    }
}
