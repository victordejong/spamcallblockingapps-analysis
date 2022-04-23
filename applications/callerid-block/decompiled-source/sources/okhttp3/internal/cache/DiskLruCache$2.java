package okhttp3.internal.cache;

import java.io.IOException;
import okio.Sink;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$2.class */
class DiskLruCache$2 extends FaultHidingSink {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    final /* synthetic */ DiskLruCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DiskLruCache$2(DiskLruCache diskLruCache, Sink sink) {
        super(sink);
        this.this$0 = diskLruCache;
    }

    @Override // okhttp3.internal.cache.FaultHidingSink
    protected void onException(IOException iOException) {
        this.this$0.hasJournalErrors = true;
    }
}
