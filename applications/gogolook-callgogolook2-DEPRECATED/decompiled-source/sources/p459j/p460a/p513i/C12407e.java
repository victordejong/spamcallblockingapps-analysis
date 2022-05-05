package p459j.p460a.p513i;

import java.util.Arrays;
import kotlin.Metadata;
import kotlinx.coroutines.Dispatchers;
import okhttp3.Interceptor;
import okhttp3.Request;
import p081h.p160h.p179e.p180a.C6344e;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p513i.p514h.C12412a;
import p459j.p460a.p582w0.C14022h3;
import p626l.p629c0.AbstractC14902e;
import p626l.p631e0.C14966w;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15147i;
import p626l.p641z.p643d.C15149k;
import p655o.C15300s;
import p655o.p656x.p657a.C15310a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\nH\u0014J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/api/IapRemoteDataSource;", "Lgogolook/callgogolook2/api/BaseRemoteDataSource;", "Lgogolook/callgogolook2/api/GgpApiService;", "timeOut", "", "(J)V", "getTimeOut", "()J", "createService", "getDispatcher", "Lkotlin/coroutines/CoroutineContext;", "getEndpoint", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i.e */
/* loaded from: classes2-dex2jar.jar:j/a/i/e.class */
public final class C12407e extends AbstractC12402b<AbstractC12404c> {

    /* renamed from: b */
    public final long f27985b;

    /* renamed from: j.a.i.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/i/e$a.class */
    public static final class C12408a extends C15147i implements AbstractC15118l<Interceptor.Chain, Request> {
        public C12408a(C12412a aVar) {
            super(1, aVar);
        }

        /* renamed from: a */
        public final Request invoke(Interceptor.Chain chain) {
            C15149k.m377b(chain, "p1");
            return ((C12412a) this.receiver).m6227a(chain);
        }

        @Override // p626l.p641z.p643d.AbstractC15134c
        public final String getName() {
            return "buildRequest";
        }

        @Override // p626l.p641z.p643d.AbstractC15134c
        public final AbstractC14902e getOwner() {
            return C15131a0.m419a(C12412a.class);
        }

        @Override // p626l.p641z.p643d.AbstractC15134c
        public final String getSignature() {
            return "buildRequest(Lokhttp3/Interceptor$Chain;)Lokhttp3/Request;";
        }
    }

    public C12407e() {
        this(0L, 1, null);
    }

    public C12407e(long j) {
        this.f27985b = j;
    }

    public /* synthetic */ C12407e(long j, int i, C15145g gVar) {
        this((i & 1) != 0 ? 60L : j);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p459j.p460a.p513i.AbstractC12402b
    /* renamed from: a */
    public AbstractC12404c mo3584a() {
        C14022h3 h3Var = C14022h3.f31458a;
        String e = m6231e();
        long j = this.f27985b;
        Interceptor[] interceptorArr = {new C12406d(), new C12411g(new C12408a(C12412a.f27988a))};
        C15300s.C15302b bVar = new C15300s.C15302b();
        bVar.m76a(e);
        bVar.m72a(h3Var.m2770a(j, (Interceptor[]) Arrays.copyOf(interceptorArr, interceptorArr.length)));
        bVar.m75a(C15310a.m46a());
        return (AbstractC12404c) bVar.m77a().m87a(AbstractC12404c.class);
    }

    @Override // p459j.p460a.p513i.AbstractC12402b
    /* renamed from: b */
    public AbstractC15049g mo3583b() {
        return Dispatchers.getIO();
    }

    /* renamed from: e */
    public String m6231e() {
        return !C6344e.m23186g() ? "https://ggp-staging.whoscall.com" : C14966w.m715b(C12378a.f27903h, "https://api-production.whoscall.com", true) ? "https://ggp-production.whoscall.com" : "https://ggp.whoscall.com";
    }
}
