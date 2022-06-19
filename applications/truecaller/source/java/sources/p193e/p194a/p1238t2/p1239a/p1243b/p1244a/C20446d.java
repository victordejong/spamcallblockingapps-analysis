package p193e.p194a.p1238t2.p1239a.p1243b.p1244a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.callmeback.p136v1.NumberStatusRequest;
import com.truecaller.api.services.callmeback.p136v1.NumberStatusResponse;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.b.a.d */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/b/a/d.class */
public final class C20446d {

    /* renamed from: a */
    public static volatile p0<NumberStatusRequest, NumberStatusResponse> f57513a;

    /* renamed from: e.a.t2.a.b.a.d$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/b/a/d$a.class */
    public static final class C20447a extends b<C20447a> {
        public C20447a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20447a(d dVar, c cVar, C20445c c20445c) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11135a(d dVar, c cVar) {
            return new C20447a(dVar, cVar);
        }

        /* renamed from: c */
        public NumberStatusResponse m11134c(NumberStatusRequest numberStatusRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<NumberStatusRequest, NumberStatusResponse> p0Var = C20446d.f57513a;
            p0<NumberStatusRequest, NumberStatusResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20446d.class) {
                    try {
                        p0<NumberStatusRequest, NumberStatusResponse> p0Var3 = C20446d.f57513a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callmeback.v1.EnterpriseNumberService", "GetNumberStatus");
                            b.e = true;
                            NumberStatusRequest defaultInstance = NumberStatusRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(NumberStatusResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20446d.f57513a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (NumberStatusResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, numberStatusRequest);
        }
    }

    /* renamed from: e.a.t2.a.b.a.d$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/b/a/d$b.class */
    public static final class C20448b extends a<C20448b> {
        public C20448b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20448b(d dVar, c cVar, C20445c c20445c) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11133a(d dVar, c cVar) {
            return new C20448b(dVar, cVar);
        }
    }
}
