package okhttp3;

import java.io.IOException;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.DiskLruCache$Editor;
import okio.ForwardingSink;
import okio.Sink;
/* loaded from: classes2-dex2jar.jar:okhttp3/Cache$CacheRequestImpl.class */
final class Cache$CacheRequestImpl implements CacheRequest {
    private Sink body;
    private Sink cacheOut;
    boolean done;
    private final DiskLruCache$Editor editor;
    final /* synthetic */ Cache this$0;

    Cache$CacheRequestImpl(final Cache cache, final DiskLruCache$Editor diskLruCache$Editor) {
        this.this$0 = cache;
        this.editor = diskLruCache$Editor;
        Sink newSink = diskLruCache$Editor.newSink(1);
        this.cacheOut = newSink;
        this.body = new ForwardingSink(newSink) { // from class: okhttp3.Cache$CacheRequestImpl.1
            public void close() {
                synchronized (Cache$CacheRequestImpl.this.this$0) {
                    Cache$CacheRequestImpl cache$CacheRequestImpl = Cache$CacheRequestImpl.this;
                    if (!cache$CacheRequestImpl.done) {
                        cache$CacheRequestImpl.done = true;
                        cache$CacheRequestImpl.this$0.writeSuccessCount++;
                        Cache$CacheRequestImpl.super.close();
                        diskLruCache$Editor.commit();
                    }
                }
            }
        };
    }

    @Override // okhttp3.internal.cache.CacheRequest
    public void abort() {
        synchronized (this.this$0) {
            if (!this.done) {
                this.done = true;
                this.this$0.writeAbortCount++;
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException e) {
                }
            }
        }
    }

    @Override // okhttp3.internal.cache.CacheRequest
    public Sink body() {
        return this.body;
    }
}
