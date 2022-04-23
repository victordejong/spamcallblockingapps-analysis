package okhttp3.internal.http;

import java.net.Proxy;
import okhttp3.HttpUrl;
import okhttp3.Request;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/RequestLine.class */
public final class RequestLine {
    private RequestLine() {
    }

    public static String get(Request request, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(request.method());
        sb.append(' ');
        boolean includeAuthorityInRequestLine = includeAuthorityInRequestLine(request, type);
        HttpUrl url = request.url();
        if (includeAuthorityInRequestLine) {
            sb.append(url);
        } else {
            sb.append(requestPath(url));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean includeAuthorityInRequestLine(Request request, Proxy.Type type) {
        return !request.isHttps() && type == Proxy.Type.HTTP;
    }

    public static String requestPath(HttpUrl httpUrl) {
        String encodedPath = httpUrl.encodedPath();
        String encodedQuery = httpUrl.encodedQuery();
        String str = encodedPath;
        if (encodedQuery != null) {
            str = encodedPath + '?' + encodedQuery;
        }
        return str;
    }
}
