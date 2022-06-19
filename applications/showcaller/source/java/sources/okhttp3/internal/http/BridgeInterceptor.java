package okhttp3.internal.http;

import com.yanzhenjie.nohttp.Headers;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okio.GzipSource;
import okio.Okio;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/BridgeInterceptor.class */
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(CookieJar cookieJar) {
        this.cookieJar = cookieJar;
    }

    private String cookieHeader(List<Cookie> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            Cookie cookie = list.get(i);
            sb.append(cookie.name());
            sb.append('=');
            sb.append(cookie.value());
        }
        return sb.toString();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        RequestBody body = request.body();
        if (body != null) {
            MediaType contentType = body.contentType();
            if (contentType != null) {
                newBuilder.header(Headers.HEAD_KEY_CONTENT_TYPE, contentType.toString());
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                newBuilder.header(Headers.HEAD_KEY_CONTENT_LENGTH, Long.toString(contentLength));
                newBuilder.removeHeader("Transfer-Encoding");
            } else {
                newBuilder.header("Transfer-Encoding", "chunked");
                newBuilder.removeHeader(Headers.HEAD_KEY_CONTENT_LENGTH);
            }
        }
        if (request.header("Host") == null) {
            newBuilder.header("Host", Util.hostHeader(request.url(), false));
        }
        if (request.header(Headers.HEAD_KEY_CONNECTION) == null) {
            newBuilder.header(Headers.HEAD_KEY_CONNECTION, "Keep-Alive");
        }
        boolean z = false;
        if (request.header(Headers.HEAD_KEY_ACCEPT_ENCODING) == null) {
            z = false;
            if (request.header("Range") == null) {
                z = true;
                newBuilder.header(Headers.HEAD_KEY_ACCEPT_ENCODING, "gzip");
            }
        }
        List<Cookie> loadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!loadForRequest.isEmpty()) {
            newBuilder.header(Headers.HEAD_KEY_COOKIE, cookieHeader(loadForRequest));
        }
        if (request.header(Headers.HEAD_KEY_USER_AGENT) == null) {
            newBuilder.header(Headers.HEAD_KEY_USER_AGENT, Version.userAgent());
        }
        Response proceed = chain.proceed(newBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), proceed.headers());
        Response.Builder request2 = proceed.newBuilder().request(request);
        if (z && "gzip".equalsIgnoreCase(proceed.header(Headers.HEAD_KEY_CONTENT_ENCODING)) && HttpHeaders.hasBody(proceed)) {
            GzipSource gzipSource = new GzipSource(proceed.body().source());
            request2.headers(proceed.headers().newBuilder().removeAll(Headers.HEAD_KEY_CONTENT_ENCODING).removeAll(Headers.HEAD_KEY_CONTENT_LENGTH).build());
            request2.body(new RealResponseBody(proceed.header(Headers.HEAD_KEY_CONTENT_TYPE), -1L, Okio.buffer(gzipSource)));
        }
        return request2.build();
    }
}
