package p081h.p203i.p325c.p379z.p382d;

import com.google.android.gms.internal.firebase-perf.zzaa;
import java.io.IOException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
/* renamed from: h.i.c.z.d.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/f.class */
public final class C10075f<T> implements ResponseHandler<T> {

    /* renamed from: a */
    public final ResponseHandler<? extends T> f22781a;

    /* renamed from: b */
    public final zzaa f22782b;

    /* renamed from: c */
    public final C7759a1 f22783c;

    public C10075f(ResponseHandler<? extends T> responseHandler, com.google.android.gms.internal.firebase_perf.zzaa zzaaVar, C7759a1 a1Var) {
        this.f22781a = responseHandler;
        this.f22782b = zzaaVar;
        this.f22783c = a1Var;
    }

    public final T handleResponse(HttpResponse httpResponse) throws IOException {
        this.f22783c.m19567f(this.f22782b.m31840c());
        this.f22783c.m19572c(httpResponse.getStatusLine().getStatusCode());
        Long a = C10077h.m13453a((HttpMessage) httpResponse);
        if (a != null) {
            this.f22783c.m19574b(a.longValue());
        }
        String a2 = C10077h.m13452a(httpResponse);
        if (a2 != null) {
            this.f22783c.m19570c(a2);
        }
        this.f22783c.m19561v();
        return (T) this.f22781a.handleResponse(httpResponse);
    }
}
