package okhttp3.internal.cache;

import okio.Sink;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheRequest.class */
public interface CacheRequest {
    void abort();

    Sink body();
}
