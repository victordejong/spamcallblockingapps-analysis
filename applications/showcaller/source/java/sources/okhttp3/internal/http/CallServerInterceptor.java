package okhttp3.internal.http;

import com.yanzhenjie.nohttp.Headers;
import java.net.ProtocolException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/CallServerInterceptor.class */
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/CallServerInterceptor$CountingSink.class */
    static final class CountingSink extends ForwardingSink {
        long successfulCount;

        CountingSink(Sink sink) {
            super(sink);
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j) {
            super.write(buffer, j);
            this.successfulCount += j;
        }
    }

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        HttpCodec httpStream = realInterceptorChain.httpStream();
        StreamAllocation streamAllocation = realInterceptorChain.streamAllocation();
        RealConnection realConnection = (RealConnection) realInterceptorChain.connection();
        Request request = realInterceptorChain.request();
        long currentTimeMillis = System.currentTimeMillis();
        realInterceptorChain.eventListener().requestHeadersStart(realInterceptorChain.call());
        httpStream.writeRequestHeaders(request);
        realInterceptorChain.eventListener().requestHeadersEnd(realInterceptorChain.call(), request);
        Response.Builder builder = null;
        Response.Builder builder2 = null;
        if (HttpMethod.permitsRequestBody(request.method())) {
            builder2 = null;
            if (request.body() != null) {
                if ("100-continue".equalsIgnoreCase(request.header("Expect"))) {
                    httpStream.flushRequest();
                    realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
                    builder = httpStream.readResponseHeaders(true);
                }
                if (builder == null) {
                    realInterceptorChain.eventListener().requestBodyStart(realInterceptorChain.call());
                    CountingSink countingSink = new CountingSink(httpStream.createRequestBody(request, request.body().contentLength()));
                    BufferedSink buffer = Okio.buffer(countingSink);
                    request.body().writeTo(buffer);
                    buffer.close();
                    realInterceptorChain.eventListener().requestBodyEnd(realInterceptorChain.call(), countingSink.successfulCount);
                    builder2 = builder;
                } else {
                    builder2 = builder;
                    if (!realConnection.isMultiplexed()) {
                        streamAllocation.noNewStreams();
                        builder2 = builder;
                    }
                }
            }
        }
        httpStream.finishRequest();
        Response.Builder builder3 = builder2;
        if (builder2 == null) {
            realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
            builder3 = httpStream.readResponseHeaders(false);
        }
        Response build = builder3.request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int code = build.code();
        int i = code;
        if (code == 100) {
            build = httpStream.readResponseHeaders(false).request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            i = build.code();
        }
        realInterceptorChain.eventListener().responseHeadersEnd(realInterceptorChain.call(), build);
        Response build2 = (!this.forWebSocket || i != 101) ? build.newBuilder().body(httpStream.openResponseBody(build)).build() : build.newBuilder().body(Util.EMPTY_RESPONSE).build();
        if (Headers.HEAD_VALUE_CONNECTION_CLOSE.equalsIgnoreCase(build2.request().header(Headers.HEAD_KEY_CONNECTION)) || Headers.HEAD_VALUE_CONNECTION_CLOSE.equalsIgnoreCase(build2.header(Headers.HEAD_KEY_CONNECTION))) {
            streamAllocation.noNewStreams();
        }
        if ((i == 204 || i == 205) && build2.body().contentLength() > 0) {
            throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + build2.body().contentLength());
        }
        return build2;
    }
}
