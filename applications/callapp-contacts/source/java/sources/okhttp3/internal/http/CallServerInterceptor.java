package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import p092c.AbstractC3206g;
import p092c.C3218r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "forWebSocket", "", "(Z)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http/CallServerInterceptor.class */
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Response.Builder builder;
        C18524p.m3840d(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange$okhttp = realInterceptorChain.getExchange$okhttp();
        C18524p.m3851a(exchange$okhttp);
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RequestBody body = request$okhttp.body();
        long currentTimeMillis = System.currentTimeMillis();
        exchange$okhttp.writeRequestHeaders(request$okhttp);
        boolean z = true;
        if (!HttpMethod.permitsRequestBody(request$okhttp.method()) || body == null) {
            exchange$okhttp.noRequestBody();
            builder = null;
        } else {
            if (C18425p.m3961a("100-continue", request$okhttp.header("Expect"))) {
                exchange$okhttp.flushRequest();
                builder = exchange$okhttp.readResponseHeaders(true);
                exchange$okhttp.responseHeadersStart();
                z = false;
            } else {
                builder = null;
                z = true;
            }
            if (builder != null) {
                exchange$okhttp.noRequestBody();
                if (!exchange$okhttp.getConnection$okhttp().isMultiplexed$okhttp()) {
                    exchange$okhttp.noNewExchangesOnConnection();
                }
            } else if (body.isDuplex()) {
                exchange$okhttp.flushRequest();
                body.writeTo(C3218r.m39151a(exchange$okhttp.createRequestBody(request$okhttp, true)));
            } else {
                AbstractC3206g m39151a = C3218r.m39151a(exchange$okhttp.createRequestBody(request$okhttp, false));
                body.writeTo(m39151a);
                m39151a.close();
            }
        }
        if (body == null || !body.isDuplex()) {
            exchange$okhttp.finishRequest();
        }
        Response.Builder builder2 = builder;
        boolean z2 = z;
        if (builder == null) {
            Response.Builder readResponseHeaders = exchange$okhttp.readResponseHeaders(false);
            C18524p.m3851a(readResponseHeaders);
            builder2 = readResponseHeaders;
            z2 = z;
            if (z) {
                exchange$okhttp.responseHeadersStart();
                z2 = false;
                builder2 = readResponseHeaders;
            }
        }
        Response build = builder2.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int code = build.code();
        int i = code;
        if (code == 100) {
            Response.Builder readResponseHeaders2 = exchange$okhttp.readResponseHeaders(false);
            C18524p.m3851a(readResponseHeaders2);
            if (z2) {
                exchange$okhttp.responseHeadersStart();
            }
            build = readResponseHeaders2.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            i = build.code();
        }
        exchange$okhttp.responseHeadersEnd(build);
        Response build2 = (!this.forWebSocket || i != 101) ? build.newBuilder().body(exchange$okhttp.openResponseBody(build)).build() : build.newBuilder().body(Util.EMPTY_RESPONSE).build();
        if (C18425p.m3961a(EventConstants.CLOSE, build2.request().header("Connection")) || C18425p.m3961a(EventConstants.CLOSE, Response.header$default(build2, "Connection", null, 2, null))) {
            exchange$okhttp.noNewExchangesOnConnection();
        }
        if (i == 204 || i == 205) {
            ResponseBody body2 = build2.body();
            if ((body2 != null ? body2.contentLength() : (char) 65535) > 0) {
                StringBuilder sb = new StringBuilder("HTTP ");
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
