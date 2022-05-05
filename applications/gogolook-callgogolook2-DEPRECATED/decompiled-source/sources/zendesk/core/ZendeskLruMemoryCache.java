package zendesk.core;

import android.util.LruCache;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskLruMemoryCache.class */
public class ZendeskLruMemoryCache implements MemoryCache {
    public final LruCache<String, Object> cache;

    public ZendeskLruMemoryCache() {
        this(new LruCache(50));
    }

    @VisibleForTesting
    public ZendeskLruMemoryCache(LruCache<String, Object> lruCache) {
        this.cache = lruCache;
    }

    @Override // zendesk.core.MemoryCache
    public void clear() {
        this.cache.evictAll();
    }

    @Nullable
    public <T> T get(@NonNull String str) {
        T t;
        synchronized (this) {
            t = (T) this.cache.get(str);
        }
        return t;
    }

    @Override // zendesk.core.MemoryCache
    @NonNull
    public <T> T getOrDefault(@NonNull String str, @NonNull T t) {
        T t2 = (T) get(str);
        return t2 != null ? t2 : t;
    }

    @Override // zendesk.core.MemoryCache
    public void put(@NonNull String str, @NonNull Object obj) {
        synchronized (this) {
            this.cache.put(str, obj);
        }
    }
}
