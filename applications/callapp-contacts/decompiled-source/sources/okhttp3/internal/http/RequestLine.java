package okhttp3.internal.http;

import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import okhttp3.HttpUrl;
import okhttp3.Request;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http/RequestLine;", "", "()V", "get", "", "request", "Lokhttp3/Request;", "proxyType", "Ljava/net/Proxy$Type;", "includeAuthorityInRequestLine", "", "requestPath", "url", "Lokhttp3/HttpUrl;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http/RequestLine.class */
public final class RequestLine {
    public static final RequestLine INSTANCE = new RequestLine();

    private RequestLine() {
    }

    private final boolean includeAuthorityInRequestLine(Request request, Proxy.Type type) {
        return !request.isHttps() && type == Proxy.Type.HTTP;
    }

    public final String get(Request request, Proxy.Type proxyType) {
        p.d(request, "request");
        p.d(proxyType, "proxyType");
        StringBuilder sb = new StringBuilder();
        sb.append(request.method());
        sb.append(' ');
        RequestLine requestLine = INSTANCE;
        if (requestLine.includeAuthorityInRequestLine(request, proxyType)) {
            sb.append(request.url());
        } else {
            sb.append(requestLine.requestPath(request.url()));
        }
        sb.append(" HTTP/1.1");
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final String requestPath(HttpUrl url) {
        p.d(url, "url");
        String encodedPath = url.encodedPath();
        String encodedQuery = url.encodedQuery();
        if (encodedQuery == null) {
            return encodedPath;
        }
        return encodedPath + '?' + encodedQuery;
    }
}
