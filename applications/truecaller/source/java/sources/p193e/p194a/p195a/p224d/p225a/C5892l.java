package p193e.p194a.p195a.p224d.p225a;

import android.net.Uri;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$getScaledAvatarUri$2", f = "NewImGroupPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.a.d.a.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/l.class */
public final class C5892l extends i implements p<i0, d<? super Uri>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C5893m f19672e;

    /* renamed from: f */
    public final /* synthetic */ c0 f19673f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5892l(C5893m c5893m, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f19672e = c5893m;
        this.f19673f = c0Var;
    }

    /* renamed from: i */
    public final d<s> m32277i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5892l(this.f19672e, this.f19673f, dVar);
    }

    /* renamed from: k */
    public final Object m32276k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C5893m c5893m = this.f19672e;
        c0 c0Var = this.f19673f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return c5893m.f19682o.mo14173e((Uri) c0Var.a, 640, 50);
    }

    /* renamed from: s */
    public final Object m32275s(Object obj) {
        C25225a.m3932a3(obj);
        return this.f19672e.f19682o.mo14173e((Uri) this.f19673f.a, 640, 50);
    }
}
