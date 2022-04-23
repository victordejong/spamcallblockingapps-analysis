package okhttp3.internal.cache;

import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/InternalCache.class */
public interface InternalCache {
    Response get(Request request);

    CacheRequest put(Response response);

    void remove(Request request);

    void trackConditionalCacheHit();

    void trackResponse(CacheStrategy cacheStrategy);

    void update(Response response, Response response2);
}
