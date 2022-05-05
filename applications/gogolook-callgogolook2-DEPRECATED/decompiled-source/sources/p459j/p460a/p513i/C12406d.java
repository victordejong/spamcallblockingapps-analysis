package p459j.p460a.p513i;

import okhttp3.Interceptor;
import okhttp3.Response;
import p459j.p460a.p513i.p514h.C12412a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.i.d */
/* loaded from: classes2-dex2jar.jar:j/a/i/d.class */
public final class C12406d implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        C15149k.m377b(chain, "chain");
        Response proceed = chain.proceed(C12412a.f27988a.m6227a(chain));
        C15149k.m383a((Object) proceed, "chain.proceed(request)");
        return proceed;
    }
}
