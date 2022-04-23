package okhttp3.internal.http;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import p645m.AbstractC15173d;
import p645m.AbstractC15176g;
import p645m.AbstractC15192r;
import p645m.C15170c;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http/CallServerInterceptor.class */
public final class CallServerInterceptor implements Interceptor {
    public final boolean forWebSocket;

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http/CallServerInterceptor$CountingSink.class */
    public static final class CountingSink extends AbstractC15176g {
        public long successfulCount;

        public CountingSink(AbstractC15192r rVar) {
            super(rVar);
        }

        @Override // p645m.AbstractC15176g, p645m.AbstractC15192r
        public void write(C15170c cVar, long j) throws IOException {
            super.write(cVar, j);
            this.successfulCount += j;
        }
    }

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response response;
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
                    AbstractC15173d a = C15181l.m319a(countingSink);
                    request.body().writeTo(a);
                    a.close();
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
        builder3.request(request);
        builder3.handshake(streamAllocation.connection().handshake());
        builder3.sentRequestAtMillis(currentTimeMillis);
        builder3.receivedResponseAtMillis(System.currentTimeMillis());
        Response build = builder3.build();
        int code = build.code();
        int i = code;
        if (code == 100) {
            Response.Builder readResponseHeaders = httpStream.readResponseHeaders(false);
            readResponseHeaders.request(request);
            readResponseHeaders.handshake(streamAllocation.connection().handshake());
            readResponseHeaders.sentRequestAtMillis(currentTimeMillis);
            readResponseHeaders.receivedResponseAtMillis(System.currentTimeMillis());
            build = readResponseHeaders.build();
            i = build.code();
        }
        realInterceptorChain.eventListener().responseHeadersEnd(realInterceptorChain.call(), build);
        if (!this.forWebSocket || i != 101) {
            Response.Builder newBuilder = build.newBuilder();
            newBuilder.body(httpStream.openResponseBody(build));
            response = newBuilder.build();
        } else {
            Response.Builder newBuilder2 = build.newBuilder();
            newBuilder2.body(Util.EMPTY_RESPONSE);
            response = newBuilder2.build();
        }
        if (MraidParser.MRAID_COMMAND_CLOSE.equalsIgnoreCase(response.request().header("Connection")) || MraidParser.MRAID_COMMAND_CLOSE.equalsIgnoreCase(response.header("Connection"))) {
            streamAllocation.noNewStreams();
        }
        if ((i != 204 && i != 205) || response.body().contentLength() <= 0) {
            return response;
        }
        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + response.body().contentLength());
    }
}
