package p193e.p194a.p1238t2.p1239a.p1246d.p1247a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.geolocation.p137v1.GeoLocationRequest;
import com.truecaller.api.services.geolocation.p137v1.GeoLocationResponse;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.d.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/d/a/b.class */
public final class C20454b {

    /* renamed from: a */
    public static volatile p0<GeoLocationRequest, GeoLocationResponse> f57519a;

    /* renamed from: e.a.t2.a.d.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/d/a/b$a.class */
    public static final class C20455a extends b<C20455a> {
        public C20455a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20455a(d dVar, c cVar, C20453a c20453a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11126a(d dVar, c cVar) {
            return new C20455a(dVar, cVar);
        }

        /* renamed from: c */
        public GeoLocationResponse m11125c(GeoLocationRequest geoLocationRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GeoLocationRequest, GeoLocationResponse> p0Var = C20454b.f57519a;
            p0<GeoLocationRequest, GeoLocationResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20454b.class) {
                    try {
                        p0<GeoLocationRequest, GeoLocationResponse> p0Var3 = C20454b.f57519a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.geolocation.v1.GeoLocation", "Resolve");
                            b.e = true;
                            GeoLocationRequest defaultInstance = GeoLocationRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GeoLocationResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20454b.f57519a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GeoLocationResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, geoLocationRequest);
        }
    }

    /* renamed from: e.a.t2.a.d.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/d/a/b$b.class */
    public static final class C20456b extends a<C20456b> {
        public C20456b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20456b(d dVar, c cVar, C20453a c20453a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11124a(d dVar, c cVar) {
            return new C20456b(dVar, cVar);
        }
    }
}
