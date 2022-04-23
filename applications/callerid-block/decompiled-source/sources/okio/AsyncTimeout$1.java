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
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(okio.Buffer r8, long r9) {
        /*
            r7 = this;
            r0 = r8
            long r0 = r0.size
            r1 = 0
            r2 = r9
            okio.Util.checkOffsetAndCount(r0, r1, r2)
        L_0x0009:
            r0 = 0
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0088
            r0 = r8
            okio.Segment r0 = r0.head
            r13 = r0
        L_0x0018:
            r0 = r11
            r14 = r0
            r0 = r11
            r1 = 65536(0x10000, double:3.2379E-319)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x004d
            r0 = r11
            r1 = r13
            int r1 = r1.limit
            r2 = r13
            int r2 = r2.pos
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r11
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0043
            r0 = r9
            r14 = r0
            goto L_0x004d
        L_0x0043:
            r0 = r13
            okio.Segment r0 = r0.next
            r13 = r0
            goto L_0x0018
        L_0x004d:
            r0 = r7
            okio.AsyncTimeout r0 = r0.this$0
            r0.enter()
            r0 = r7
            okio.Sink r0 = r0.val$sink     // Catch: all -> 0x0070, IOException -> 0x0074
            r1 = r8
            r2 = r14
            r0.write(r1, r2)     // Catch: all -> 0x0070, IOException -> 0x0074
            r0 = r9
            r1 = r14
            long r0 = r0 - r1
            r9 = r0
            r0 = r7
            okio.AsyncTimeout r0 = r0.this$0
            r1 = 1
            r0.exit(r1)
            goto L_0x0009
        L_0x0070:
            r8 = move-exception
            goto L_0x007e
        L_0x0074:
            r8 = move-exception
            r0 = r7
            okio.AsyncTimeout r0 = r0.this$0     // Catch: all -> 0x0070
            r1 = r8
            java.io.IOException r0 = r0.exit(r1)     // Catch: all -> 0x0070
            throw r0     // Catch: all -> 0x0070
        L_0x007e:
            r0 = r7
            okio.AsyncTimeout r0 = r0.this$0
            r1 = 0
            r0.exit(r1)
            r0 = r8
            throw r0
        L_0x0088:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout$1.write(okio.Buffer, long):void");
    }
}
