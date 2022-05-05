package okhttp3.internal.http;

import io.fabric.sdk.android.services.network.HttpRequest;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/HttpMethod.class */
public final class HttpMethod {
    private HttpMethod() {
    }

    public static boolean invalidatesCache(String str) {
        return str.equals(HttpRequest.METHOD_POST) || str.equals("PATCH") || str.equals(HttpRequest.METHOD_PUT) || str.equals(HttpRequest.METHOD_DELETE) || str.equals("MOVE");
    }

    public static boolean permitsRequestBody(String str) {
        return !str.equals(HttpRequest.METHOD_GET) && !str.equals(HttpRequest.METHOD_HEAD);
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals(HttpRequest.METHOD_POST) || str.equals(HttpRequest.METHOD_PUT) || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
