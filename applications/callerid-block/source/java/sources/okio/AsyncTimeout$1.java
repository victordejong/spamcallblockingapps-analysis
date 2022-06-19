package okio;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$1.class */
class AsyncTimeout$1 implements Sink {
    final /* synthetic */ AsyncTimeout this$0;
    final /* synthetic */ Sink val$sink;

    AsyncTimeout$1(AsyncTimeout asyncTimeout, Sink sink) {
        this.this$0 = asyncTimeout;
        this.val$sink = sink;
    }

    public void close() {
        this.this$0.enter();
        try {
            try {
                this.val$sink.close();
                this.this$0.exit(true);
            } catch (IOException e) {
                throw this.this$0.exit(e);
            }
        } catch (Throwable th) {
            this.this$0.exit(false);
            throw th;
        }
    }

    public void flush() {
        this.this$0.enter();
        try {
            try {
                this.val$sink.flush();
                this.this$0.exit(true);
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
        return "AsyncTimeout.sink(" + this.val$sink + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public void write(Buffer buffer, long j) {
        char c;
        Util.checkOffsetAndCount(buffer.size, 0L, j);
        ?? r9 = j;
        while (true) {
            char c2 = 0;
            if (r9 > 0) {
                Segment segment = buffer.head;
                while (true) {
                    Segment segment2 = segment;
                    c = c2;
                    if (c2 >= 65536) {
                        break;
                    }
                    c2 += segment2.limit - segment2.pos;
                    if (c2 >= r9) {
                        c = r9;
                        break;
                    }
                    segment = segment2.next;
                }
                this.this$0.enter();
                try {
                    try {
                        this.val$sink.write(buffer, c);
                        r9 -= c;
                        this.this$0.exit(true);
                    } catch (IOException e) {
                        throw this.this$0.exit(e);
                    }
                } catch (Throwable th) {
                    this.this$0.exit(false);
                    throw th;
                }
            } else {
                return;
            }
        }
    }
}
