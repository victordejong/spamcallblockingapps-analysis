package okhttp3.internal.http2;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import p645m.AbstractC15177h;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15170c;
import p645m.C15175f;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Codec.class */
public final class Http2Codec implements HttpCodec {
    public static final List<String> HTTP_2_SKIPPED_REQUEST_HEADERS = Util.immutableList("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    public static final List<String> HTTP_2_SKIPPED_RESPONSE_HEADERS = Util.immutableList("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    public final Interceptor.Chain chain;
    public final Http2Connection connection;
    public final Protocol protocol;
    public Http2Stream stream;
    public final StreamAllocation streamAllocation;

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Codec$StreamFinishingSource.class */
    public class StreamFinishingSource extends AbstractC15177h {
        public boolean completed = false;
        public long bytesRead = 0;

        public StreamFinishingSource(AbstractC15193s sVar) {
            super(sVar);
        }

        @Override // p645m.AbstractC15177h, p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            endOfInput(null);
        }

        public final void endOfInput(IOException iOException) {
            if (!this.completed) {
                this.completed = true;
                Http2Codec http2Codec = Http2Codec.this;
                http2Codec.streamAllocation.streamFinished(false, http2Codec, this.bytesRead, iOException);
            }
        }

        @Override // p645m.AbstractC15177h, p645m.AbstractC15193s
        public long read(C15170c cVar, long j) throws IOException {
            try {
                long read = delegate().read(cVar, j);
                if (read > 0) {
                    this.bytesRead += read;
                }
                return read;
            } catch (IOException e) {
                endOfInput(e);
                throw e;
            }
        }
    }

    public Http2Codec(OkHttpClient okHttpClient, Interceptor.Chain chain, StreamAllocation streamAllocation, Http2Connection http2Connection) {
        this.chain = chain;
        this.streamAllocation = streamAllocation;
        this.connection = http2Connection;
        this.protocol = okHttpClient.protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE) ? Protocol.H2_PRIOR_KNOWLEDGE : Protocol.HTTP_2;
    }

    public static List<Header> http2HeadersList(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
        arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.url())));
        String header = request.header("Host");
        if (header != null) {
            arrayList.add(new Header(Header.TARGET_AUTHORITY, header));
        }
        arrayList.add(new Header(Header.TARGET_SCHEME, request.url().scheme()));
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            C15175f d = C15175f.m336d(headers.name(i).toLowerCase(Locale.US));
            if (!HTTP_2_SKIPPED_REQUEST_HEADERS.contains(d.mo265i())) {
                arrayList.add(new Header(d, headers.value(i)));
            }
        }
        return arrayList;
    }

    public static Response.Builder readHttp2HeadersList(Headers headers, Protocol protocol) throws IOException {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        StatusLine statusLine = null;
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            if (name.equals(":status")) {
                statusLine = StatusLine.parse("HTTP/1.1 " + value);
            } else {
                statusLine = statusLine;
                if (!HTTP_2_SKIPPED_RESPONSE_HEADERS.contains(name)) {
                    Internal.instance.addLenient(builder, name, value);
                    statusLine = statusLine;
                }
            }
        }
        if (statusLine != null) {
            Response.Builder builder2 = new Response.Builder();
            builder2.protocol(protocol);
            builder2.code(statusLine.code);
            builder2.message(statusLine.message);
            builder2.headers(builder.build());
            return builder2;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void cancel() {
        Http2Stream http2Stream = this.stream;
        if (http2Stream != null) {
            http2Stream.closeLater(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public AbstractC15192r createRequestBody(Request request, long j) {
        return this.stream.getSink();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void finishRequest() throws IOException {
        this.stream.getSink().close();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void flushRequest() throws IOException {
        this.connection.flush();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public ResponseBody openResponseBody(Response response) throws IOException {
        StreamAllocation streamAllocation = this.streamAllocation;
        streamAllocation.eventListener.responseBodyStart(streamAllocation.call);
        return new RealResponseBody(response.header("Content-Type"), HttpHeaders.contentLength(response), C15181l.m318a(new StreamFinishingSource(this.stream.getSource())));
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Response.Builder readResponseHeaders(boolean z) throws IOException {
        Response.Builder readHttp2HeadersList = readHttp2HeadersList(this.stream.takeHeaders(), this.protocol);
        if (!z || Internal.instance.code(readHttp2HeadersList) != 100) {
            return readHttp2HeadersList;
        }
        return null;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void writeRequestHeaders(Request request) throws IOException {
        if (this.stream == null) {
            this.stream = this.connection.newStream(http2HeadersList(request), request.body() != null);
            this.stream.readTimeout().timeout(this.chain.readTimeoutMillis(), TimeUnit.MILLISECONDS);
            this.stream.writeTimeout().timeout(this.chain.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        }
    }
}
