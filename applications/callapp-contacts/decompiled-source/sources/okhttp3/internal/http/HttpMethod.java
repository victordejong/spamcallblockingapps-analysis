package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", "", "()V", "invalidatesCache", "", "method", "", "permitsRequestBody", "redirectsToGet", "redirectsWithBody", "requiresRequestBody", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http/HttpMethod.class */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(String method) {
        p.d(method, "method");
        return !p.a((Object) method, (Object) "GET") && !p.a((Object) method, (Object) "HEAD");
    }

    public static final boolean requiresRequestBody(String method) {
        p.d(method, "method");
        return p.a((Object) method, (Object) "POST") || p.a((Object) method, (Object) "PUT") || p.a((Object) method, (Object) "PATCH") || p.a((Object) method, (Object) "PROPPATCH") || p.a((Object) method, (Object) "REPORT");
    }

    public final boolean invalidatesCache(String method) {
        p.d(method, "method");
        return p.a((Object) method, (Object) "POST") || p.a((Object) method, (Object) "PATCH") || p.a((Object) method, (Object) "PUT") || p.a((Object) method, (Object) "DELETE") || p.a((Object) method, (Object) "MOVE");
    }

    public final boolean redirectsToGet(String method) {
        p.d(method, "method");
        return !p.a((Object) method, (Object) "PROPFIND");
    }

    public final boolean redirectsWithBody(String method) {
        p.d(method, "method");
        return p.a((Object) method, (Object) "PROPFIND");
    }
}
