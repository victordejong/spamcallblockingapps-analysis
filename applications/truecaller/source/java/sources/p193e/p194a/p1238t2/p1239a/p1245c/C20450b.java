package p193e.p194a.p1238t2.p1239a.p1245c;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.comments.model.DownvoteComment;
import com.truecaller.api.services.comments.model.GetComments;
import com.truecaller.api.services.comments.model.PostComment;
import com.truecaller.api.services.comments.model.RemoveVote;
import com.truecaller.api.services.comments.model.UpvoteComment;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.c.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/c/b.class */
public final class C20450b {

    /* renamed from: a */
    public static volatile p0<GetComments.Request, GetComments.Response> f57514a;

    /* renamed from: b */
    public static volatile p0<PostComment.Request, PostComment.Response> f57515b;

    /* renamed from: c */
    public static volatile p0<UpvoteComment.Request, UpvoteComment.Response> f57516c;

    /* renamed from: d */
    public static volatile p0<DownvoteComment.Request, DownvoteComment.Response> f57517d;

    /* renamed from: e */
    public static volatile p0<RemoveVote.Request, RemoveVote.Response> f57518e;

    /* renamed from: e.a.t2.a.c.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/c/b$a.class */
    public static final class C20451a extends b<C20451a> {
        public C20451a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20451a(d dVar, c cVar, C20449a c20449a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11132a(d dVar, c cVar) {
            return new C20451a(dVar, cVar);
        }

        /* renamed from: c */
        public DownvoteComment.Response m11131c(DownvoteComment.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<DownvoteComment.Request, DownvoteComment.Response> p0Var = C20450b.f57517d;
            p0<DownvoteComment.Request, DownvoteComment.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20450b.class) {
                    try {
                        p0<DownvoteComment.Request, DownvoteComment.Response> p0Var3 = C20450b.f57517d;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.comments.api.Comments", "DownvoteComment");
                            b.e = true;
                            DownvoteComment.Request defaultInstance = DownvoteComment.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(DownvoteComment.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20450b.f57517d = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (DownvoteComment.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: d */
        public GetComments.Response m11130d(GetComments.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetComments.Request, GetComments.Response> p0Var = C20450b.f57514a;
            p0<GetComments.Request, GetComments.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20450b.class) {
                    try {
                        p0<GetComments.Request, GetComments.Response> p0Var3 = C20450b.f57514a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.comments.api.Comments", "GetComments");
                            b.e = true;
                            GetComments.Request defaultInstance = GetComments.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetComments.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20450b.f57514a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetComments.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: e */
        public RemoveVote.Response m11129e(RemoveVote.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<RemoveVote.Request, RemoveVote.Response> p0Var = C20450b.f57518e;
            p0<RemoveVote.Request, RemoveVote.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20450b.class) {
                    try {
                        p0<RemoveVote.Request, RemoveVote.Response> p0Var3 = C20450b.f57518e;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.comments.api.Comments", "RemoveVote");
                            b.e = true;
                            RemoveVote.Request defaultInstance = RemoveVote.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(RemoveVote.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20450b.f57518e = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (RemoveVote.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: f */
        public UpvoteComment.Response m11128f(UpvoteComment.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<UpvoteComment.Request, UpvoteComment.Response> p0Var = C20450b.f57516c;
            p0<UpvoteComment.Request, UpvoteComment.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20450b.class) {
                    try {
                        p0<UpvoteComment.Request, UpvoteComment.Response> p0Var3 = C20450b.f57516c;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.comments.api.Comments", "UpvoteComment");
                            b.e = true;
                            UpvoteComment.Request defaultInstance = UpvoteComment.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(UpvoteComment.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20450b.f57516c = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (UpvoteComment.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }
    }

    /* renamed from: e.a.t2.a.c.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/c/b$b.class */
    public static final class C20452b extends a<C20452b> {
        public C20452b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20452b(d dVar, c cVar, C20449a c20449a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11127a(d dVar, c cVar) {
            return new C20452b(dVar, cVar);
        }
    }
}
