package retrofit2;

import java.util.Objects;
import okhttp3.ResponseBody;
/* loaded from: classes5-dex2jar.jar:retrofit2/Response.class */
public final class Response<T> {

    /* renamed from: a */
    public final okhttp3.Response f67638a;

    /* renamed from: b */
    public final T f67639b;

    /* renamed from: c */
    public final ResponseBody f67640c;

    private Response(okhttp3.Response response, T t, ResponseBody responseBody) {
        this.f67638a = response;
        this.f67639b = t;
        this.f67640c = responseBody;
    }

    /* renamed from: a */
    public static <T> Response<T> m113a(T t, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new Response<>(response, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    /* renamed from: a */
    public static <T> Response<T> m112a(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new Response<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    /* renamed from: a */
    public final boolean m114a() {
        return this.f67638a.isSuccessful();
    }

    /* renamed from: b */
    public final T m111b() {
        return this.f67639b;
    }

    /* renamed from: c */
    public final ResponseBody m110c() {
        return this.f67640c;
    }

    public final String toString() {
        return this.f67638a.toString();
    }
}
