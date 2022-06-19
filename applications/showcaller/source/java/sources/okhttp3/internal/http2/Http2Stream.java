package okhttp3.internal.http2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream.class */
public final class Http2Stream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    long bytesLeftInWriteWindow;
    final Http2Connection connection;
    private boolean hasResponseHeaders;

    /* renamed from: id */
    final int f40487id;
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramingSink sink;
    private final FramingSource source;
    long unacknowledgedBytesRead = 0;
    final StreamTimeout readTimeout = new StreamTimeout();
    final StreamTimeout writeTimeout = new StreamTimeout();
    ErrorCode errorCode = null;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSink.class */
    public final class FramingSink implements Sink {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final long EMIT_BUFFER_SIZE = 16384;
        boolean closed;
        boolean finished;
        private final Buffer sendBuffer = new Buffer();

        FramingSink() {
            Http2Stream.this = r5;
        }

        private void emitFrame(boolean z) {
            Http2Stream http2Stream;
            long min;
            Http2Stream http2Stream2;
            synchronized (Http2Stream.this) {
                Http2Stream.this.writeTimeout.enter();
                while (true) {
                    http2Stream = Http2Stream.this;
                    if (http2Stream.bytesLeftInWriteWindow > 0 || this.finished || this.closed || http2Stream.errorCode != null) {
                        break;
                    }
                    http2Stream.waitForIo();
                }
                http2Stream.writeTimeout.exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed();
                min = Math.min(Http2Stream.this.bytesLeftInWriteWindow, this.sendBuffer.size());
                http2Stream2 = Http2Stream.this;
                http2Stream2.bytesLeftInWriteWindow -= min;
            }
            http2Stream2.writeTimeout.enter();
            try {
                Http2Stream http2Stream3 = Http2Stream.this;
                http2Stream3.connection.writeData(http2Stream3.f40487id, z && min == this.sendBuffer.size(), this.sendBuffer, min);
            } finally {
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (Http2Stream.this) {
                if (this.closed) {
                    return;
                }
                if (!Http2Stream.this.sink.finished) {
                    if (this.sendBuffer.size() > 0) {
                        while (this.sendBuffer.size() > 0) {
                            emitFrame(true);
                        }
                    } else {
                        Http2Stream http2Stream = Http2Stream.this;
                        http2Stream.connection.writeData(http2Stream.f40487id, true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.closed = true;
                }
                Http2Stream.this.connection.flush();
                Http2Stream.this.cancelStreamIfNecessary();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed();
            }
            while (this.sendBuffer.size() > 0) {
                emitFrame(false);
                Http2Stream.this.connection.flush();
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return Http2Stream.this.writeTimeout;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) {
            this.sendBuffer.write(buffer, j);
            while (this.sendBuffer.size() >= EMIT_BUFFER_SIZE) {
                emitFrame(false);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSource.class */
    public final class FramingSource implements Source {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        boolean closed;
        boolean finished;
        private final long maxByteCount;
        private final Buffer receiveBuffer = new Buffer();
        private final Buffer readBuffer = new Buffer();

        FramingSource(long j) {
            Http2Stream.this = r5;
            this.maxByteCount = j;
        }

        private void checkNotClosed() {
            if (!this.closed) {
                if (Http2Stream.this.errorCode != null) {
                    throw new StreamResetException(Http2Stream.this.errorCode);
                }
                return;
            }
            throw new IOException("stream closed");
        }

        private void waitUntilReadable() {
            Http2Stream.this.readTimeout.enter();
            while (this.readBuffer.size() == 0 && !this.finished && !this.closed) {
                try {
                    Http2Stream http2Stream = Http2Stream.this;
                    if (http2Stream.errorCode != null) {
                        break;
                    }
                    http2Stream.waitForIo();
                } finally {
                    Http2Stream.this.readTimeout.exitAndThrowIfTimedOut();
                }
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (Http2Stream.this) {
                this.closed = true;
                this.readBuffer.clear();
                Http2Stream.this.notifyAll();
            }
            Http2Stream.this.cancelStreamIfNecessary();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (Http2Stream.this) {
                waitUntilReadable();
                checkNotClosed();
                if (this.readBuffer.size() == 0) {
                    return -1L;
                }
                Buffer buffer2 = this.readBuffer;
                long read = buffer2.read(buffer, Math.min(j, buffer2.size()));
                Http2Stream http2Stream = Http2Stream.this;
                long j2 = http2Stream.unacknowledgedBytesRead + read;
                http2Stream.unacknowledgedBytesRead = j2;
                if (j2 >= http2Stream.connection.okHttpSettings.getInitialWindowSize() / 2) {
                    Http2Stream http2Stream2 = Http2Stream.this;
                    http2Stream2.connection.writeWindowUpdateLater(http2Stream2.f40487id, http2Stream2.unacknowledgedBytesRead);
                    Http2Stream.this.unacknowledgedBytesRead = 0L;
                }
                synchronized (Http2Stream.this.connection) {
                    Http2Connection http2Connection = Http2Stream.this.connection;
                    long j3 = http2Connection.unacknowledgedBytesRead + read;
                    http2Connection.unacknowledgedBytesRead = j3;
                    if (j3 >= http2Connection.okHttpSettings.getInitialWindowSize() / 2) {
                        Http2Connection http2Connection2 = Http2Stream.this.connection;
                        http2Connection2.writeWindowUpdateLater(0, http2Connection2.unacknowledgedBytesRead);
                        Http2Stream.this.connection.unacknowledgedBytesRead = 0L;
                    }
                }
                return read;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
            r7 = r7;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* JADX WARN: Type inference failed for: r6v0, types: [okio.BufferedSource, okio.Source] */
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
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.receive(okio.BufferedSource, long):void");
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Http2Stream.this.readTimeout;
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Stream$StreamTimeout.class */
    public class StreamTimeout extends AsyncTimeout {
        StreamTimeout() {
            Http2Stream.this = r4;
        }

        public void exitAndThrowIfTimedOut() {
            if (!exit()) {
                return;
            }
            throw newTimeoutException(null);
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
        }
    }

    public Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, List<Header> list) {
        Objects.requireNonNull(http2Connection, "connection == null");
        Objects.requireNonNull(list, "requestHeaders == null");
        this.f40487id = i;
        this.connection = http2Connection;
        this.bytesLeftInWriteWindow = http2Connection.peerSettings.getInitialWindowSize();
        FramingSource framingSource = new FramingSource(http2Connection.okHttpSettings.getInitialWindowSize());
        this.source = framingSource;
        FramingSink framingSink = new FramingSink();
        this.sink = framingSink;
        framingSource.finished = z2;
        framingSink.finished = z;
        this.requestHeaders = list;
    }

    private boolean closeInternal(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.finished && this.sink.finished) {
                return false;
            }
            this.errorCode = errorCode;
            notifyAll();
            this.connection.removeStream(this.f40487id);
            return true;
        }
    }

    public void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void cancelStreamIfNecessary() {
        boolean z;
        boolean isOpen;
        synchronized (this) {
            FramingSource framingSource = this.source;
            if (!framingSource.finished && framingSource.closed) {
                FramingSink framingSink = this.sink;
                if (framingSink.finished || framingSink.closed) {
                    z = true;
                    isOpen = isOpen();
                }
            }
            z = false;
            isOpen = isOpen();
        }
        if (z) {
            close(ErrorCode.CANCEL);
        } else if (isOpen) {
        } else {
            this.connection.removeStream(this.f40487id);
        }
    }

    void checkOutNotClosed() {
        FramingSink framingSink = this.sink;
        if (!framingSink.closed) {
            if (framingSink.finished) {
                throw new IOException("stream finished");
            }
            if (this.errorCode != null) {
                throw new StreamResetException(this.errorCode);
            }
            return;
        }
        throw new IOException("stream closed");
    }

    public void close(ErrorCode errorCode) {
        if (!closeInternal(errorCode)) {
            return;
        }
        this.connection.writeSynReset(this.f40487id, errorCode);
    }

    public void closeLater(ErrorCode errorCode) {
        if (!closeInternal(errorCode)) {
            return;
        }
        this.connection.writeSynResetLater(this.f40487id, errorCode);
    }

    public Http2Connection getConnection() {
        return this.connection;
    }

    public ErrorCode getErrorCode() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.errorCode;
        }
        return errorCode;
    }

    public int getId() {
        return this.f40487id;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    public Sink getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public Source getSource() {
        return this.source;
    }

    public boolean isLocallyInitiated() {
        return this.connection.client == ((this.f40487id & 1) == 1);
    }

    public boolean isOpen() {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            FramingSource framingSource = this.source;
            if (framingSource.finished || framingSource.closed) {
                FramingSink framingSink = this.sink;
                if (framingSink.finished || framingSink.closed) {
                    if (this.hasResponseHeaders) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    public Timeout readTimeout() {
        return this.readTimeout;
    }

    public void receiveData(BufferedSource bufferedSource, int i) {
        this.source.receive(bufferedSource, i);
    }

    public void receiveFin() {
        boolean isOpen;
        synchronized (this) {
            this.source.finished = true;
            isOpen = isOpen();
            notifyAll();
        }
        if (!isOpen) {
            this.connection.removeStream(this.f40487id);
        }
    }

    public void receiveHeaders(List<Header> list) {
        boolean z;
        synchronized (this) {
            z = true;
            this.hasResponseHeaders = true;
            if (this.responseHeaders == null) {
                this.responseHeaders = list;
                z = isOpen();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.responseHeaders);
                arrayList.add(null);
                arrayList.addAll(list);
                this.responseHeaders = arrayList;
            }
        }
        if (!z) {
            this.connection.removeStream(this.f40487id);
        }
    }

    public void receiveRstStream(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode == null) {
                this.errorCode = errorCode;
                notifyAll();
            }
        }
    }

    public void sendResponseHeaders(List<Header> list, boolean z) {
        Objects.requireNonNull(list, "responseHeaders == null");
        boolean z2 = false;
        synchronized (this) {
            this.hasResponseHeaders = true;
            if (!z) {
                this.sink.finished = true;
                z2 = true;
            }
        }
        this.connection.writeSynReply(this.f40487id, z2, list);
        if (z2) {
            this.connection.flush();
        }
    }

    public List<Header> takeResponseHeaders() {
        List<Header> list;
        synchronized (this) {
            if (!isLocallyInitiated()) {
                throw new IllegalStateException("servers cannot read response headers");
            }
            this.readTimeout.enter();
            while (this.responseHeaders == null && this.errorCode == null) {
                waitForIo();
            }
            this.readTimeout.exitAndThrowIfTimedOut();
            list = this.responseHeaders;
            if (list == null) {
                throw new StreamResetException(this.errorCode);
            }
            this.responseHeaders = null;
        }
        return list;
    }

    void waitForIo() {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    public Timeout writeTimeout() {
        return this.writeTimeout;
    }
}
