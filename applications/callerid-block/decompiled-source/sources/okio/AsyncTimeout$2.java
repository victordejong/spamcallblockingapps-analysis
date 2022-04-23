package okio;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$2.class */
class AsyncTimeout$2 implements Source {
    final /* synthetic */ AsyncTimeout this$0;
    final /* synthetic */ Source val$source;

    AsyncTimeout$2(AsyncTimeout asyncTimeout, Source source) {
        this.this$0 = asyncTimeout;
        this.val$source = source;
    }

    public void close() {
        try {
            try {
                this.val$source.close();
                this.this$0.exit(true);
            } catch (IOException e) {
                throw this.this$0.exit(e);
            }
        } catch (Throwable th) {
            this.this$0.exit(false);
            throw th;
        }
    }

    public long read(Buffer buffer, long j) {
        this.this$0.enter();
        try {
            try {
                long read = this.val$source.read(buffer, j);
                this.this$0.exit(true);
                return read;
            } catch (IOException e) {
                throw this.this$0.exit(e);
            }
        } catch (Throwable th) {
            this.this$0.exit(false);
            throw th;
        }
    }

    public Timeout timeout() {
        return this.this$0;
    }

    public String toString() {
        return "AsyncTimeout.source(" + this.val$source + ")";
    }
}
