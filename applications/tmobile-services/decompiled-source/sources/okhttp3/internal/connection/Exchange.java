package okhttp3.internal.connection;

import com.facebook.stetho.server.http.HttpHeaders;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.p012ws.RealWebSocket;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018��:\u0002PQB'\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010C\u001a\u00020B\u0012\u0006\u00106\u001a\u000205¢\u0006\u0004\bN\u0010OJ9\u0010\t\u001a\u00028��\"\n\b��\u0010\u0002*\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028��¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000b¢\u0006\u0004\b\u0014\u0010\rJ\r\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\rJ\r\u0010\u0016\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\rJ\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001a\u0010\rJ\r\u0010\u001b\u001a\u00020\u000b¢\u0006\u0004\b\u001b\u0010\rJ\u0015\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020\u0005¢\u0006\u0004\b#\u0010$J\u0015\u0010%\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u000b¢\u0006\u0004\b'\u0010\rJ\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b(\u0010)J\r\u0010+\u001a\u00020*¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u000b¢\u0006\u0004\b-\u0010\rJ\u0015\u0010.\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b.\u0010/R\u001c\u00101\u001a\u0002008��@��X\u0080\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0016\u00106\u001a\u0002058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001c\u00109\u001a\u0002088��@��X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u001c\u0010>\u001a\u00020=8��@��X\u0080\u0004¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\u001c\u0010C\u001a\u00020B8��@��X\u0080\u0004¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020\u00058@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR$\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020\u00058��@BX\u0080\u000e¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010H¨\u0006R"}, d2 = {"Lokhttp3/internal/connection/Exchange;", "Ljava/io/IOException;", "E", "", "bytesRead", "", "responseDone", "requestDone", "e", "bodyComplete", "(JZZLjava/io/IOException;)Ljava/io/IOException;", "", "cancel", "()V", "Lokhttp3/Request;", "request", "duplex", "Lokio/Sink;", "createRequestBody", "(Lokhttp3/Request;Z)Lokio/Sink;", "detachWithViolence", "finishRequest", "flushRequest", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "newWebSocketStreams", "()Lokhttp3/internal/ws/RealWebSocket$Streams;", "noNewExchangesOnConnection", "noRequestBody", "Lokhttp3/Response;", "response", "Lokhttp3/ResponseBody;", "openResponseBody", "(Lokhttp3/Response;)Lokhttp3/ResponseBody;", "expectContinue", "Lokhttp3/Response$Builder;", "readResponseHeaders", "(Z)Lokhttp3/Response$Builder;", "responseHeadersEnd", "(Lokhttp3/Response;)V", "responseHeadersStart", "trackFailure", "(Ljava/io/IOException;)V", "Lokhttp3/Headers;", "trailers", "()Lokhttp3/Headers;", "webSocketUpgradeFailed", "writeRequestHeaders", "(Lokhttp3/Request;)V", "Lokhttp3/internal/connection/RealCall;", "call", "Lokhttp3/internal/connection/RealCall;", "getCall$okhttp", "()Lokhttp3/internal/connection/RealCall;", "Lokhttp3/internal/http/ExchangeCodec;", "codec", "Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/internal/connection/RealConnection;", "connection", "Lokhttp3/internal/connection/RealConnection;", "getConnection$okhttp", "()Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/EventListener;", "eventListener", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "Lokhttp3/internal/connection/ExchangeFinder;", "finder", "Lokhttp3/internal/connection/ExchangeFinder;", "getFinder$okhttp", "()Lokhttp3/internal/connection/ExchangeFinder;", "isCoalescedConnection$okhttp", "()Z", "isCoalescedConnection", "<set-?>", "isDuplex", "Z", "isDuplex$okhttp", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V", "RequestBodySink", "ResponseBodySource", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/Exchange.class */
public final class Exchange {
    @NotNull
    private final RealCall call;
    private final ExchangeCodec codec;
    @NotNull
    private final RealConnection connection;
    @NotNull
    private final EventListener eventListener;
    @NotNull
    private final ExchangeFinder finder;
    private boolean isDuplex;

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u0017\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J#\u0010\b\u001a\u00028��\"\n\b��\u0010\u0006*\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00028��H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u001f\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0012¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Lokio/ForwardingSink;", "", "close", "()V", "Ljava/io/IOException;", "E", "e", "complete", "(Ljava/io/IOException;)Ljava/io/IOException;", "flush", "Lokio/Buffer;", "source", "", "byteCount", "write", "(Lokio/Buffer;J)V", "bytesReceived", "J", "", "closed", "Z", "completed", "contentLength", "Lokio/Sink;", "delegate", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/Exchange$RequestBodySink.class */
    private final class RequestBodySink extends ForwardingSink {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(@NotNull Exchange exchange, Sink delegate, long j) {
            super(delegate);
            Intrinsics.m1830e(delegate, "delegate");
            this.this$0 = exchange;
            this.contentLength = j;
        }

