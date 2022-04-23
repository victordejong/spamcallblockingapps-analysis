package p131c.p161d.p282e.p340u.p347j;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import p131c.p161d.p282e.p340u.p343f.C5954a;
/* renamed from: c.d.e.u.j.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/f.class */
public class C5977f<T> implements ResponseHandler<T> {

    /* renamed from: a */
    public final ResponseHandler<? extends T> f19405a;

    /* renamed from: b */
    public final Timer f19406b;

    /* renamed from: c */
    public final C5954a f19407c;

    public C5977f(ResponseHandler<? extends T> responseHandler, Timer timer, C5954a aVar) {
        this.f19405a = responseHandler;
        this.f19406b = timer;
        this.f19407c = aVar;
    }

    public T handleResponse(HttpResponse httpResponse) throws IOException {
        this.f19407c.m22553e(this.f19406b.m7217b());
        this.f19407c.m22567a(httpResponse.getStatusLine().getStatusCode());
        Long a = C5979h.m22428a((HttpMessage) httpResponse);
        if (a != null) {
            this.f19407c.m22559c(a.longValue());
        }
        String a2 = C5979h.m22427a(httpResponse);
        if (a2 != null) {
            this.f19407c.m22561b(a2);
        }
        this.f19407c.m22568a();
        return (T) this.f19405a.handleResponse(httpResponse);
    }
}
