package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, m4298d2 = {"Lokhttp3/internal/http/HttpMethod;", "", "()V", "invalidatesCache", "", "method", "", "permitsRequestBody", "redirectsToGet", "redirectsWithBody", "requiresRequestBody", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http/HttpMethod.class */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(String method) {
        C18524p.m3840d(method, "method");
        return !C18524p.m3850a((Object) method, (Object) "GET") && !C18524p.m3850a((Object) method, (Object) "HEAD");
    }

    public static final boolean requiresRequestBody(String method) {
        C18524p.m3840d(method, "method");
        return C18524p.m3850a((Object) method, (Object) "POST") || C18524p.m3850a((Object) method, (Object) "PUT") || C18524p.m3850a((Object) method, (Object) "PATCH") || C18524p.m3850a((Object) method, (Object) "PROPPATCH") || C18524p.m3850a((Object) method, (Object) "REPORT");
    }

    public final boolean invalidatesCache(String method) {
        C18524p.m3840d(method, "method");
        return C18524p.m3850a((Object) method, (Object) "POST") || C18524p.m3850a((Object) method, (Object) "PATCH") || C18524p.m3850a((Object) method, (Object) "PUT") || C18524p.m3850a((Object) method, (Object) "DELETE") || C18524p.m3850a((Object) method, (Object) "MOVE");
    }

    public final boolean redirectsToGet(String method) {
        C18524p.m3840d(method, "method");
        return !C18524p.m3850a((Object) method, (Object) "PROPFIND");
    }

    public final boolean redirectsWithBody(String method) {
        C18524p.m3840d(method, "method");
        return C18524p.m3850a((Object) method, (Object) "PROPFIND");
    }
}