        private final <E extends IOException> E complete(E e) {
            if (this.completed) {
                return e;
            }
            this.completed = true;
            return (E) this.this$0.bodyComplete(this.bytesReceived, false, true, e);
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                long j = this.contentLength;
                if (j == -1 || this.bytesReceived == j) {
                    try {
                        super.close();
                        complete(null);
                    } catch (IOException e) {
                        throw complete(e);
                    }
                } else {
                    throw new ProtocolException("unexpected end of stream");
                }
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                throw complete(e);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(@NotNull Buffer source, long j) throws IOException {
            Intrinsics.m1830e(source, "source");
            if (!this.closed) {
                long j2 = this.contentLength;
                if (j2 == -1 || this.bytesReceived + j <= j2) {
                    try {
                        super.write(source, j);
                        this.bytesReceived += j;
                    } catch (IOException e) {
                        throw complete(e);
                    }
                } else {
                    throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + j));
                }
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\b\u001a\u00028��\"\n\b��\u0010\u0006*\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00028��¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "", "close", "()V", "Ljava/io/IOException;", "E", "e", "complete", "(Ljava/io/IOException;)Ljava/io/IOException;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "bytesReceived", "J", "", "closed", "Z", "completed", "contentLength", "invokeStartEvent", "Lokio/Source;", "delegate", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/Exchange$ResponseBodySource.class */
    public final class ResponseBodySource extends ForwardingSource {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent = true;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(@NotNull Exchange exchange, Source delegate, long j) {
            super(delegate);
            Intrinsics.m1830e(delegate, "delegate");
            this.this$0 = exchange;
            this.contentLength = j;
            if (j == 0) {
                complete(null);
            }
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                try {
                    super.close();
                    complete(null);
                } catch (IOException e) {
                    throw complete(e);
                }
            }
        }

        public final <E extends IOException> E complete(E e) {
            if (this.completed) {
                return e;
            }
            this.completed = true;
            if (e == null && this.invokeStartEvent) {
                this.invokeStartEvent = false;
                this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
            }
            return (E) this.this$0.bodyComplete(this.bytesReceived, true, false, e);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer sink, long j) throws IOException {
            Intrinsics.m1830e(sink, "sink");
            if (!this.closed) {
                try {
                    long read = delegate().read(sink, j);
                    if (this.invokeStartEvent) {
                        this.invokeStartEvent = false;
                        this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
                    }
                    if (read == -1) {
                        complete(null);
                        return -1L;
                    }
                    long j2 = this.bytesReceived + read;
                    if (this.contentLength != -1 && j2 > this.contentLength) {
                        throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j2);
                    }
                    this.bytesReceived = j2;
                    if (j2 == this.contentLength) {
                        complete(null);
                    }
                    return read;
                } catch (IOException e) {
                    throw complete(e);
                }
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
    }

    public Exchange(@NotNull RealCall call, @NotNull EventListener eventListener, @NotNull ExchangeFinder finder, @NotNull ExchangeCodec codec) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(eventListener, "eventListener");
        Intrinsics.m1830e(finder, "finder");
        Intrinsics.m1830e(codec, "codec");
        this.call = call;
        this.eventListener = eventListener;
        this.finder = finder;
        this.codec = codec;
        this.connection = codec.getConnection();
    }

