package p193e.p194a.p1138q.p1142f;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.comments.model.DownvoteComment;
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
@e(c = "com.truecaller.contactfeedback.api.CommentFeedbackGrpcManagerImpl$downVoteComment$2", f = "CommentFeedbackGrpcManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.q.f.b */
/* loaded from: classes4-dex2jar.jar:e/a/q/f/b.class */
public final class C19394b extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19399g f53910e;

    /* renamed from: f */
    public final /* synthetic */ String f53911f;

    /* renamed from: g */
    public final /* synthetic */ String f53912g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19394b(C19399g c19399g, String str, String str2, d dVar) {
        super(2, dVar);
        this.f53910e = c19399g;
        this.f53911f = str;
        this.f53912g = str2;
    }

    /* renamed from: i */
    public final d<s> m13377i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19394b(this.f53910e, this.f53911f, this.f53912g, dVar);
    }

    /* renamed from: k */
    public final Object m13376k(Object obj, Object obj2) {
        boolean z;
        C20450b.C20451a mo20911c;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19399g c19399g = this.f53910e;
        String str = this.f53911f;
        String str2 = this.f53912g;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        try {
            DownvoteComment.Request.C2951a newBuilder = DownvoteComment.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setCommentId(str2);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumber(str);
            DownvoteComment.Request build = newBuilder.build();
            DownvoteComment.Response response = null;
            mo20911c = c19399g.f53927b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20450b.C20451a c20451a = mo20911c;
            if (c20451a != null) {
                response = c20451a.m11131c(build);
            }
            z = false;
            if (response != null) {
                String str3 = "CommentFeedback, downVoteComment success: " + response;
                z = true;
            }
        } catch (Exception e) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: s */
    public final Object m13375s(Object obj) {
        boolean z;
        C20450b.C20451a mo20911c;
        C25225a.m3932a3(obj);
        C19399g c19399g = this.f53910e;
        String str = this.f53911f;
        String str2 = this.f53912g;
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        try {
            DownvoteComment.Request.C2951a newBuilder = DownvoteComment.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setCommentId(str2);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumber(str);
            DownvoteComment.Request build = newBuilder.build();
            DownvoteComment.Response response = null;
            mo20911c = c19399g.f53927b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20450b.C20451a c20451a = mo20911c;
            if (c20451a != null) {
                response = c20451a.m11131c(build);
            }
            z = false;
            if (response != null) {
                String str3 = "CommentFeedback, downVoteComment success: " + response;
                z = true;
            }
        } catch (Exception e) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
