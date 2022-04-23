package okhttp3.internal.http2;

import java.io.EOFException;
import java.util.ArrayList;
import okhttp3.Headers;
import okhttp3.internal.http2.Header;
import okio.Buffer;
import okio.BufferedSource;
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
        if (r15 == (-1)) goto L_0x014b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0142, code lost:
        updateConnectionFlowControl(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014a, code lost:
        return r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x014d, code lost:
        if (r13 != null) goto L_0x0154;
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

    void receive(BufferedSource bufferedSource, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        while (j > 0) {
            synchronized (this.this$0) {
                z = this.finished;
                z3 = true;
                z2 = this.readBuffer.size() + j > this.maxByteCount;
            }
            if (z2) {
                bufferedSource.skip(j);
                this.this$0.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                return;
            } else if (z) {
                bufferedSource.skip(j);
                return;
            } else {
                long read = bufferedSource.read(this.receiveBuffer, j);
                if (read != -1) {
                    j -= read;
                    synchronized (this.this$0) {
                        if (this.readBuffer.size() != 0) {
                            z3 = false;
                        }
                        this.readBuffer.writeAll(this.receiveBuffer);
                        if (z3) {
                            this.this$0.notifyAll();
                        }
                    }
                } else {
                    throw new EOFException();
                }
            }
        }
    }

    public Timeout timeout() {
        return this.this$0.readTimeout;
    }
}
