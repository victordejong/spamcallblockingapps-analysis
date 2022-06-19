package okhttp3.internal.http;

import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/HttpMethod.class */
public final class HttpMethod {
    private HttpMethod() {
    }

    public static boolean invalidatesCache(String str) {
        return str.equals("POST") || str.equals(OkHttpUtils.METHOD.PATCH) || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.DELETE) || str.equals("MOVE");
    }

    public static boolean permitsRequestBody(String str) {
        return !str.equals("GET") && !str.equals(OkHttpUtils.METHOD.HEAD);
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals("POST") || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.PATCH) || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
