package p655o;

import javax.annotation.Nullable;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* renamed from: o.r */
/* loaded from: classes3-dex2jar.jar:o/r.class */
public final class C15299r<T> {

    /* renamed from: a */
    public final Response f33400a;
    @Nullable

    /* renamed from: b */
    public final T f33401b;
    @Nullable

    /* renamed from: c */
    public final ResponseBody f33402c;

    public C15299r(Response response, @Nullable T t, @Nullable ResponseBody responseBody) {
        this.f33400a = response;
        this.f33401b = t;
        this.f33402c = responseBody;
    }

    /* renamed from: a */
    public static <T> C15299r<T> m94a(@Nullable T t, Response response) {
        C15306w.m66a(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new C15299r<>(response, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    /* renamed from: a */
    public static <T> C15299r<T> m93a(ResponseBody responseBody, Response response) {
        C15306w.m66a(responseBody, "body == null");
        C15306w.m66a(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new C15299r<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    @Nullable
    /* renamed from: a */
    public T m95a() {
        return this.f33401b;
    }

    /* renamed from: b */
    public int m92b() {
        return this.f33400a.code();
    }

    @Nullable
    /* renamed from: c */
    public ResponseBody m91c() {
        return this.f33402c;
    }

    /* renamed from: d */
    public boolean m90d() {
        return this.f33400a.isSuccessful();
    }

    /* renamed from: e */
    public String m89e() {
        return this.f33400a.message();
    }

    public String toString() {
        return this.f33400a.toString();
    }
}
