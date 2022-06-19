package p193e.p194a.p1238t2.p1239a.p1261j.p1262a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.videocallerid.p142v1.FetchVideo;
import com.truecaller.api.services.videocallerid.p142v1.GetUploadLinks;
import com.truecaller.api.services.videocallerid.p142v1.ShareVideo;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.j.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/j/a/b.class */
public final class C20500b {

    /* renamed from: a */
    public static volatile p0<GetUploadLinks.Request, GetUploadLinks.Response> f57555a;

    /* renamed from: b */
    public static volatile p0<ShareVideo.Request, ShareVideo.Response> f57556b;

    /* renamed from: c */
    public static volatile p0<FetchVideo.Request, FetchVideo.Response> f57557c;

    /* renamed from: e.a.t2.a.j.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/j/a/b$a.class */
    public static final class C20501a extends b<C20501a> {
        public C20501a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20501a(d dVar, c cVar, C20499a c20499a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11079a(d dVar, c cVar) {
            return new C20501a(dVar, cVar);
        }

        /* renamed from: c */
        public GetUploadLinks.Response m11078c(GetUploadLinks.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetUploadLinks.Request, GetUploadLinks.Response> p0Var = C20500b.f57555a;
            p0<GetUploadLinks.Request, GetUploadLinks.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20500b.class) {
                    try {
                        p0<GetUploadLinks.Request, GetUploadLinks.Response> p0Var3 = C20500b.f57555a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.videocallerid.v1.VideoCallerId", "GetUploadLinks");
                            b.e = true;
                            GetUploadLinks.Request defaultInstance = GetUploadLinks.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetUploadLinks.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20500b.f57555a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetUploadLinks.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }
    }

    /* renamed from: e.a.t2.a.j.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/j/a/b$b.class */
    public static final class C20502b extends a<C20502b> {
        public C20502b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20502b(d dVar, c cVar, C20499a c20499a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11077a(d dVar, c cVar) {
            return new C20502b(dVar, cVar);
        }
    }
}
