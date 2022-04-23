package retrofit2;

import java.util.Objects;
import okhttp3.ResponseBody;
/* loaded from: classes5-dex2jar.jar:retrofit2/Response.class */
public final class Response<T> {

    /* renamed from: a  reason: collision with root package name */
    public final okhttp3.Response f39404a;

    /* renamed from: b  reason: collision with root package name */
    public final T f39405b;

    /* renamed from: c  reason: collision with root package name */
    public final ResponseBody f39406c;

    private Response(okhttp3.Response response, T t, ResponseBody responseBody) {
        this.f39404a = response;
        this.f39405b = t;
        this.f39406c = responseBody;
    }

    public static <T> Response<T> a(T t, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new Response<>(response, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public static <T> Response<T> a(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new Response<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public final boolean a() {
        return this.f39404a.isSuccessful();
    }

    public final T b() {
        return this.f39405b;
    }

    public final ResponseBody c() {
        return this.f39406c;
    }

    public final String toString() {
        return this.f39404a.toString();
    }
}
