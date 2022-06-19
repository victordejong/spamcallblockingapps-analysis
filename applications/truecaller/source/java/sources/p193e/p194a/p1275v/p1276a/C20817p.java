package p193e.p194a.p1275v.p1276a;

import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.DetailsPresenter$onTagChanged$1", f = "DetailsPresenter.kt", l = {330}, m = "invokeSuspend")
/* renamed from: e.a.v.a.p */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/p.class */
public final class C20817p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f58484e;

    /* renamed from: f */
    public int f58485f;

    /* renamed from: g */
    public final /* synthetic */ C20826q f58486g;

    /* renamed from: h */
    public final /* synthetic */ Contact f58487h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20817p(C20826q c20826q, Contact contact, d dVar) {
        super(2, dVar);
        this.f58486g = c20826q;
        this.f58487h = contact;
    }

    /* renamed from: i */
    public final d<s> m10666i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20817p(this.f58486g, this.f58487h, dVar);
    }

    /* renamed from: k */
    public final Object m10665k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20817p(this.f58486g, this.f58487h, dVar).m10664s(s.a);
    }

    /* renamed from: s */
    public final Object m10664s(Object obj) {
        Object obj2;
        C20826q c20826q;
        a aVar = a.a;
        int i = this.f58485f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C20826q c20826q2 = this.f58486g;
            AbstractC20851t abstractC20851t = c20826q2.f58521s;
            Contact contact = this.f58487h;
            this.f58484e = c20826q2;
            this.f58485f = 1;
            obj2 = ((C20852u) abstractC20851t).m10625c(contact, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c20826q = c20826q2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c20826q = (C20826q) this.f58484e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c20826q.f58506d = (C20847s) obj2;
        this.f58486g.m10651Kj();
        return s.a;
    }
}