    private final void trackFailure(IOException iOException) {
        this.finder.trackFailure(iOException);
        this.codec.getConnection().trackFailure$okhttp(this.call, iOException);
    }

    public final <E extends IOException> E bodyComplete(long j, boolean z, boolean z2, E e) {
        if (e != null) {
            trackFailure(e);
        }
        if (z2) {
            if (e != null) {
                this.eventListener.requestFailed(this.call, e);
            } else {
                this.eventListener.requestBodyEnd(this.call, j);
            }
        }
        if (z) {
            if (e != null) {
                this.eventListener.responseFailed(this.call, e);
            } else {
                this.eventListener.responseBodyEnd(this.call, j);
            }
        }
        return (E) this.call.messageDone$okhttp(this, z2, z, e);
    }

    public final void cancel() {
        this.codec.cancel();
    }

    @NotNull
    public final Sink createRequestBody(@NotNull Request request, boolean z) throws IOException {
        Intrinsics.m1830e(request, "request");
        this.isDuplex = z;
        RequestBody body = request.body();
        Intrinsics.m1832c(body);
        long contentLength = body.contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new RequestBodySink(this, this.codec.createRequestBody(request, contentLength), contentLength);
    }

    public final void detachWithViolence() {
        this.codec.cancel();
        this.call.messageDone$okhttp(this, true, true, null);
    }

    public final void finishRequest() throws IOException {
        try {
            this.codec.finishRequest();
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    public final void flushRequest() throws IOException {
        try {
            this.codec.flushRequest();
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    @NotNull
    public final RealCall getCall$okhttp() {
        return this.call;
    }

    @NotNull
    public final RealConnection getConnection$okhttp() {
        return this.connection;
    }

    @NotNull
    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    @NotNull
    public final ExchangeFinder getFinder$okhttp() {
        return this.finder;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !Intrinsics.m1834a(this.finder.getAddress$okhttp().url().host(), this.connection.route().address().url().host());
    }

    public final boolean isDuplex$okhttp() {
        return this.isDuplex;
    }

    @NotNull
    public final RealWebSocket.Streams newWebSocketStreams() throws SocketException {
        this.call.timeoutEarlyExit();
        return this.codec.getConnection().newWebSocketStreams$okhttp(this);
    }

    public final void noNewExchangesOnConnection() {
        this.codec.getConnection().noNewExchanges$okhttp();
    }

    public final void noRequestBody() {
        this.call.messageDone$okhttp(this, true, false, null);
    }

    @NotNull
    public final ResponseBody openResponseBody(@NotNull Response response) throws IOException {
        Intrinsics.m1830e(response, "response");
        try {
            String header$default = Response.header$default(response, HttpHeaders.CONTENT_TYPE, null, 2, null);
            long reportedContentLength = this.codec.reportedContentLength(response);
            return new RealResponseBody(header$default, reportedContentLength, Okio.m143d(new ResponseBodySource(this, this.codec.openResponseBodySource(response), reportedContentLength)));
        } catch (IOException e) {
            this.eventListener.responseFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    @Nullable
    public final Response.Builder readResponseHeaders(boolean z) throws IOException {
        try {
            Response.Builder readResponseHeaders = this.codec.readResponseHeaders(z);
            if (readResponseHeaders != null) {
                readResponseHeaders.initExchange$okhttp(this);
            }
            return readResponseHeaders;
        } catch (IOException e) {
            this.eventListener.responseFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }

    public final void responseHeadersEnd(@NotNull Response response) {
        Intrinsics.m1830e(response, "response");
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    @NotNull
    public final Headers trailers() throws IOException {
        return this.codec.trailers();
    }

    public final void webSocketUpgradeFailed() {
        bodyComplete(-1L, true, true, null);
    }

    public final void writeRequestHeaders(@NotNull Request request) throws IOException {
        Intrinsics.m1830e(request, "request");
        try {
            this.eventListener.requestHeadersStart(this.call);
            this.codec.writeRequestHeaders(request);
            this.eventListener.requestHeadersEnd(this.call, request);
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            trackFailure(e);
            throw e;
        }
    }
}
