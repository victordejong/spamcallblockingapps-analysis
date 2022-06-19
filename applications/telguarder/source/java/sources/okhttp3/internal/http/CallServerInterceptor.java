package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okio.BufferedSink;
import okio.Okio;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m400d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "forWebSocket", "", "(Z)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http/CallServerInterceptor.class */
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        boolean z;
        boolean z2;
        Response.Builder builder;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange$okhttp = realInterceptorChain.getExchange$okhttp();
        Intrinsics.checkNotNull(exchange$okhttp);
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RequestBody body = request$okhttp.body();
        long currentTimeMillis = System.currentTimeMillis();
        exchange$okhttp.writeRequestHeaders(request$okhttp);
        Response.Builder builder2 = null;
        if (!HttpMethod.permitsRequestBody(request$okhttp.method()) || body == null) {
            exchange$okhttp.noRequestBody();
            z = true;
        } else {
            if (StringsKt.equals("100-continue", request$okhttp.header("Expect"), true)) {
                exchange$okhttp.flushRequest();
                builder = exchange$okhttp.readResponseHeaders(true);
                exchange$okhttp.responseHeadersStart();
                z2 = false;
            } else {
                z2 = true;
                builder = builder2;
            }
            if (builder != null) {
                exchange$okhttp.noRequestBody();
                builder2 = builder;
                z = z2;
                if (!exchange$okhttp.getConnection$okhttp().isMultiplexed$okhttp()) {
                    exchange$okhttp.noNewExchangesOnConnection();
                    builder2 = builder;
                    z = z2;
                }
            } else if (body.isDuplex()) {
                exchange$okhttp.flushRequest();
                body.writeTo(Okio.buffer(exchange$okhttp.createRequestBody(request$okhttp, true)));
                builder2 = builder;
                z = z2;
            } else {
                BufferedSink buffer = Okio.buffer(exchange$okhttp.createRequestBody(request$okhttp, false));
                body.writeTo(buffer);
                buffer.close();
                builder2 = builder;
                z = z2;
            }
        }
        if (body == null || !body.isDuplex()) {
            exchange$okhttp.finishRequest();
        }
        Response.Builder builder3 = builder2;
        boolean z3 = z;
        if (builder2 == null) {
            Response.Builder readResponseHeaders = exchange$okhttp.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders);
            builder3 = readResponseHeaders;
            z3 = z;
            if (z) {
                exchange$okhttp.responseHeadersStart();
                z3 = false;
                builder3 = readResponseHeaders;
            }
        }
        Response build = builder3.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int code = build.code();
        int i = code;
        if (code == 100) {
            Response.Builder readResponseHeaders2 = exchange$okhttp.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders2);
            if (z3) {
                exchange$okhttp.responseHeadersStart();
            }
            build = readResponseHeaders2.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            i = build.code();
        }
        exchange$okhttp.responseHeadersEnd(build);
        Response build2 = (!this.forWebSocket || i != 101) ? build.newBuilder().body(exchange$okhttp.openResponseBody(build)).build() : build.newBuilder().body(Util.EMPTY_RESPONSE).build();
        if (StringsKt.equals("close", build2.request().header("Connection"), true) || StringsKt.equals("close", Response.header$default(build2, "Connection", null, 2, null), true)) {
            exchange$okhttp.noNewExchangesOnConnection();
        }
        if (i == 204 || i == 205) {
            ResponseBody body2 = build2.body();
            if ((body2 != null ? body2.contentLength() : (char) 65535) > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("HTTP ");
                sb.append(i);
                sb.append(" had non-zero Content-Length: ");
                ResponseBody body3 = build2.body();
                Long l = null;
                if (body3 != null) {
                    l = Long.valueOf(body3.contentLength());
                }
                sb.append(l);
                throw new ProtocolException(sb.toString());
            }
        }
        return build2;
    }
}
