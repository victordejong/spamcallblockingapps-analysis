package okhttp3.internal.cache;

import java.io.FileNotFoundException;
import java.io.IOException;
import okio.Okio;
import okio.Sink;
import okio.Source;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor.class */
public final class DiskLruCache$Editor {
    private boolean done;
    final DiskLruCache$Entry entry;
    final /* synthetic */ DiskLruCache this$0;
    final boolean[] written;

    DiskLruCache$Editor(DiskLruCache diskLruCache, DiskLruCache$Entry diskLruCache$Entry) {
        this.this$0 = diskLruCache;
        this.entry = diskLruCache$Entry;
        this.written = diskLruCache$Entry.readable ? null : new boolean[diskLruCache.valueCount];
    }

    public void abort() {
        synchronized (this.this$0) {
            if (this.done) {
                throw new IllegalStateException();
            }
            if (this.entry.currentEditor == this) {
                this.this$0.completeEdit(this, false);
            }
            this.done = true;
        }
    }

    public void abortUnlessCommitted() {
        synchronized (this.this$0) {
            if (!this.done && this.entry.currentEditor == this) {
                try {
                    this.this$0.completeEdit(this, false);
                } catch (IOException e) {
                }
            }
        }
    }

    public void commit() {
        synchronized (this.this$0) {
            if (this.done) {
                throw new IllegalStateException();
            }
            if (this.entry.currentEditor == this) {
                this.this$0.completeEdit(this, true);
            }
            this.done = true;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003b -> B:8:0x002c). Please submit an issue!!! */
    void detach() {
        if (this.entry.currentEditor == this) {
            int i = 0;
            while (true) {
                DiskLruCache diskLruCache = this.this$0;
                if (i >= diskLruCache.valueCount) {
                    this.entry.currentEditor = null;
                    return;
                } else {
                    try {
                        diskLruCache.fileSystem.delete(this.entry.dirtyFiles[i]);
                    } catch (IOException e) {
                    }
                    i++;
                }
            }
        }
    }

    public Sink newSink(int i) {
        synchronized (this.this$0) {
            if (!this.done) {
                DiskLruCache$Entry diskLruCache$Entry = this.entry;
                if (diskLruCache$Entry.currentEditor != this) {
                    return Okio.blackhole();
                }
                if (!diskLruCache$Entry.readable) {
                    this.written[i] = true;
                }
                try {
                    return new FaultHidingSink(this.this$0.fileSystem.sink(diskLruCache$Entry.dirtyFiles[i])) { // from class: okhttp3.internal.cache.DiskLruCache$Editor.1
                        @Override // okhttp3.internal.cache.FaultHidingSink
                        protected void onException(IOException iOException) {
                            synchronized (DiskLruCache$Editor.this.this$0) {
                                DiskLruCache$Editor.this.detach();
                            }
                        }
                    };
                } catch (FileNotFoundException e) {
                    return Okio.blackhole();
                }
            }
            throw new IllegalStateException();
        }
    }

    public Source newSource(int i) {
        synchronized (this.this$0) {
            if (!this.done) {
                DiskLruCache$Entry diskLruCache$Entry = this.entry;
                if (!diskLruCache$Entry.readable || diskLruCache$Entry.currentEditor != this) {
                    return null;
                }
                try {
                    return this.this$0.fileSystem.source(diskLruCache$Entry.cleanFiles[i]);
                } catch (FileNotFoundException e) {
                    return null;
                }
            }
            throw new IllegalStateException();
        }
    }
}
