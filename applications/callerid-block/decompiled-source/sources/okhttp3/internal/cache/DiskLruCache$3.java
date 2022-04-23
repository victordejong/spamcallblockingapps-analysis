package okhttp3.internal.cache;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import okhttp3.internal.cache.DiskLruCache;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$3.class */
class DiskLruCache$3 implements Iterator<DiskLruCache.Snapshot> {
    final Iterator<DiskLruCache$Entry> delegate;
    DiskLruCache.Snapshot nextSnapshot;
    DiskLruCache.Snapshot removeSnapshot;
    final /* synthetic */ DiskLruCache this$0;

    DiskLruCache$3(DiskLruCache diskLruCache) {
        this.this$0 = diskLruCache;
        this.delegate = new ArrayList(diskLruCache.lruEntries.values()).iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.nextSnapshot != null) {
            return true;
        }
        synchronized (this.this$0) {
            try {
                if (this.this$0.closed) {
                    return false;
                }
                while (this.delegate.hasNext()) {
                    DiskLruCache.Snapshot snapshot = this.delegate.next().snapshot();
                    if (snapshot != null) {
                        this.nextSnapshot = snapshot;
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.Iterator
    public DiskLruCache.Snapshot next() {
        if (hasNext()) {
            DiskLruCache.Snapshot snapshot = this.nextSnapshot;
            this.removeSnapshot = snapshot;
            this.nextSnapshot = null;
            return snapshot;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        DiskLruCache.Snapshot snapshot = this.removeSnapshot;
        if (snapshot != null) {
            try {
                this.this$0.remove(DiskLruCache.Snapshot.access$000(snapshot));
            } catch (IOException e) {
            } catch (Throwable th) {
                this.removeSnapshot = null;
                throw th;
            }
            this.removeSnapshot = null;
            return;
        }
        throw new IllegalStateException("remove() before next()");
    }
}
