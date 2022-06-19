package p136j6;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import p115h6.C3013b;
import p180n6.C3729e;
/* renamed from: j6.f */
/* loaded from: classes-dex2jar.jar:j6/f.class */
public class C3282f<T> implements ResponseHandler<T> {

    /* renamed from: a */
    public final ResponseHandler<? extends T> f11117a;

    /* renamed from: b */
    public final C3729e f11118b;

    /* renamed from: c */
    public final C3013b f11119c;

    public C3282f(ResponseHandler<? extends T> responseHandler, C3729e c3729e, C3013b c3013b) {
        this.f11117a = responseHandler;
        this.f11118b = c3729e;
        this.f11119c = c3013b;
    }

    public T handleResponse(HttpResponse httpResponse) throws IOException {
        this.f11119c.m2740j(this.f11118b.m1840a());
        this.f11119c.m2745e(httpResponse.getStatusLine().getStatusCode());
        Long m2429a = C3284h.m2429a(httpResponse);
        if (m2429a != null) {
            this.f11119c.m2741i(m2429a.longValue());
        }
        String m2428b = C3284h.m2428b(httpResponse);
        if (m2428b != null) {
            this.f11119c.m2742h(m2428b);
        }
        this.f11119c.m2747b();
        return (T) this.f11117a.handleResponse(httpResponse);
    }
}
