package p193e.p194a.p1138q.p1142f;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.comments.model.UpvoteComment;
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
@e(c = "com.truecaller.contactfeedback.api.CommentFeedbackGrpcManagerImpl$upVoteComment$2", f = "CommentFeedbackGrpcManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.q.f.e */
/* loaded from: classes4-dex2jar.jar:e/a/q/f/e.class */
public final class C19397e extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19399g f53920e;

    /* renamed from: f */
    public final /* synthetic */ String f53921f;

    /* renamed from: g */
    public final /* synthetic */ String f53922g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19397e(C19399g c19399g, String str, String str2, d dVar) {
        super(2, dVar);
        this.f53920e = c19399g;
        this.f53921f = str;
        this.f53922g = str2;
    }

    /* renamed from: i */
    public final d<s> m13368i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19397e(this.f53920e, this.f53921f, this.f53922g, dVar);
    }

    /* renamed from: k */
    public final Object m13367k(Object obj, Object obj2) {
        boolean z;
        C20450b.C20451a mo20911c;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19399g c19399g = this.f53920e;
        String str = this.f53921f;
        String str2 = this.f53922g;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        try {
            UpvoteComment.Request.C2975a newBuilder = UpvoteComment.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setCommentId(str2);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumber(str);
            UpvoteComment.Request build = newBuilder.build();
            UpvoteComment.Response response = null;
            mo20911c = c19399g.f53927b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20450b.C20451a c20451a = mo20911c;
            if (c20451a != null) {
                response = c20451a.m11128f(build);
            }
            z = false;
            if (response != null) {
                String str3 = "CommentFeedback, upVoteComment success: " + response;
                z = true;
            }
        } catch (Exception e) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: s */
    public final Object m13366s(Object obj) {
        boolean z;
        C20450b.C20451a mo20911c;
        C25225a.m3932a3(obj);
        C19399g c19399g = this.f53920e;
        String str = this.f53921f;
        String str2 = this.f53922g;
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        try {
            UpvoteComment.Request.C2975a newBuilder = UpvoteComment.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setCommentId(str2);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumber(str);
            UpvoteComment.Request build = newBuilder.build();
            UpvoteComment.Response response = null;
            mo20911c = c19399g.f53927b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20450b.C20451a c20451a = mo20911c;
            if (c20451a != null) {
                response = c20451a.m11128f(build);
            }
            z = false;
            if (response != null) {
                String str3 = "CommentFeedback, upVoteComment success: " + response;
                z = true;
            }
        } catch (Exception e) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
