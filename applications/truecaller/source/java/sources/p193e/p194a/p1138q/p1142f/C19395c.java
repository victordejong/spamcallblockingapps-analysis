package p193e.p194a.p1138q.p1142f;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.comments.model.GetComments;
import com.truecaller.api.services.comments.model.SortBy;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1245c.C20450b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p3.a.g1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contactfeedback.api.CommentFeedbackGrpcManagerImpl$getComments$2", f = "CommentFeedbackGrpcManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.q.f.c */
/* loaded from: classes4-dex2jar.jar:e/a/q/f/c.class */
public final class C19395c extends i implements p<i0, d<? super List<? extends GetComments.Response.Comment>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19399g f53913e;

    /* renamed from: f */
    public final /* synthetic */ String f53914f;

    /* renamed from: g */
    public final /* synthetic */ int f53915g;

    /* renamed from: h */
    public final /* synthetic */ SortBy f53916h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19395c(C19399g c19399g, String str, int i, SortBy sortBy, d dVar) {
        super(2, dVar);
        this.f53913e = c19399g;
        this.f53914f = str;
        this.f53915g = i;
        this.f53916h = sortBy;
    }

    /* renamed from: i */
    public final d<s> m13374i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19395c(this.f53913e, this.f53914f, this.f53915g, this.f53916h, dVar);
    }

    /* renamed from: k */
    public final Object m13373k(Object obj, Object obj2) {
        return m13374i(obj, (d) obj2).m13372s(s.a);
    }

    /* renamed from: s */
    public final Object m13372s(Object obj) {
        C20450b.C20451a mo20911c;
        GetComments.Response m11130d;
        List<GetComments.Response.Comment> commentsList;
        C25225a.m3932a3(obj);
        C19399g c19399g = this.f53913e;
        String str = this.f53914f;
        int i = this.f53915g;
        SortBy sortBy = this.f53916h;
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        s1.u.s sVar = s1.u.s.a;
        try {
            GetComments.Request.C2955a newBuilder = GetComments.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setPageSize(i);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumber(str);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setSortBy(sortBy);
            GetComments.Request build = newBuilder.build();
            mo20911c = c19399g.f53927b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20450b.C20451a c20451a = mo20911c;
            s1.u.s S0 = (c20451a == null || (m11130d = c20451a.m11130d(build)) == null || (commentsList = m11130d.getCommentsList()) == null) ? sVar : s1.u.i.S0(commentsList);
            String str2 = "CommentFeedback GetComments, comments = " + S0;
            sVar = S0;
        } catch (Exception e) {
        }
        return sVar;
    }
}
