package p459j.p460a.p513i.p514h;

import kotlin.Metadata;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p513i.C12411g;
import p459j.p460a.p582w0.C14217x3;
import p626l.p629c0.AbstractC14902e;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15147i;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0004¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/api/util/WhoscallUtils;", "", "()V", "buildAuthInterceptor", "Lokhttp3/Interceptor;", "buildRequest", "Lokhttp3/Request;", "chain", "Lokhttp3/Interceptor$Chain;", "buildRetryInterceptor", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i.h.b */
/* loaded from: classes2-dex2jar.jar:j/a/i/h/b.class */
public final class C12413b {

    /* renamed from: a */
    public static final C12413b f27989a = new C12413b();

    /* renamed from: j.a.i.h.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/i/h/b$a.class */
    public static final class C12414a implements Interceptor {
        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) {
            C15149k.m377b(chain, "chain");
            Response proceed = chain.proceed(C12413b.f27989a.m6225a(chain));
            C15149k.m383a((Object) proceed, "chain.proceed(buildRequest(chain))");
            return proceed;
        }
    }

    /* renamed from: j.a.i.h.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/i/h/b$b.class */
    public static final class C12415b extends C15147i implements AbstractC15118l<Interceptor.Chain, Request> {
        public C12415b(C12413b bVar) {
            super(1, bVar);
        }

        /* renamed from: a */
        public final Request invoke(Interceptor.Chain chain) {
            C15149k.m377b(chain, "p1");
            return ((C12413b) this.receiver).m6225a(chain);
        }

        @Override // p626l.p641z.p643d.AbstractC15134c
        public final String getName() {
            return "buildRequest";
        }

        @Override // p626l.p641z.p643d.AbstractC15134c
        public final AbstractC14902e getOwner() {
            return C15131a0.m419a(C12413b.class);
        }

        @Override // p626l.p641z.p643d.AbstractC15134c
        public final String getSignature() {
            return "buildRequest(Lokhttp3/Interceptor$Chain;)Lokhttp3/Request;";
        }
    }

    /* renamed from: a */
    public final Interceptor m6226a() {
        return new C12414a();
    }

    /* renamed from: a */
    public final Request m6225a(Interceptor.Chain chain) {
        C15149k.m377b(chain, "chain");
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.header("User-Agent", C12378a.m6259e());
        newBuilder.header("userid", C14217x3.m2118p());
        newBuilder.header("accesstoken", C14217x3.m2170b());
        Request build = newBuilder.build();
        C15149k.m383a((Object) build, "chain.request()\n        …\n                .build()");
        return build;
    }

    /* renamed from: b */
    public final Interceptor m6224b() {
        return new C12411g(new C12415b(this));
    }
}
