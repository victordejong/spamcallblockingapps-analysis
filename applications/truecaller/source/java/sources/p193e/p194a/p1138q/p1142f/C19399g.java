package p193e.p194a.p1138q.p1142f;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.comments.model.PostComment;
import com.truecaller.contactfeedback.p157db.CommentFeedback;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1238t2.p1239a.p1245c.C20450b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.C8582g0;
import p3.a.d;
import p3.a.g1;
import p3.a.i1;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.c;
import p3.a.q1.e;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.q.f.g */
/* loaded from: classes4-dex2jar.jar:e/a/q/f/g.class */
public final class C19399g implements AbstractC19393a {

    /* renamed from: c */
    public static final Set<g1.b> f53925c = i.y0(g1.b.f);

    /* renamed from: a */
    public final f f53926a;

    /* renamed from: b */
    public final AbstractC19400h f53927b;

    @Inject
    public C19399g(@Named("IO") f fVar, AbstractC19400h abstractC19400h) {
        l.e(fVar, "ioContext");
        l.e(abstractC19400h, "api");
        this.f53926a = fVar;
        this.f53927b = abstractC19400h;
    }

    /* renamed from: a */
    public final List<CommentFeedback> m13362a(List<CommentFeedback> list) {
        c mo20911c;
        mo20911c = this.f53927b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20450b.C20451a c20451a = (C20450b.C20451a) mo20911c;
        ArrayList arrayList = new ArrayList();
        for (CommentFeedback commentFeedback : list) {
            try {
                PostComment.Response m13361b = m13361b(c20451a, C8582g0.m28320U(commentFeedback));
                arrayList.add(commentFeedback);
                String str = "post comment resp = " + m13361b;
            } catch (Exception e) {
                if (e instanceof i1) {
                    Set<g1.b> set = f53925c;
                    g1 g1Var = e.a;
                    l.d(g1Var, "e.status");
                    if (set.contains(g1Var.a)) {
                        arrayList.add(commentFeedback);
                    }
                    String str2 = "CommentFeedback grpc StatusRuntimeException error for a single request. Feedback item = " + commentFeedback;
                }
            }
        }
        return i.S0(arrayList);
    }

    /* renamed from: b */
    public final PostComment.Response m13361b(C20450b.C20451a c20451a, PostComment.Request request) {
        PostComment.Response response;
        if (c20451a != null) {
            d dVar = ((c) c20451a).a;
            p0<PostComment.Request, PostComment.Response> p0Var = C20450b.f57515b;
            p0<PostComment.Request, PostComment.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20450b.class) {
                    try {
                        p0<PostComment.Request, PostComment.Response> p0Var3 = C20450b.f57515b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.comments.api.Comments", "PostComment");
                            b.e = true;
                            PostComment.Request defaultInstance = PostComment.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(PostComment.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20450b.f57515b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            response = (PostComment.Response) e.a(dVar, p0Var2, ((c) c20451a).b, request);
        } else {
            response = null;
        }
        return response;
    }
}
