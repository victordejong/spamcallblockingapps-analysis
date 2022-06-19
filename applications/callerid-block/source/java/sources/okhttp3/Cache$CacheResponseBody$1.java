package okhttp3;

import okhttp3.Cache;
import okhttp3.internal.cache.DiskLruCache;
import okio.ForwardingSource;
import okio.Source;
/* loaded from: classes2-dex2jar.jar:okhttp3/Cache$CacheResponseBody$1.class */
class Cache$CacheResponseBody$1 extends ForwardingSource {
    final /* synthetic */ Cache.CacheResponseBody this$0;
    final /* synthetic */ DiskLruCache.Snapshot val$snapshot;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Cache$CacheResponseBody$1(Cache.CacheResponseBody cacheResponseBody, Source source, DiskLruCache.Snapshot snapshot) {
        super(source);
        this.this$0 = cacheResponseBody;
        this.val$snapshot = snapshot;
    }

    @Override // okio.ForwardingSource
    public void close() {
        this.val$snapshot.close();
        super.close();
    }
}
