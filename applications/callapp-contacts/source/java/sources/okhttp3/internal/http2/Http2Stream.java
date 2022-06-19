package okhttp3.internal.http2;

import com.appsflyer.internal.referrer.Payload;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.Headers;
import okhttp3.internal.Util;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.AbstractC3207h;
import p092c.C3191ae;
import p092c.C3196d;
import p092c.C3202f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� _2\u00020\u0001:\u0004_`abB1\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020#J\r\u0010C\u001a\u00020AH��¢\u0006\u0002\bDJ\r\u0010E\u001a\u00020AH��¢\u0006\u0002\bFJ\u0018\u0010G\u001a\u00020A2\u0006\u0010H\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u001a\u0010I\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u000e\u0010J\u001a\u00020A2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010K\u001a\u00020A2\u0006\u0010L\u001a\u00020\nJ\u0006\u0010M\u001a\u00020NJ\u0006\u0010O\u001a\u00020PJ\u0006\u0010,\u001a\u00020QJ\u0016\u0010R\u001a\u00020A2\u0006\u00104\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0003J\u0016\u0010U\u001a\u00020A2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010V\u001a\u00020A2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010W\u001a\u00020\nJ\u0006\u0010L\u001a\u00020\nJ\r\u0010X\u001a\u00020AH��¢\u0006\u0002\bYJ$\u0010Z\u001a\u00020A2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020]0\\2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010^\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020QR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000f8@X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\u001cX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b!\u0010 R$\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u0010)\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R\u0018\u0010,\u001a\u00060-R\u00020��X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b.\u0010/R\u0018\u00100\u001a\u000601R\u00020��X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b2\u00103R\u0018\u00104\u001a\u000605R\u00020��X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b6\u00107R$\u00108\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b9\u0010&\"\u0004\b:\u0010(R$\u0010;\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b<\u0010&\"\u0004\b=\u0010(R\u0018\u0010>\u001a\u00060-R\u00020��X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b?\u0010/¨\u0006c"}, m4298d2 = {"Lokhttp3/internal/http2/Http2Stream;", "", "id", "", "connection", "Lokhttp3/internal/http2/Http2Connection;", "outFinished", "", "inFinished", "headers", "Lokhttp3/Headers;", "(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V", "getConnection", "()Lokhttp3/internal/http2/Http2Connection;", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "getErrorCode$okhttp", "()Lokhttp3/internal/http2/ErrorCode;", "setErrorCode$okhttp", "(Lokhttp3/internal/http2/ErrorCode;)V", "errorException", "Ljava/io/IOException;", "getErrorException$okhttp", "()Ljava/io/IOException;", "setErrorException$okhttp", "(Ljava/io/IOException;)V", "hasResponseHeaders", "headersQueue", "Ljava/util/ArrayDeque;", "getId", "()I", "isLocallyInitiated", "()Z", "isOpen", "<set-?>", "", "readBytesAcknowledged", "getReadBytesAcknowledged", "()J", "setReadBytesAcknowledged$okhttp", "(J)V", "readBytesTotal", "getReadBytesTotal", "setReadBytesTotal$okhttp", "readTimeout", "Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "getReadTimeout$okhttp", "()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "sink", "Lokhttp3/internal/http2/Http2Stream$FramingSink;", "getSink$okhttp", "()Lokhttp3/internal/http2/Http2Stream$FramingSink;", Payload.SOURCE, "Lokhttp3/internal/http2/Http2Stream$FramingSource;", "getSource$okhttp", "()Lokhttp3/internal/http2/Http2Stream$FramingSource;", "writeBytesMaximum", "getWriteBytesMaximum", "setWriteBytesMaximum$okhttp", "writeBytesTotal", "getWriteBytesTotal", "setWriteBytesTotal$okhttp", "writeTimeout", "getWriteTimeout$okhttp", "addBytesToWriteWindow", "", "delta", "cancelStreamIfNecessary", "cancelStreamIfNecessary$okhttp", "checkOutNotClosed", "checkOutNotClosed$okhttp", EventConstants.CLOSE, "rstStatusCode", "closeInternal", "closeLater", "enqueueTrailers", "trailers", "getSink", "Lokio/Sink;", "getSource", "Lokio/Source;", "Lokio/Timeout;", "receiveData", "Lokio/BufferedSource;", "length", "receiveHeaders", "receiveRstStream", "takeHeaders", "waitForIo", "waitForIo$okhttp", "writeHeaders", "responseHeaders", "", "Lokhttp3/internal/http2/Header;", "flushHeaders", "Companion", "FramingSink", "FramingSource", "StreamTimeout", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Stream.class */
public final class Http2Stream {
    public static final Companion Companion = new Companion(null);
    public static final long EMIT_BUFFER_SIZE = 16384;
    private final Http2Connection connection;
    private ErrorCode errorCode;
    private IOException errorException;
    private boolean hasResponseHeaders;
    private final ArrayDeque<Headers> headersQueue;

    /* renamed from: id */
    private final int f67166id;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final FramingSink sink;
    private final FramingSource source;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final StreamTimeout readTimeout = new StreamTimeout();
    private final StreamTimeout writeTimeout = new StreamTimeout();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lokhttp3/internal/http2/Http2Stream$Companion;", "", "()V", "EMIT_BUFFER_SIZE", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Stream$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n��\b\u0080\u0004\u0018��2\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, m4298d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Lokio/Sink;", "finished", "", "(Lokhttp3/internal/http2/Http2Stream;Z)V", "closed", "getClosed", "()Z", "setClosed", "(Z)V", "getFinished", "setFinished", "sendBuffer", "Lokio/Buffer;", "trailers", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", EventConstants.CLOSE, "", "emitFrame", "outFinishedOnLastFrame", "flush", "timeout", "Lokio/Timeout;", "write", Payload.SOURCE, "byteCount", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSink.class */
    public final class FramingSink implements AbstractC3188ab {
        private boolean closed;
        private boolean finished;
        private final C3202f sendBuffer;
        private Headers trailers;

        public FramingSink(boolean z) {
            Http2Stream.this = r5;
            this.finished = z;
            this.sendBuffer = new C3202f();
        }

        public /* synthetic */ FramingSink(Http2Stream http2Stream, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z);
        }

        private final void emitFrame(boolean z) throws IOException {
            long min;
            boolean z2;
            synchronized (Http2Stream.this) {
                Http2Stream.this.getWriteTimeout$okhttp().enter();
                while (Http2Stream.this.getWriteBytesTotal() >= Http2Stream.this.getWriteBytesMaximum() && !this.finished && !this.closed && Http2Stream.this.getErrorCode$okhttp() == null) {
                    Http2Stream.this.waitForIo$okhttp();
                }
                Http2Stream.this.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed$okhttp();
                min = Math.min(Http2Stream.this.getWriteBytesMaximum() - Http2Stream.this.getWriteBytesTotal(), this.sendBuffer.f11572b);
                Http2Stream http2Stream = Http2Stream.this;
                http2Stream.setWriteBytesTotal$okhttp(http2Stream.getWriteBytesTotal() + min);
                z2 = z && min == this.sendBuffer.f11572b && Http2Stream.this.getErrorCode$okhttp() == null;
                C20128v c20128v = C20128v.f66529a;
            }
            Http2Stream.this.getWriteTimeout$okhttp().enter();
            try {
                Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), z2, this.sendBuffer, min);
            } finally {
                Http2Stream.this.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
            }
        }

        @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sb = new StringBuilder("Thread ");
                Thread currentThread = Thread.currentThread();
                C18524p.m3843b(currentThread, "Thread.currentThread()");
                sb.append(currentThread.getName());
                sb.append(" MUST NOT hold lock on ");
                sb.append(http2Stream);
                throw new AssertionError(sb.toString());
            }
            synchronized (Http2Stream.this) {
                if (this.closed) {
                    return;
                }
                boolean z = Http2Stream.this.getErrorCode$okhttp() == null;
                C20128v c20128v = C20128v.f66529a;
                if (!Http2Stream.this.getSink$okhttp().finished) {
                    boolean z2 = this.sendBuffer.f11572b > 0;
                    if (this.trailers != null) {
                        while (this.sendBuffer.f11572b > 0) {
                            emitFrame(false);
                        }
                        Http2Connection connection = Http2Stream.this.getConnection();
                        int id = Http2Stream.this.getId();
                        Headers headers = this.trailers;
                        C18524p.m3851a(headers);
                        connection.writeHeaders$okhttp(id, z, Util.toHeaderList(headers));
                    } else if (z2) {
                        while (this.sendBuffer.f11572b > 0) {
                            emitFrame(true);
                        }
                    } else if (z) {
                        Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.closed = true;
                    C20128v c20128v2 = C20128v.f66529a;
                }
                Http2Stream.this.getConnection().flush();
                Http2Stream.this.cancelStreamIfNecessary$okhttp();
            }
        }

        @Override // p092c.AbstractC3188ab, java.io.Flushable
        public final void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sb = new StringBuilder("Thread ");
                Thread currentThread = Thread.currentThread();
                C18524p.m3843b(currentThread, "Thread.currentThread()");
                sb.append(currentThread.getName());
                sb.append(" MUST NOT hold lock on ");
                sb.append(http2Stream);
                throw new AssertionError(sb.toString());
            }
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed$okhttp();
                C20128v c20128v = C20128v.f66529a;
            }
            while (this.sendBuffer.f11572b > 0) {
                emitFrame(false);
                Http2Stream.this.getConnection().flush();
            }
        }

        public final boolean getClosed() {
            return this.closed;
        }

        public final boolean getFinished() {
            return this.finished;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        public final void setClosed(boolean z) {
            this.closed = z;
        }

        public final void setFinished(boolean z) {
            this.finished = z;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        @Override // p092c.AbstractC3188ab
        public final C3191ae timeout() {
            return Http2Stream.this.getWriteTimeout$okhttp();
        }

        @Override // p092c.AbstractC3188ab
        public final void write(C3202f source, long j) throws IOException {
            C18524p.m3840d(source, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (!Util.assertionsEnabled || !Thread.holdsLock(http2Stream)) {
                this.sendBuffer.write(source, j);
                while (this.sendBuffer.f11572b >= 16384) {
                    emitFrame(false);
                }
                return;
            }
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(http2Stream);
            throw new AssertionError(sb.toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\u00020\u0001B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H��¢\u0006\u0002\b\"J\b\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006&"}, m4298d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Lokio/Source;", "maxByteCount", "", "finished", "", "(Lokhttp3/internal/http2/Http2Stream;JZ)V", "closed", "getClosed$okhttp", "()Z", "setClosed$okhttp", "(Z)V", "getFinished$okhttp", "setFinished$okhttp", "readBuffer", "Lokio/Buffer;", "getReadBuffer", "()Lokio/Buffer;", "receiveBuffer", "getReceiveBuffer", "trailers", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", EventConstants.CLOSE, "", "read", "sink", "byteCount", "receive", Payload.SOURCE, "Lokio/BufferedSource;", "receive$okhttp", "timeout", "Lokio/Timeout;", "updateConnectionFlowControl", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSource.class */
    public final class FramingSource implements AbstractC3190ad {
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private Headers trailers;
        private final C3202f receiveBuffer = new C3202f();
        private final C3202f readBuffer = new C3202f();

        public FramingSource(long j, boolean z) {
            Http2Stream.this = r5;
            this.maxByteCount = j;
            this.finished = z;
        }

        private final void updateConnectionFlowControl(long j) {
            Http2Stream http2Stream = Http2Stream.this;
            if (!Util.assertionsEnabled || !Thread.holdsLock(http2Stream)) {
                Http2Stream.this.getConnection().updateConnectionFlowControl$okhttp(j);
                return;
            }
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(http2Stream);
            throw new AssertionError(sb.toString());
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            long j;
            synchronized (Http2Stream.this) {
                this.closed = true;
                j = this.readBuffer.f11572b;
                this.readBuffer.m39192u();
                Http2Stream http2Stream = Http2Stream.this;
                if (http2Stream == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                }
                http2Stream.notifyAll();
                C20128v c20128v = C20128v.f66529a;
            }
            if (j > 0) {
                updateConnectionFlowControl(j);
            }
            Http2Stream.this.cancelStreamIfNecessary$okhttp();
        }

        public final boolean getClosed$okhttp() {
            return this.closed;
        }

        public final boolean getFinished$okhttp() {
            return this.finished;
        }

        public final C3202f getReadBuffer() {
            return this.readBuffer;
        }

        public final C3202f getReceiveBuffer() {
            return this.receiveBuffer;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        @Override // p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) throws IOException {
            StreamResetException streamResetException;
            char c;
            boolean z;
            C18524p.m3840d(sink, "sink");
            if (j >= 0) {
                do {
                    streamResetException = null;
                    synchronized (Http2Stream.this) {
                        Http2Stream.this.getReadTimeout$okhttp().enter();
                        if (Http2Stream.this.getErrorCode$okhttp() != null) {
                            IOException errorException$okhttp = Http2Stream.this.getErrorException$okhttp();
                            streamResetException = errorException$okhttp;
                            if (errorException$okhttp == null) {
                                ErrorCode errorCode$okhttp = Http2Stream.this.getErrorCode$okhttp();
                                C18524p.m3851a(errorCode$okhttp);
                                streamResetException = new StreamResetException(errorCode$okhttp);
                            }
                        }
                        if (this.closed) {
                            throw new IOException("stream closed");
                        }
                        if (this.readBuffer.f11572b > 0) {
                            C3202f c3202f = this.readBuffer;
                            ?? read = c3202f.read(sink, Math.min(j, c3202f.f11572b));
                            Http2Stream http2Stream = Http2Stream.this;
                            http2Stream.setReadBytesTotal$okhttp(http2Stream.getReadBytesTotal() + read);
                            long readBytesTotal = Http2Stream.this.getReadBytesTotal() - Http2Stream.this.getReadBytesAcknowledged();
                            c = read;
                            if (streamResetException == null) {
                                c = read;
                                if (readBytesTotal >= Http2Stream.this.getConnection().getOkHttpSettings().getInitialWindowSize() / 2) {
                                    Http2Stream.this.getConnection().writeWindowUpdateLater$okhttp(Http2Stream.this.getId(), readBytesTotal);
                                    Http2Stream http2Stream2 = Http2Stream.this;
                                    http2Stream2.setReadBytesAcknowledged$okhttp(http2Stream2.getReadBytesTotal());
                                    c = read;
                                }
                            }
                        } else if (this.finished || streamResetException != null) {
                            c = 65535;
                        } else {
                            Http2Stream.this.waitForIo$okhttp();
                            c = 65535;
                            z = true;
                            Http2Stream.this.getReadTimeout$okhttp().exitAndThrowIfTimedOut();
                            C20128v c20128v = C20128v.f66529a;
                        }
                        z = false;
                        Http2Stream.this.getReadTimeout$okhttp().exitAndThrowIfTimedOut();
                        C20128v c20128v2 = C20128v.f66529a;
                    }
                } while (z);
                if (c != -1) {
                    updateConnectionFlowControl(c);
                    return c;
                } else if (streamResetException == null) {
                    return -1L;
                } else {
                    C18524p.m3851a((Object) streamResetException);
                    throw streamResetException;
                }
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v74, types: [long] */
        public final void receive$okhttp(AbstractC3207h source, long j) throws IOException {
            boolean z;
            boolean z2;
            char c;
            C18524p.m3840d(source, "source");
            Http2Stream http2Stream = Http2Stream.this;
            char c2 = j;
            if (Util.assertionsEnabled) {
                if (Thread.holdsLock(http2Stream)) {
                    StringBuilder sb = new StringBuilder("Thread ");
                    Thread currentThread = Thread.currentThread();
                    C18524p.m3843b(currentThread, "Thread.currentThread()");
                    sb.append(currentThread.getName());
                    sb.append(" MUST NOT hold lock on ");
                    sb.append(http2Stream);
                    throw new AssertionError(sb.toString());
                }
                c2 = j;
            }
            while (c2 > 0) {
                synchronized (Http2Stream.this) {
                    z = this.finished;
                    z2 = this.readBuffer.f11572b + c2 > this.maxByteCount;
                    C20128v c20128v = C20128v.f66529a;
                }
                if (z2) {
                    source.mo39114h(c2);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    source.mo39114h(c2);
                    return;
                } else {
                    long read = source.read(this.receiveBuffer, c2);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    ?? r0 = c2 - read;
                    synchronized (Http2Stream.this) {
                        if (this.closed) {
                            c = this.receiveBuffer.f11572b;
                            this.receiveBuffer.m39192u();
                        } else {
                            boolean z3 = this.readBuffer.f11572b == 0;
                            this.readBuffer.mo39145a((AbstractC3190ad) this.receiveBuffer);
                            if (z3) {
                                Http2Stream http2Stream2 = Http2Stream.this;
                                if (http2Stream2 == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                                }
                                http2Stream2.notifyAll();
                            }
                            c = 0;
                        }
                        C20128v c20128v2 = C20128v.f66529a;
                    }
                    c2 = r0;
                    if (c > 0) {
                        updateConnectionFlowControl(c);
                        c2 = r0;
                    }
                }
            }
        }

        public final void setClosed$okhttp(boolean z) {
            this.closed = z;
        }

        public final void setFinished$okhttp(boolean z) {
            this.finished = z;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        @Override // p092c.AbstractC3190ad
        public final C3191ae timeout() {
            return Http2Stream.this.getReadTimeout$okhttp();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\t"}, m4298d2 = {"Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Lokio/AsyncTimeout;", "(Lokhttp3/internal/http2/Http2Stream;)V", "exitAndThrowIfTimedOut", "", "newTimeoutException", "Ljava/io/IOException;", "cause", "timedOut", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Http2Stream$StreamTimeout.class */
    public final class StreamTimeout extends C3196d {
        public StreamTimeout() {
            Http2Stream.this = r4;
        }

        public final void exitAndThrowIfTimedOut() throws IOException {
            if (!exit()) {
                return;
            }
            throw newTimeoutException(null);
        }

        @Override // p092c.C3196d
        public final IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p092c.C3196d
        public final void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Stream.this.getConnection().sendDegradedPingLater$okhttp();
        }
    }

    public Http2Stream(int i, Http2Connection connection, boolean z, boolean z2, Headers headers) {
        C18524p.m3840d(connection, "connection");
        this.f67166id = i;
        this.connection = connection;
        this.writeBytesMaximum = connection.getPeerSettings().getInitialWindowSize();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.headersQueue = arrayDeque;
        this.source = new FramingSource(connection.getOkHttpSettings().getInitialWindowSize(), z2);
        this.sink = new FramingSink(z);
        if (headers == null) {
            if (!isLocallyInitiated()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            }
        } else if (!(!isLocallyInitiated())) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
        } else {
            arrayDeque.add(headers);
        }
    }

    private final boolean closeInternal(ErrorCode errorCode, IOException iOException) {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(this);
            throw new AssertionError(sb.toString());
        }
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.getFinished$okhttp() && this.sink.getFinished()) {
                return false;
            }
            this.errorCode = errorCode;
            this.errorException = iOException;
            notifyAll();
            C20128v c20128v = C20128v.f66529a;
            this.connection.removeStream$okhttp(this.f67166id);
            return true;
        }
    }

    public final void addBytesToWriteWindow(long j) {
        this.writeBytesMaximum += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public final void cancelStreamIfNecessary$okhttp() throws IOException {
        boolean z;
        boolean isOpen;
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(this);
            throw new AssertionError(sb.toString());
        }
        synchronized (this) {
            z = !this.source.getFinished$okhttp() && this.source.getClosed$okhttp() && (this.sink.getFinished() || this.sink.getClosed());
            isOpen = isOpen();
            C20128v c20128v = C20128v.f66529a;
        }
        if (z) {
            close(ErrorCode.CANCEL, null);
        } else if (isOpen) {
        } else {
            this.connection.removeStream$okhttp(this.f67166id);
        }
    }

    public final void checkOutNotClosed$okhttp() throws IOException {
        if (!this.sink.getClosed()) {
            if (this.sink.getFinished()) {
                throw new IOException("stream finished");
            }
            if (this.errorCode == null) {
                return;
            }
            StreamResetException streamResetException = this.errorException;
            if (streamResetException == null) {
                ErrorCode errorCode = this.errorCode;
                C18524p.m3851a(errorCode);
                streamResetException = new StreamResetException(errorCode);
            }
            throw streamResetException;
        }
        throw new IOException("stream closed");
    }

    public final void close(ErrorCode rstStatusCode, IOException iOException) throws IOException {
        C18524p.m3840d(rstStatusCode, "rstStatusCode");
        if (!closeInternal(rstStatusCode, iOException)) {
            return;
        }
        this.connection.writeSynReset$okhttp(this.f67166id, rstStatusCode);
    }

    public final void closeLater(ErrorCode errorCode) {
        C18524p.m3840d(errorCode, "errorCode");
        if (!closeInternal(errorCode, null)) {
            return;
        }
        this.connection.writeSynResetLater$okhttp(this.f67166id, errorCode);
    }

    public final void enqueueTrailers(Headers trailers) {
        C18524p.m3840d(trailers, "trailers");
        synchronized (this) {
            boolean z = true;
            if (!(!this.sink.getFinished())) {
                throw new IllegalStateException("already finished".toString());
            }
            if (trailers.size() == 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException("trailers.size() == 0".toString());
            }
            this.sink.setTrailers(trailers);
            C20128v c20128v = C20128v.f66529a;
        }
    }

    public final Http2Connection getConnection() {
        return this.connection;
    }

    public final ErrorCode getErrorCode$okhttp() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.errorCode;
        }
        return errorCode;
    }

    public final IOException getErrorException$okhttp() {
        return this.errorException;
    }

    public final int getId() {
        return this.f67166id;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final StreamTimeout getReadTimeout$okhttp() {
        return this.readTimeout;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e A[Catch: all -> 0x003f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:13:0x001e, B:17:0x002c, B:18:0x003e), top: B:23:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c A[Catch: all -> 0x003f, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:13:0x001e, B:17:0x002c, B:18:0x003e), top: B:23:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p092c.AbstractC3188ab getSink() {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            boolean r0 = r0.hasResponseHeaders     // Catch: java.lang.Throwable -> L3f
            if (r0 != 0) goto L18
            r0 = r3
            boolean r0 = r0.isLocallyInitiated()     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L13
            goto L18
        L13:
            r0 = 0
            r4 = r0
            goto L1a
        L18:
            r0 = 1
            r4 = r0
        L1a:
            r0 = r4
            if (r0 == 0) goto L2c
            kotlin.v r0 = kotlin.C20128v.f66529a     // Catch: java.lang.Throwable -> L3f
            r5 = r0
            r0 = r3
            monitor-exit(r0)
            r0 = r3
            okhttp3.internal.http2.Http2Stream$FramingSink r0 = r0.sink
            c.ab r0 = (p092c.AbstractC3188ab) r0
            return r0
        L2c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L3f
            r5 = r0
            r0 = r5
            java.lang.String r1 = "reply before requesting the sink"
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L3f
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L3f
            r0 = r5
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L3f
            throw r0     // Catch: java.lang.Throwable -> L3f
        L3f:
            r5 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.getSink():c.ab");
    }

    public final FramingSink getSink$okhttp() {
        return this.sink;
    }

    public final AbstractC3190ad getSource() {
        return this.source;
    }

    public final FramingSource getSource$okhttp() {
        return this.source;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final StreamTimeout getWriteTimeout$okhttp() {
        return this.writeTimeout;
    }

    public final boolean isLocallyInitiated() {
        return this.connection.getClient$okhttp() == ((this.f67166id & 1) == 1);
    }

    public final boolean isOpen() {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if ((this.source.getFinished$okhttp() || this.source.getClosed$okhttp()) && (this.sink.getFinished() || this.sink.getClosed())) {
                if (this.hasResponseHeaders) {
                    return false;
                }
            }
            return true;
        }
    }

    public final C3191ae readTimeout() {
        return this.readTimeout;
    }

    public final void receiveData(AbstractC3207h source, int i) throws IOException {
        C18524p.m3840d(source, "source");
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            this.source.receive$okhttp(source, i);
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        C18524p.m3843b(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST NOT hold lock on ");
        sb.append(this);
        throw new AssertionError(sb.toString());
    }

    public final void receiveHeaders(Headers headers, boolean z) {
        boolean isOpen;
        C18524p.m3840d(headers, "headers");
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(this);
            throw new AssertionError(sb.toString());
        }
        synchronized (this) {
            if (!this.hasResponseHeaders || !z) {
                this.hasResponseHeaders = true;
                this.headersQueue.add(headers);
            } else {
                this.source.setTrailers(headers);
            }
            if (z) {
                this.source.setFinished$okhttp(true);
            }
            isOpen = isOpen();
            notifyAll();
            C20128v c20128v = C20128v.f66529a;
        }
        if (isOpen) {
            return;
        }
        this.connection.removeStream$okhttp(this.f67166id);
    }

    public final void receiveRstStream(ErrorCode errorCode) {
        synchronized (this) {
            C18524p.m3840d(errorCode, "errorCode");
            if (this.errorCode == null) {
                this.errorCode = errorCode;
                notifyAll();
            }
        }
    }

    public final void setErrorCode$okhttp(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }

    public final void setErrorException$okhttp(IOException iOException) {
        this.errorException = iOException;
    }

    public final void setReadBytesAcknowledged$okhttp(long j) {
        this.readBytesAcknowledged = j;
    }

    public final void setReadBytesTotal$okhttp(long j) {
        this.readBytesTotal = j;
    }

    public final void setWriteBytesMaximum$okhttp(long j) {
        this.writeBytesMaximum = j;
    }

    public final void setWriteBytesTotal$okhttp(long j) {
        this.writeBytesTotal = j;
    }

    public final Headers takeHeaders() throws IOException {
        Headers headers;
        synchronized (this) {
            this.readTimeout.enter();
            while (this.headersQueue.isEmpty() && this.errorCode == null) {
                waitForIo$okhttp();
            }
            this.readTimeout.exitAndThrowIfTimedOut();
            if (!(!this.headersQueue.isEmpty())) {
                StreamResetException streamResetException = this.errorException;
                if (streamResetException == null) {
                    ErrorCode errorCode = this.errorCode;
                    C18524p.m3851a(errorCode);
                    streamResetException = new StreamResetException(errorCode);
                }
                throw streamResetException;
            }
            Headers removeFirst = this.headersQueue.removeFirst();
            C18524p.m3843b(removeFirst, "headersQueue.removeFirst()");
            headers = removeFirst;
        }
        return headers;
    }

    public final Headers trailers() throws IOException {
        Headers headers;
        synchronized (this) {
            if (this.errorCode != null) {
                StreamResetException streamResetException = this.errorException;
                if (streamResetException == null) {
                    ErrorCode errorCode = this.errorCode;
                    C18524p.m3851a(errorCode);
                    streamResetException = new StreamResetException(errorCode);
                }
                throw streamResetException;
            }
            if (!(this.source.getFinished$okhttp() && this.source.getReceiveBuffer().mo39119e() && this.source.getReadBuffer().mo39119e())) {
                throw new IllegalStateException("too early; can't read the trailers yet".toString());
            }
            Headers trailers = this.source.getTrailers();
            headers = trailers;
            if (trailers == null) {
                headers = Util.EMPTY_HEADERS;
            }
        }
        return headers;
    }

    public final void waitForIo$okhttp() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final void writeHeaders(List<Header> responseHeaders, boolean z, boolean z2) throws IOException {
        boolean z3;
        C18524p.m3840d(responseHeaders, "responseHeaders");
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(this);
            throw new AssertionError(sb.toString());
        }
        synchronized (this) {
            this.hasResponseHeaders = true;
            if (z) {
                this.sink.setFinished(true);
            }
            C20128v c20128v = C20128v.f66529a;
        }
        boolean z4 = z2;
        if (!z2) {
            synchronized (this.connection) {
                z3 = this.connection.getWriteBytesTotal() >= this.connection.getWriteBytesMaximum();
                C20128v c20128v2 = C20128v.f66529a;
            }
            z4 = z3;
        }
        this.connection.writeHeaders$okhttp(this.f67166id, z, responseHeaders);
        if (!z4) {
            return;
        }
        this.connection.flush();
    }

    public final C3191ae writeTimeout() {
        return this.writeTimeout;
    }
}
