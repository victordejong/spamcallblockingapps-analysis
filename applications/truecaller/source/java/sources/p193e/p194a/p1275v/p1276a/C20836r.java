package p193e.p194a.p1275v.p1276a;

import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p291a3.AbstractC7419a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.DetailsPresenter$whitelist$1", f = "DetailsPresenter.kt", l = {365, 371}, m = "invokeSuspend")
/* renamed from: e.a.v.a.r */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r.class */
public final class C20836r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f58546e;

    /* renamed from: f */
    public int f58547f;

    /* renamed from: g */
    public final /* synthetic */ C20826q f58548g;

    /* renamed from: h */
    public final /* synthetic */ String f58549h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20836r(C20826q c20826q, String str, d dVar) {
        super(2, dVar);
        this.f58548g = c20826q;
        this.f58549h = str;
    }

    /* renamed from: i */
    public final d<s> m10634i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20836r(this.f58548g, this.f58549h, dVar);
    }

    /* renamed from: k */
    public final Object m10633k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20836r(this.f58548g, this.f58549h, dVar).m10632s(s.a);
    }

    /* renamed from: s */
    public final Object m10632s(Object obj) {
        Contact contact;
        a aVar = a.a;
        int i = this.f58547f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            contact = C20826q.m10653Ij(this.f58548g).f58578a;
            C20826q c20826q = this.f58548g;
            AbstractC7419a abstractC7419a = c20826q.f58513k;
            List m10652Jj = C20826q.m10652Jj(c20826q, contact);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(m10652Jj, 10));
            Iterator it = ((ArrayList) m10652Jj).iterator();
            while (it.hasNext()) {
                arrayList.add(new k((String) it.next(), C17891a1.C17902k.m15605i0(contact, null)));
            }
            String str = this.f58549h;
            this.f58546e = contact;
            this.f58547f = 1;
            Object mo29663c = abstractC7419a.mo29663c(arrayList, "PHONE_NUMBER", "detailsView", str, true, this);
            obj = mo29663c;
            if (mo29663c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            contact = (Contact) this.f58546e;
            C25225a.m3932a3(obj);
        }
        if (((Number) obj).intValue() > 0) {
            AbstractC20758g abstractC20758g = (AbstractC20758g) this.f58548g.f57683a;
            if (abstractC20758g != null) {
                abstractC20758g.mo10742h(C3857R.string.details_view_whitelist_success);
            }
            C20826q c20826q2 = this.f58548g;
            AbstractC20758g abstractC20758g2 = (AbstractC20758g) c20826q2.f57683a;
            if (abstractC20758g2 != null) {
                C20847s c20847s = c20826q2.f58506d;
                if (c20847s == null) {
                    l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g2.mo10750G(c20847s.f58578a);
            }
            C20826q c20826q3 = this.f58548g;
            this.f58546e = null;
            this.f58547f = 2;
            if (c20826q3.m10650Lj(this) == aVar) {
                return aVar;
            }
        } else {
            AbstractC20758g abstractC20758g3 = (AbstractC20758g) this.f58548g.f57683a;
            if (abstractC20758g3 != null) {
                abstractC20758g3.mo10742h(C3857R.string.details_view_whitelist_update_fail);
            }
            StringBuilder m8728C = C22128a.m8728C("Whitelist failed. hasNumbers: ");
            m8728C.append(contact.m35514h0());
            m8728C.append('.');
            AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
        }
        return s.a;
    }
}
