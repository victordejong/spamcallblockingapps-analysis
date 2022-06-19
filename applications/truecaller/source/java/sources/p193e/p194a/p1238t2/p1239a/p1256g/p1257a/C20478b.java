package p193e.p194a.p1238t2.p1239a.p1256g.p1257a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.previews.p140v1.GetLocationPreview;
import com.truecaller.api.services.previews.p140v1.GetMediaPreview;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.g.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/g/a/b.class */
public final class C20478b {

    /* renamed from: a */
    public static volatile p0<GetMediaPreview.Request, GetMediaPreview.Response> f57548a;

    /* renamed from: b */
    public static volatile p0<GetLocationPreview.Request, GetLocationPreview.Response> f57549b;

    /* renamed from: e.a.t2.a.g.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/g/a/b$a.class */
    public static final class C20479a extends b<C20479a> {
        public C20479a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20479a(d dVar, c cVar, C20477a c20477a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11094a(d dVar, c cVar) {
            return new C20479a(dVar, cVar);
        }

        /* renamed from: c */
        public GetLocationPreview.Response m11093c(GetLocationPreview.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetLocationPreview.Request, GetLocationPreview.Response> p0Var = C20478b.f57549b;
            p0<GetLocationPreview.Request, GetLocationPreview.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20478b.class) {
                    try {
                        p0<GetLocationPreview.Request, GetLocationPreview.Response> p0Var3 = C20478b.f57549b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.previews.v1.MessengerPreviews", "GetLocationPreview");
                            b.e = true;
                            GetLocationPreview.Request defaultInstance = GetLocationPreview.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetLocationPreview.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20478b.f57549b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetLocationPreview.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: d */
        public GetMediaPreview.Response m11092d(GetMediaPreview.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetMediaPreview.Request, GetMediaPreview.Response> p0Var = C20478b.f57548a;
            p0<GetMediaPreview.Request, GetMediaPreview.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20478b.class) {
                    try {
                        p0<GetMediaPreview.Request, GetMediaPreview.Response> p0Var3 = C20478b.f57548a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.previews.v1.MessengerPreviews", "GetMediaPreview");
                            b.e = true;
                            GetMediaPreview.Request defaultInstance = GetMediaPreview.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetMediaPreview.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20478b.f57548a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetMediaPreview.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }
    }

    /* renamed from: e.a.t2.a.g.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/g/a/b$b.class */
    public static final class C20480b extends a<C20480b> {
        public C20480b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20480b(d dVar, c cVar, C20477a c20477a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11091a(d dVar, c cVar) {
            return new C20480b(dVar, cVar);
        }
    }
}
