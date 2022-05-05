package p459j.p460a.p513i;

import com.appsflyer.internal.referrer.Payload;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p184j.C6369d;
import p459j.p460a.p582w0.C14137r4;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.i.g */
/* loaded from: classes2-dex2jar.jar:j/a/i/g.class */
public final class C12411g implements Interceptor {

    /* renamed from: a */
    public final AbstractC15118l<Interceptor.Chain, Request> f27987a;

    /* JADX WARN: Multi-variable type inference failed */
    public C12411g(AbstractC15118l<? super Interceptor.Chain, Request> lVar) {
        C15149k.m377b(lVar, "buildRequest");
        this.f27987a = lVar;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        C6369d dVar;
        C15149k.m377b(chain, "chain");
        Request request = chain.request();
        Response proceed = chain.proceed(request);
        if (403 == proceed.code() || 402 == proceed.code()) {
            if (C14137r4.m2372f()) {
                dVar = C6369d.m22943e();
                C15149k.m383a((Object) dVar, "WCScopeObject.getWhoscallUserScope()");
            } else {
                dVar = C6369d.m22944d();
                C15149k.m383a((Object) dVar, "WCScopeObject.getWhoscallAnonymousScope()");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(403 == proceed.code() ? "403: " : "402: ");
            sb.append(request.url());
            int b = C6364a.m22973b(dVar, sb.toString());
            if (200 == b || 201 == b) {
                Response proceed2 = chain.proceed(this.f27987a.invoke(chain));
                C15149k.m383a((Object) proceed2, "chain.proceed(newRequest)");
                return proceed2;
            }
        }
        C15149k.m383a((Object) proceed, Payload.RESPONSE);
        return proceed;
    }
}
