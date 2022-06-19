package okhttp3.internal.cache;

import java.io.IOException;
import okio.Okio;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$1.class */
class DiskLruCache$1 implements Runnable {
    final /* synthetic */ DiskLruCache this$0;

    DiskLruCache$1(DiskLruCache diskLruCache) {
        this.this$0 = diskLruCache;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            DiskLruCache diskLruCache = this.this$0;
            if ((!diskLruCache.initialized) || diskLruCache.closed) {
                return;
            }
            try {
                diskLruCache.trimToSize();
            } catch (IOException e) {
                this.this$0.mostRecentTrimFailed = true;
            }
            try {
                if (this.this$0.journalRebuildRequired()) {
                    this.this$0.rebuildJournal();
                    this.this$0.redundantOpCount = 0;
                }
            } catch (IOException e2) {
                DiskLruCache diskLruCache2 = this.this$0;
                diskLruCache2.mostRecentRebuildFailed = true;
                diskLruCache2.journalWriter = Okio.buffer(Okio.blackhole());
            }
        }
    }
}
