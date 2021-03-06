package okhttp3.internal.http1;

import com.appsflyer.internal.referrer.Payload;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.AbstractC3206g;
import p092c.AbstractC3207h;
import p092c.C3191ae;
import p092c.C3202f;
import p092c.C3213m;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u0018�� ?2\u00020\u0001:\u0007<=>?@ABB'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\u001cH\u0016J\b\u0010&\u001a\u00020\u001cH\u0016J\b\u0010'\u001a\u00020\u001eH\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u0010\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020!H\u0002J\b\u0010.\u001a\u00020\u001eH\u0002J\b\u0010/\u001a\u00020)H\u0002J\u0010\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020\u0019H\u0016J\u0012\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u00020\u0010H\u0016J\u0010\u00105\u001a\u00020!2\u0006\u00101\u001a\u00020\u0019H\u0016J\u000e\u00106\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\u0019J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00152\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0011R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0016\u001a\u00020\u0010*\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0018\u0010\u0016\u001a\u00020\u0010*\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u001a¨\u0006C"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "client", "Lokhttp3/OkHttpClient;", "connection", "Lokhttp3/internal/connection/RealConnection;", Payload.SOURCE, "Lokio/BufferedSource;", "sink", "Lokio/BufferedSink;", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "headersReader", "Lokhttp3/internal/http1/HeadersReader;", "isClosed", "", "()Z", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "trailers", "Lokhttp3/Headers;", "isChunked", "Lokhttp3/Request;", "(Lokhttp3/Request;)Z", "Lokhttp3/Response;", "(Lokhttp3/Response;)Z", "cancel", "", "createRequestBody", "Lokio/Sink;", "request", "contentLength", "", "detachTimeout", "timeout", "Lokio/ForwardingTimeout;", "finishRequest", "flushRequest", "newChunkedSink", "newChunkedSource", "Lokio/Source;", "url", "Lokhttp3/HttpUrl;", "newFixedLengthSource", "length", "newKnownLengthSink", "newUnknownLengthSource", "openResponseBodySource", Payload.RESPONSE, "readResponseHeaders", "Lokhttp3/Response$Builder;", "expectContinue", "reportedContentLength", "skipConnectBody", "writeRequest", "headers", "requestLine", "", "writeRequestHeaders", "AbstractSource", "ChunkedSink", "ChunkedSource", "Companion", "FixedLengthSource", "KnownLengthSink", "UnknownLengthSource", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec.class */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Companion Companion = new Companion(null);
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final OkHttpClient client;
    private final RealConnection connection;
    private final HeadersReader headersReader;
    private final AbstractC3206g sink;
    private final AbstractC3207h source;
    private int state;
    private Headers trailers;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\b¢\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\t\u001a\u00020\u0014H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokio/Source;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "closed", "", "getClosed", "()Z", "setClosed", "(Z)V", "timeout", "Lokio/ForwardingTimeout;", "getTimeout", "()Lokio/ForwardingTimeout;", "read", "", "sink", "Lokio/Buffer;", "byteCount", "responseBodyComplete", "", "Lokio/Timeout;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$AbstractSource.class */
    public abstract class AbstractSource implements AbstractC3190ad {
        private boolean closed;
        private final C3213m timeout;

        public AbstractSource() {
            Http1ExchangeCodec.this = r6;
            this.timeout = new C3213m(r6.source.timeout());
        }

        protected final boolean getClosed() {
            return this.closed;
        }

        protected final C3213m getTimeout() {
            return this.timeout;
        }

        @Override // p092c.AbstractC3190ad
        public long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            try {
                return Http1ExchangeCodec.this.source.read(sink, j);
            } catch (IOException e) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
                throw e;
            }
        }

        public final void responseBodyComplete() {
            if (Http1ExchangeCodec.this.state == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.state == 5) {
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 6;
                return;
            }
            throw new IllegalStateException("state: " + Http1ExchangeCodec.this.state);
        }

        protected final void setClosed(boolean z) {
            this.closed = z;
        }

        @Override // p092c.AbstractC3190ad
        public C3191ae timeout() {
            return this.timeout;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0005\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Lokio/Sink;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "closed", "", "timeout", "Lokio/ForwardingTimeout;", EventConstants.CLOSE, "", "flush", "Lokio/Timeout;", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink.class */
    public final class ChunkedSink implements AbstractC3188ab {
        private boolean closed;
        private final C3213m timeout;

        public ChunkedSink() {
            Http1ExchangeCodec.this = r6;
            this.timeout = new C3213m(r6.sink.timeout());
        }

        @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                Http1ExchangeCodec.this.sink.mo39143b("0\r\n\r\n");
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 3;
            }
        }

        @Override // p092c.AbstractC3188ab, java.io.Flushable
        public final void flush() {
            synchronized (this) {
                if (this.closed) {
                    return;
                }
                Http1ExchangeCodec.this.sink.flush();
            }
        }

        @Override // p092c.AbstractC3188ab
        public final C3191ae timeout() {
            return this.timeout;
        }

        @Override // p092c.AbstractC3188ab
        public final void write(C3202f source, long j) {
            C18524p.m3840d(source, "source");
            if (!this.closed) {
                if (j == 0) {
                    return;
                }
                Http1ExchangeCodec.this.sink.mo39134m(j);
                Http1ExchangeCodec.this.sink.mo39143b("\r\n");
                Http1ExchangeCodec.this.sink.write(source, j);
                Http1ExchangeCodec.this.sink.mo39143b("\r\n");
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\b\u0010\u0010\u001a\u00020\u000bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "url", "Lokhttp3/HttpUrl;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "bytesRemainingInChunk", "", "hasMoreChunks", "", EventConstants.CLOSE, "", "read", "sink", "Lokio/Buffer;", "byteCount", "readChunkSize", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource.class */
    public final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk = -1;
        private boolean hasMoreChunks = true;
        final /* synthetic */ Http1ExchangeCodec this$0;
        private final HttpUrl url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            super();
            C18524p.m3840d(url, "url");
            this.this$0 = http1ExchangeCodec;
            this.url = url;
        }

        private final void readChunkSize() {
            if (this.bytesRemainingInChunk != -1) {
                this.this$0.source.mo39106s();
            }
            try {
                this.bytesRemainingInChunk = this.this$0.source.mo39108p();
                String mo39106s = this.this$0.source.mo39106s();
                if (mo39106s == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                }
                String obj = C18425p.m3930b((CharSequence) mo39106s).toString();
                if (this.bytesRemainingInChunk >= 0) {
                    if (!(obj.length() > 0) || C18425p.m3957a(obj, ";", false)) {
                        if (this.bytesRemainingInChunk != 0) {
                            return;
                        }
                        this.hasMoreChunks = false;
                        Http1ExchangeCodec http1ExchangeCodec = this.this$0;
                        http1ExchangeCodec.trailers = http1ExchangeCodec.headersReader.readHeaders();
                        OkHttpClient okHttpClient = this.this$0.client;
                        C18524p.m3851a(okHttpClient);
                        CookieJar cookieJar = okHttpClient.cookieJar();
                        HttpUrl httpUrl = this.url;
                        Headers headers = this.this$0.trailers;
                        C18524p.m3851a(headers);
                        HttpHeaders.receiveHeaders(cookieJar, httpUrl, headers);
                        responseBodyComplete();
                        return;
                    }
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + obj + '\"');
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            if (j >= 0) {
                if (!(true ^ getClosed())) {
                    throw new IllegalStateException("closed".toString());
                }
                if (!this.hasMoreChunks) {
                    return -1L;
                }
                long j2 = this.bytesRemainingInChunk;
                if (j2 == 0 || j2 == -1) {
                    readChunkSize();
                    if (!this.hasMoreChunks) {
                        return -1L;
                    }
                }
                long read = super.read(sink, Math.min(j, this.bytesRemainingInChunk));
                if (read != -1) {
                    this.bytesRemainingInChunk -= read;
                    return read;
                }
                this.this$0.getConnection().noNewExchanges$okhttp();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete();
                throw protocolException;
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;", "", "()V", "NO_CHUNK_YET", "", "STATE_CLOSED", "", "STATE_IDLE", "STATE_OPEN_REQUEST_BODY", "STATE_OPEN_RESPONSE_BODY", "STATE_READING_RESPONSE_BODY", "STATE_READ_RESPONSE_HEADERS", "STATE_WRITING_REQUEST_BODY", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "bytesRemaining", "", "(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V", EventConstants.CLOSE, "", "read", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource.class */
    public final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(long j) {
            super();
            Http1ExchangeCodec.this = r6;
            this.bytesRemaining = j;
            if (j == 0) {
                responseBodyComplete();
            }
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            if (j >= 0) {
                if (!(true ^ getClosed())) {
                    throw new IllegalStateException("closed".toString());
                }
                long j2 = this.bytesRemaining;
                if (j2 == 0) {
                    return -1L;
                }
                long read = super.read(sink, Math.min(j2, j));
                if (read == -1) {
                    Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    responseBodyComplete();
                    throw protocolException;
                }
                long j3 = this.bytesRemaining - read;
                this.bytesRemaining = j3;
                if (j3 == 0) {
                    responseBodyComplete();
                }
                return read;
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0005\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;", "Lokio/Sink;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "closed", "", "timeout", "Lokio/ForwardingTimeout;", EventConstants.CLOSE, "", "flush", "Lokio/Timeout;", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink.class */
    public final class KnownLengthSink implements AbstractC3188ab {
        private boolean closed;
        private final C3213m timeout;

        public KnownLengthSink() {
            Http1ExchangeCodec.this = r6;
            this.timeout = new C3213m(r6.sink.timeout());
        }

        @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // p092c.AbstractC3188ab, java.io.Flushable
        public final void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // p092c.AbstractC3188ab
        public final C3191ae timeout() {
            return this.timeout;
        }

        @Override // p092c.AbstractC3188ab
        public final void write(C3202f source, long j) {
            C18524p.m3840d(source, "source");
            if (!this.closed) {
                Util.checkOffsetAndCount(source.f11572b, 0L, j);
                Http1ExchangeCodec.this.sink.write(source, j);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "inputExhausted", "", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource.class */
    public final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownLengthSource() {
            super();
            Http1ExchangeCodec.this = r4;
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            if (j >= 0) {
                if (!(!getClosed())) {
                    throw new IllegalStateException("closed".toString());
                }
                if (this.inputExhausted) {
                    return -1L;
                }
                long read = super.read(sink, j);
                if (read != -1) {
                    return read;
                }
                this.inputExhausted = true;
                responseBodyComplete();
                return -1L;
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, RealConnection connection, AbstractC3207h source, AbstractC3206g sink) {
        C18524p.m3840d(connection, "connection");
        C18524p.m3840d(source, "source");
        C18524p.m3840d(sink, "sink");
        this.client = okHttpClient;
        this.connection = connection;
        this.source = source;
        this.sink = sink;
        this.headersReader = new HeadersReader(source);
    }

    public final void detachTimeout(C3213m c3213m) {
        C3191ae c3191ae = c3213m.f11590a;
        C3191ae delegate = C3191ae.NONE;
        C18524p.m3840d(delegate, "delegate");
        c3213m.f11590a = delegate;
        c3191ae.clearDeadline();
        c3191ae.clearTimeout();
    }

    private final boolean isChunked(Request request) {
        return C18425p.m3961a("chunked", request.header("Transfer-Encoding"));
    }

    private final boolean isChunked(Response response) {
        return C18425p.m3961a("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null));
    }

    private final AbstractC3188ab newChunkedSink() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        if (z) {
            this.state = 2;
            return new ChunkedSink();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final AbstractC3190ad newChunkedSource(HttpUrl httpUrl) {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(this, httpUrl);
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final AbstractC3190ad newFixedLengthSource(long j) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j);
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final AbstractC3188ab newKnownLengthSink() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        if (z) {
            this.state = 2;
            return new KnownLengthSink();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    private final AbstractC3190ad newUnknownLengthSource() {
        if (this.state == 4) {
            this.state = 5;
            getConnection().noNewExchanges$okhttp();
            return new UnknownLengthSource();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        getConnection().cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final AbstractC3188ab createRequestBody(Request request, long j) {
        C18524p.m3840d(request, "request");
        if (request.body() == null || !request.body().isDuplex()) {
            if (isChunked(request)) {
                return newChunkedSink();
            }
            if (j == -1) {
                throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
            }
            return newKnownLengthSink();
        }
        throw new ProtocolException("Duplex connections are not supported for HTTP/1");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void finishRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void flushRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final RealConnection getConnection() {
        return this.connection;
    }

    public final boolean isClosed() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final AbstractC3190ad openResponseBodySource(Response response) {
        C18524p.m3840d(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(0L);
        }
        if (isChunked(response)) {
            return newChunkedSource(response.request().url());
        }
        long headersContentLength = Util.headersContentLength(response);
        return headersContentLength != -1 ? newFixedLengthSource(headersContentLength) : newUnknownLengthSource();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder readResponseHeaders(boolean z) {
        int i = this.state;
        boolean z2 = true;
        if (i != 1) {
            z2 = i == 3;
        }
        if (!z2) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        try {
            StatusLine parse = StatusLine.Companion.parse(this.headersReader.readLine());
            Response.Builder headers = new Response.Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(this.headersReader.readHeaders());
            if (z && parse.code == 100) {
                return null;
            }
            if (parse.code == 100) {
                this.state = 3;
                return headers;
            }
            this.state = 4;
            return headers;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on ".concat(String.valueOf(getConnection().route().address().url().redact())), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long reportedContentLength(Response response) {
        C18524p.m3840d(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (!isChunked(response)) {
            return Util.headersContentLength(response);
        }
        return -1L;
    }

    public final void skipConnectBody(Response response) {
        C18524p.m3840d(response, "response");
        long headersContentLength = Util.headersContentLength(response);
        if (headersContentLength == -1) {
            return;
        }
        AbstractC3190ad newFixedLengthSource = newFixedLengthSource(headersContentLength);
        Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        newFixedLengthSource.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Headers trailers() {
        if (this.state == 6) {
            Headers headers = this.trailers;
            Headers headers2 = headers;
            if (headers == null) {
                headers2 = Util.EMPTY_HEADERS;
            }
            return headers2;
        }
        throw new IllegalStateException("too early; can't read the trailers yet".toString());
    }

    public final void writeRequest(Headers headers, String requestLine) {
        C18524p.m3840d(headers, "headers");
        C18524p.m3840d(requestLine, "requestLine");
        if (!(this.state == 0)) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.sink.mo39143b(requestLine).mo39143b("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            this.sink.mo39143b(headers.name(i)).mo39143b(": ").mo39143b(headers.value(i)).mo39143b("\r\n");
        }
        this.sink.mo39143b("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void writeRequestHeaders(Request request) {
        C18524p.m3840d(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getConnection().route().proxy().type();
        C18524p.m3843b(type, "connection.route().proxy.type()");
        writeRequest(request.headers(), requestLine.get(request, type));
    }
}
