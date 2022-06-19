package p193e.p194a.p1238t2.p1239a.p1258h.p1259a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.searchwarnings.p141v1.GetSupernovaOptOutRequest;
import com.truecaller.api.services.searchwarnings.p141v1.GetSupernovaOptOutResponse;
import com.truecaller.api.services.searchwarnings.p141v1.SetSupernovaOptOutRequest;
import com.truecaller.api.services.searchwarnings.p141v1.SetSupernovaOptOutResponse;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.h.a.g */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/h/a/g.class */
public final class C20489g {

    /* renamed from: a */
    public static volatile p0<SetSupernovaOptOutRequest, SetSupernovaOptOutResponse> f57551a;

    /* renamed from: b */
    public static volatile p0<GetSupernovaOptOutRequest, GetSupernovaOptOutResponse> f57552b;

    /* renamed from: e.a.t2.a.h.a.g$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/h/a/g$a.class */
    public static final class C20490a extends b<C20490a> {
        public C20490a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20490a(d dVar, c cVar, C20488f c20488f) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11087a(d dVar, c cVar) {
            return new C20490a(dVar, cVar);
        }

        /* renamed from: c */
        public GetSupernovaOptOutResponse m11086c(GetSupernovaOptOutRequest getSupernovaOptOutRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetSupernovaOptOutRequest, GetSupernovaOptOutResponse> p0Var = C20489g.f57552b;
            p0<GetSupernovaOptOutRequest, GetSupernovaOptOutResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20489g.class) {
                    try {
                        p0<GetSupernovaOptOutRequest, GetSupernovaOptOutResponse> p0Var3 = C20489g.f57552b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.searchwarnings.v1.Supernova", "GetSupernovaStatus");
                            b.e = true;
                            GetSupernovaOptOutRequest defaultInstance = GetSupernovaOptOutRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetSupernovaOptOutResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20489g.f57552b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetSupernovaOptOutResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, getSupernovaOptOutRequest);
        }

        /* renamed from: d */
        public SetSupernovaOptOutResponse m11085d(SetSupernovaOptOutRequest setSupernovaOptOutRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<SetSupernovaOptOutRequest, SetSupernovaOptOutResponse> p0Var = C20489g.f57551a;
            p0<SetSupernovaOptOutRequest, SetSupernovaOptOutResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20489g.class) {
                    try {
                        p0<SetSupernovaOptOutRequest, SetSupernovaOptOutResponse> p0Var3 = C20489g.f57551a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.searchwarnings.v1.Supernova", "SetSupernovaStatus");
                            b.e = true;
                            SetSupernovaOptOutRequest defaultInstance = SetSupernovaOptOutRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(SetSupernovaOptOutResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20489g.f57551a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (SetSupernovaOptOutResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, setSupernovaOptOutRequest);
        }
    }

    /* renamed from: e.a.t2.a.h.a.g$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/h/a/g$b.class */
    public static final class C20491b extends a<C20491b> {
        public C20491b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20491b(d dVar, c cVar, C20488f c20488f) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11084a(d dVar, c cVar) {
            return new C20491b(dVar, cVar);
        }
    }
}
