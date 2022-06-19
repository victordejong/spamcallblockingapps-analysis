package p193e.p194a.p1275v.p1276a;

import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1275v.p1309p.AbstractC20923d;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.DetailsPresenter$onOptionItemSelected$1", f = "DetailsPresenter.kt", l = {199}, m = "invokeSuspend")
/* renamed from: e.a.v.a.m */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/m.class */
public final class C20793m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f58446e;

    /* renamed from: f */
    public final /* synthetic */ C20826q f58447f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20793m(C20826q c20826q, d dVar) {
        super(2, dVar);
        this.f58447f = c20826q;
    }

    /* renamed from: i */
    public final d<s> m10694i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20793m(this.f58447f, dVar);
    }

    /* renamed from: k */
    public final Object m10693k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20793m(this.f58447f, dVar).m10692s(s.a);
    }

    /* renamed from: s */
    public final Object m10692s(Object obj) {
        a aVar = a.a;
        int i = this.f58446e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C20826q c20826q = this.f58447f;
            AbstractC20923d abstractC20923d = c20826q.f58502D;
            Contact contact = C20826q.m10653Ij(c20826q).f58578a;
            this.f58446e = 1;
            Object mo10513c = abstractC20923d.mo10513c(contact, this);
            obj = mo10513c;
            if (mo10513c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        String str = (String) obj;
        AbstractC20758g abstractC20758g = (AbstractC20758g) this.f58447f.f57683a;
        if (abstractC20758g != null) {
            abstractC20758g.mo10756B(str);
        }
        return s.a;
    }
}
