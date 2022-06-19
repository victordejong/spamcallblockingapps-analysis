package p193e.p194a.p1275v.p1276a;

import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
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
@e(c = "com.truecaller.details_view.ui.DetailsPresenter$onDeleteContactConfirmed$1", f = "DetailsPresenter.kt", l = {217}, m = "invokeSuspend")
/* renamed from: e.a.v.a.k */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/k.class */
public final class C20785k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f58438e;

    /* renamed from: f */
    public final /* synthetic */ C20826q f58439f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20785k(C20826q c20826q, d dVar) {
        super(2, dVar);
        this.f58439f = c20826q;
    }

    /* renamed from: i */
    public final d<s> m10702i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20785k(this.f58439f, dVar);
    }

    /* renamed from: k */
    public final Object m10701k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20785k(this.f58439f, dVar).m10700s(s.a);
    }

    /* renamed from: s */
    public final Object m10700s(Object obj) {
        AbstractC20758g abstractC20758g;
        a aVar = a.a;
        int i = this.f58438e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C20826q c20826q = this.f58439f;
            AbstractC20923d abstractC20923d = c20826q.f58502D;
            Contact contact = C20826q.m10653Ij(c20826q).f58578a;
            this.f58438e = 1;
            Object mo10509g = abstractC20923d.mo10509g(contact, this);
            obj = mo10509g;
            if (mo10509g == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i2 = booleanValue ? C3857R.string.details_view_contact_deleted_successfully : C3857R.string.details_view_contact_deleted_failed;
        AbstractC20758g abstractC20758g2 = (AbstractC20758g) this.f58439f.f57683a;
        if (abstractC20758g2 != null) {
            abstractC20758g2.mo10742h(i2);
        }
        if (booleanValue && (abstractC20758g = (AbstractC20758g) this.f58439f.f57683a) != null) {
            abstractC20758g.finish();
        }
        return s.a;
    }
}
