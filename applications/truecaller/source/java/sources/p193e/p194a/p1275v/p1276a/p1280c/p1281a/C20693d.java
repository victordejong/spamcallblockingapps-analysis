package p193e.p194a.p1275v.p1276a.p1280c.p1281a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1138q.p1144h.AbstractC19444c;
import p193e.p194a.p1138q.p1144h.C19443b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.comments.widget.CommentsPresenter$fetchComments$2$1", f = "CommentsPresenter.kt", l = {63}, m = "invokeSuspend")
/* renamed from: e.a.v.a.c.a.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/d.class */
public final class C20693d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f58271e;

    /* renamed from: f */
    public final /* synthetic */ C19443b f58272f;

    /* renamed from: g */
    public final /* synthetic */ C20695f f58273g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20693d(C19443b c19443b, d dVar, C20695f c20695f) {
        super(2, dVar);
        this.f58272f = c19443b;
        this.f58273g = c20695f;
    }

    /* renamed from: i */
    public final d<s> m10838i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20693d(this.f58272f, dVar, this.f58273g);
    }

    /* renamed from: k */
    public final Object m10837k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20693d(this.f58272f, dVar, this.f58273g).m10836s(s.a);
    }

    /* renamed from: s */
    public final Object m10836s(Object obj) {
        a aVar = a.a;
        int i = this.f58271e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC19444c abstractC19444c = this.f58273g.f58279g;
            C19443b c19443b = this.f58272f;
            this.f58271e = 1;
            if (abstractC19444c.mo13324c(c19443b, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
