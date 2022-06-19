package p193e.p194a.p1195s.p1205o;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.s.o.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/o/b.class */
public final class C20099b implements AbstractC20098a {

    /* renamed from: a */
    public final AbstractC20168a f56710a;

    @e(c = "com.truecaller.callhero_assistant.network.CallAssistantAuthRequestInterceptorImpl$intercept$authToken$1", f = "CallAssistantAuthRequestInterceptor.kt", l = {20}, m = "invokeSuspend")
    /* renamed from: e.a.s.o.b$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/o/b$a.class */
    public static final class C20100a extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f56711e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20100a(d dVar) {
            super(2, dVar);
            C20099b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11547i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20100a(dVar);
        }

        /* renamed from: k */
        public final Object m11546k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20100a(dVar).m11545s(s.a);
        }

        /* renamed from: s */
        public final Object m11545s(Object obj) {
            a aVar = a.a;
            int i = this.f56711e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20168a abstractC20168a = C20099b.this.f56710a;
                this.f56711e = 1;
                Object mo11447d = abstractC20168a.mo11447d(this);
                obj = mo11447d;
                if (mo11447d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            String str = (String) obj;
            if (str != null) {
                return str;
            }
            throw new IOException("Could not fetch auth token");
        }
    }

    @Inject
    public C20099b(AbstractC20168a abstractC20168a) {
        l.e(abstractC20168a, "accountManager");
        this.f56710a = abstractC20168a;
    }

    /* renamed from: a */
    public k0 m11548a(b0.a aVar) {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        String str = (String) s1.a.a.a.v0.f.d.c3((f) null, new C20100a(null), 1, (Object) null);
        l.f(request, "request");
        new LinkedHashMap();
        a0 a0Var = request.b;
        String str2 = request.c;
        j0 j0Var = request.e;
        LinkedHashMap linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : s1.u.i.b1(request.f);
        z.a c = request.d.c();
        String str3 = "Bearer " + str;
        l.f("Authorization", AnalyticsConstants.NAME);
        l.f(str3, "value");
        l.f("Authorization", AnalyticsConstants.NAME);
        l.f(str3, "value");
        z.b bVar = z.b;
        bVar.a("Authorization");
        bVar.b(str3, "Authorization");
        c.f("Authorization");
        c.c("Authorization", str3);
        if (a0Var != null) {
            return aVar.a(new g0(a0Var, str2, c.d(), j0Var, c.y(linkedHashMap)));
        }
        throw new IllegalStateException("url == null".toString());
    }
}
