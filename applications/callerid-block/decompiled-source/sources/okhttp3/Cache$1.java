package okhttp3;

import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.InternalCache;
/* loaded from: classes2-dex2jar.jar:okhttp3/Cache$1.class */
class Cache$1 implements InternalCache {
    final /* synthetic */ Cache this$0;

    Cache$1(Cache cache) {
        this.this$0 = cache;
    }

    @Override // okhttp3.internal.cache.InternalCache
    public Response get(Request request) {
        return this.this$0.get(request);
    }

    @Override // okhttp3.internal.cache.InternalCache
    public CacheRequest put(Response response) {
        return this.this$0.put(response);
    }

    @Override // okhttp3.internal.cache.InternalCache
    public void remove(Request request) {
        this.this$0.remove(request);
    }

    @Override // okhttp3.internal.cache.InternalCache
    public void trackConditionalCacheHit() {
        this.this$0.trackConditionalCacheHit();
    }

    @Override // okhttp3.internal.cache.InternalCache
    public void trackResponse(CacheStrategy cacheStrategy) {
        this.this$0.trackResponse(cacheStrategy);
    }

    @Override // okhttp3.internal.cache.InternalCache
    public void update(Response response, Response response2) {
        this.this$0.update(response, response2);
    }
}
