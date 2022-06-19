package p193e.p194a.p1138q.p1142f;

import com.truecaller.contactfeedback.p157db.CommentFeedback;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p3.a.g1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contactfeedback.api.CommentFeedbackGrpcManagerImpl$uploadFeedback$2", f = "CommentFeedbackGrpcManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.q.f.f */
/* loaded from: classes4-dex2jar.jar:e/a/q/f/f.class */
public final class C19398f extends i implements p<i0, d<? super List<? extends CommentFeedback>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19399g f53923e;

    /* renamed from: f */
    public final /* synthetic */ List f53924f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19398f(C19399g c19399g, List list, d dVar) {
        super(2, dVar);
        this.f53923e = c19399g;
        this.f53924f = list;
    }

    /* renamed from: i */
    public final d<s> m13365i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19398f(this.f53923e, this.f53924f, dVar);
    }

    /* renamed from: k */
    public final Object m13364k(Object obj, Object obj2) {
        List<CommentFeedback> list;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19399g c19399g = this.f53923e;
        List<CommentFeedback> list2 = this.f53924f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        try {
            list = c19399g.m13362a(list2);
        } catch (Exception e) {
            list = s1.u.s.a;
        }
        return list;
    }

    /* renamed from: s */
    public final Object m13363s(Object obj) {
        List<CommentFeedback> list;
        C25225a.m3932a3(obj);
        C19399g c19399g = this.f53923e;
        List<CommentFeedback> list2 = this.f53924f;
        Set<g1.b> set = C19399g.f53925c;
        Objects.requireNonNull(c19399g);
        try {
            list = c19399g.m13362a(list2);
        } catch (Exception e) {
            list = s1.u.s.a;
        }
        return list;
    }
}
