package p193e.p194a.p1238t2.p1239a.p1260i;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.survey.ListAllSurveys;
import com.truecaller.api.services.survey.PostSurveyResults;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.i.c */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/i/c.class */
public final class C20494c {

    /* renamed from: a */
    public static volatile p0<PostSurveyResults.Request, PostSurveyResults.Response> f57553a;

    /* renamed from: b */
    public static volatile p0<ListAllSurveys.Request, ListAllSurveys.Response> f57554b;

    /* renamed from: e.a.t2.a.i.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/i/c$a.class */
    public static final class C20495a extends b<C20495a> {
        public C20495a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20495a(d dVar, c cVar, C20493b c20493b) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11083a(d dVar, c cVar) {
            return new C20495a(dVar, cVar);
        }

        /* renamed from: c */
        public ListAllSurveys.Response m11082c(ListAllSurveys.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<ListAllSurveys.Request, ListAllSurveys.Response> p0Var = C20494c.f57554b;
            p0<ListAllSurveys.Request, ListAllSurveys.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20494c.class) {
                    try {
                        p0<ListAllSurveys.Request, ListAllSurveys.Response> p0Var3 = C20494c.f57554b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.survey.v1.PublicSurveyService", "ListAllSurveys");
                            b.e = true;
                            ListAllSurveys.Request defaultInstance = ListAllSurveys.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(ListAllSurveys.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20494c.f57554b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (ListAllSurveys.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: d */
        public PostSurveyResults.Response m11081d(PostSurveyResults.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<PostSurveyResults.Request, PostSurveyResults.Response> p0Var = C20494c.f57553a;
            p0<PostSurveyResults.Request, PostSurveyResults.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20494c.class) {
                    try {
                        p0<PostSurveyResults.Request, PostSurveyResults.Response> p0Var3 = C20494c.f57553a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.survey.v1.PublicSurveyService", "PostSurveyResults");
                            b.e = true;
                            PostSurveyResults.Request defaultInstance = PostSurveyResults.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(PostSurveyResults.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20494c.f57553a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (PostSurveyResults.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }
    }

    /* renamed from: e.a.t2.a.i.c$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/i/c$b.class */
    public static final class C20496b extends a<C20496b> {
        public C20496b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20496b(d dVar, c cVar, C20493b c20493b) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11080a(d dVar, c cVar) {
            return new C20496b(dVar, cVar);
        }
    }
}
