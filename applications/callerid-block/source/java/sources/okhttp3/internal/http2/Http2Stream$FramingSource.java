package okhttp3.internal.http2;

import java.util.ArrayList;
import okhttp3.Headers;
import okhttp3.internal.http2.Header;
import okio.Buffer;
import okio.Source;
import okio.Timeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSource.class */
final class Http2Stream$FramingSource implements Source {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    boolean closed;
    boolean finished;
    private final long maxByteCount;
    final /* synthetic */ Http2Stream this$0;
    private final Buffer receiveBuffer = new Buffer();
    private final Buffer readBuffer = new Buffer();

    Http2Stream$FramingSource(Http2Stream http2Stream, long j) {
        this.this$0 = http2Stream;
        this.maxByteCount = j;
    }

    private void updateConnectionFlowControl(long j) {
        this.this$0.connection.updateConnectionFlowControl(j);
    }

    public void close() {
        long size;
        Header.Listener listener;
        ArrayList<Headers> arrayList;
        synchronized (this.this$0) {
            try {
                this.closed = true;
                size = this.readBuffer.size();
                this.readBuffer.clear();
                listener = null;
                if (Http2Stream.access$000(this.this$0).isEmpty() || Http2Stream.access$100(this.this$0) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(Http2Stream.access$000(this.this$0));
                    Http2Stream.access$000(this.this$0).clear();
                    listener = Http2Stream.access$100(this.this$0);
                }
                this.this$0.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (size > 0) {
            updateConnectionFlowControl(size);
        }
        this.this$0.cancelStreamIfNecessary();
        if (listener != null) {
            for (Headers headers : arrayList) {
                listener.onHeaders(headers);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x013f, code lost:
        if (r15 == (-1)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0142, code lost:
        updateConnectionFlowControl(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014a, code lost:
        return r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x014d, code lost:
        if (r13 != null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0150, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x015d, code lost:
        throw new okhttp3.internal.http2.StreamResetException(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0169, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(okio.Buffer r8, long r9) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream$FramingSource.read(okio.Buffer, long):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r7 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void receive(okio.BufferedSource r6, long r7) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream$FramingSource.receive(okio.BufferedSource, long):void");
    }

    public Timeout timeout() {
        return this.this$0.readTimeout;
    }
}
