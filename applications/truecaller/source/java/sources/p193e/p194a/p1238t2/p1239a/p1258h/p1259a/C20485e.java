package p193e.p194a.p1238t2.p1239a.p1258h.p1259a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.searchwarnings.p141v1.ListAllSearchWarningsRequest;
import com.truecaller.api.services.searchwarnings.p141v1.ListAllSearchWarningsResponse;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.h.a.e */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/h/a/e.class */
public final class C20485e {

    /* renamed from: a */
    public static volatile p0<ListAllSearchWarningsRequest, ListAllSearchWarningsResponse> f57550a;

    /* renamed from: e.a.t2.a.h.a.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/h/a/e$a.class */
    public static final class C20486a extends b<C20486a> {
        public C20486a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20486a(d dVar, c cVar, C20484d c20484d) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11090a(d dVar, c cVar) {
            return new C20486a(dVar, cVar);
        }

        /* renamed from: c */
        public ListAllSearchWarningsResponse m11089c(ListAllSearchWarningsRequest listAllSearchWarningsRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<ListAllSearchWarningsRequest, ListAllSearchWarningsResponse> p0Var = C20485e.f57550a;
            p0<ListAllSearchWarningsRequest, ListAllSearchWarningsResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20485e.class) {
                    try {
                        p0<ListAllSearchWarningsRequest, ListAllSearchWarningsResponse> p0Var3 = C20485e.f57550a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.searchwarnings.v1.SearchWarnings", "ListAllSearchWarnings");
                            b.e = true;
                            ListAllSearchWarningsRequest defaultInstance = ListAllSearchWarningsRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(ListAllSearchWarningsResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20485e.f57550a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (ListAllSearchWarningsResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, listAllSearchWarningsRequest);
        }
    }

    /* renamed from: e.a.t2.a.h.a.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/h/a/e$b.class */
    public static final class C20487b extends a<C20487b> {
        public C20487b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20487b(d dVar, c cVar, C20484d c20484d) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11088a(d dVar, c cVar) {
            return new C20487b(dVar, cVar);
        }
    }
}
