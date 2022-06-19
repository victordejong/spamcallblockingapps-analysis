package p193e.p194a.p1275v;

import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.DetailsViewHostPresenter$loadAggregatedContact$2", f = "DetailsViewHostPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.v.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/e.class */
public final class C20888e extends i implements p<i0, d<? super Contact>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C20880b f58704e;

    /* renamed from: f */
    public final /* synthetic */ Contact f58705f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20888e(C20880b c20880b, Contact contact, d dVar) {
        super(2, dVar);
        this.f58704e = c20880b;
        this.f58705f = contact;
    }

    /* renamed from: i */
    public final d<s> m10565i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20888e(this.f58704e, this.f58705f, dVar);
    }

    /* renamed from: k */
    public final Object m10564k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C20880b c20880b = this.f58704e;
        Contact contact = this.f58705f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return c20880b.f58676h.m17360l(contact);
    }

    /* renamed from: s */
    public final Object m10563s(Object obj) {
        C25225a.m3932a3(obj);
        return this.f58704e.f58676h.m17360l(this.f58705f);
    }
}
