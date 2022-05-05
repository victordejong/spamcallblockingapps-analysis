package okhttp3.internal.http;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\t\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\b\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\t\u0010\u0005¨\u0006\f"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", "", FirebaseAnalytics.Param.METHOD, "", "invalidatesCache", "(Ljava/lang/String;)Z", "permitsRequestBody", "redirectsToGet", "redirectsWithBody", "requiresRequestBody", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/HttpMethod.class */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    @JvmStatic
    public static final boolean permitsRequestBody(@NotNull String method) {
        Intrinsics.m1830e(method, "method");
        return !Intrinsics.m1834a(method, "GET") && !Intrinsics.m1834a(method, "HEAD");
    }

    @JvmStatic
    public static final boolean requiresRequestBody(@NotNull String method) {
        Intrinsics.m1830e(method, "method");
        return Intrinsics.m1834a(method, "POST") || Intrinsics.m1834a(method, "PUT") || Intrinsics.m1834a(method, "PATCH") || Intrinsics.m1834a(method, "PROPPATCH") || Intrinsics.m1834a(method, "REPORT");
    }

    public final boolean invalidatesCache(@NotNull String method) {
        Intrinsics.m1830e(method, "method");
        return Intrinsics.m1834a(method, "POST") || Intrinsics.m1834a(method, "PATCH") || Intrinsics.m1834a(method, "PUT") || Intrinsics.m1834a(method, "DELETE") || Intrinsics.m1834a(method, "MOVE");
    }

    public final boolean redirectsToGet(@NotNull String method) {
        Intrinsics.m1830e(method, "method");
        return !Intrinsics.m1834a(method, "PROPFIND");
    }

    public final boolean redirectsWithBody(@NotNull String method) {
        Intrinsics.m1830e(method, "method");
        return Intrinsics.m1834a(method, "PROPFIND");
    }
}
