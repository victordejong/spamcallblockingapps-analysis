package okhttp3.internal.http;

import java.net.ProtocolException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
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

        public void write(Buffer buffer, long j) {
            CallServerInterceptor.super.write(buffer, j);
            this.successfulCount += j;
        }
    }

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Response.Builder builder;
        ResponseBody responseBody;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        HttpCodec httpStream = realInterceptorChain.httpStream();
        StreamAllocation streamAllocation = realInterceptorChain.streamAllocation();
        RealConnection connection = realInterceptorChain.connection();
        Request request = realInterceptorChain.request();
        long currentTimeMillis = System.currentTimeMillis();
        realInterceptorChain.eventListener().requestHeadersStart(realInterceptorChain.call());
        httpStream.writeRequestHeaders(request);
        realInterceptorChain.eventListener().requestHeadersEnd(realInterceptorChain.call(), request);
        Response.Builder builder2 = null;
        Response.Builder builder3 = null;
        if (HttpMethod.permitsRequestBody(request.method())) {
            builder3 = null;
            if (request.body() != null) {
                if ("100-continue".equalsIgnoreCase(request.header("Expect"))) {
                    httpStream.flushRequest();
                    realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
                    builder2 = httpStream.readResponseHeaders(true);
                }
                if (builder2 == null) {
                    realInterceptorChain.eventListener().requestBodyStart(realInterceptorChain.call());
                    CountingSink countingSink = new CountingSink(httpStream.createRequestBody(request, request.body().contentLength()));
                    BufferedSink buffer = Okio.buffer((Sink) countingSink);
                    request.body().writeTo(buffer);
                    buffer.close();
                    realInterceptorChain.eventListener().requestBodyEnd(realInterceptorChain.call(), countingSink.successfulCount);
                    builder3 = builder2;
                } else {
                    builder3 = builder2;
                    if (!connection.isMultiplexed()) {
                        streamAllocation.noNewStreams();
                        builder3 = builder2;
                    }
                }
            }
        }
        httpStream.finishRequest();
        Response.Builder builder4 = builder3;
        if (builder3 == null) {
            realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
            builder4 = httpStream.readResponseHeaders(false);
        }
        Response build = builder4.request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int code = build.code();
        int i = code;
        if (code == 100) {
            build = httpStream.readResponseHeaders(false).request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            i = build.code();
        }
        realInterceptorChain.eventListener().responseHeadersEnd(realInterceptorChain.call(), build);
        if (!this.forWebSocket || i != 101) {
            builder = build.newBuilder();
            responseBody = httpStream.openResponseBody(build);
        } else {
            builder = build.newBuilder();
            responseBody = Util.EMPTY_RESPONSE;
        }
        Response build2 = builder.body(responseBody).build();
        if ("close".equalsIgnoreCase(build2.request().header("Connection")) || "close".equalsIgnoreCase(build2.header("Connection"))) {
            streamAllocation.noNewStreams();
        }
        if ((i != 204 && i != 205) || build2.body().contentLength() <= 0) {
            return build2;
        }
        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + build2.body().contentLength());
    }
}
