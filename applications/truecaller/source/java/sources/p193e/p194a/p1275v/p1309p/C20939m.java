package p193e.p194a.p1275v.p1309p;

import com.truecaller.TrueApp;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14022p;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.v.p.m */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/m.class */
public final class C20939m implements AbstractC20938l {

    /* renamed from: a */
    public final AbstractC21204d f58886a;

    /* renamed from: b */
    public final C20931f f58887b;

    /* renamed from: c */
    public final AbstractC14028r f58888c;

    @Inject
    public C20939m(AbstractC21204d abstractC21204d, C20931f c20931f, AbstractC14028r abstractC14028r) {
        l.e(abstractC21204d, "contactStalenessHelper");
        l.e(c20931f, "accountHelper");
        l.e(abstractC14028r, "searchManager");
        this.f58886a = abstractC21204d;
        this.f58887b = c20931f;
        this.f58888c = abstractC14028r;
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20938l
    /* renamed from: a */
    public void mo10488a(int i, C20847s c20847s, boolean z) {
        l.e(c20847s, "detailsViewModel");
        List<Number> m35557M = c20847s.f58578a.m35557M();
        ArrayList m8670S = C22128a.m8670S(m35557M, "detailsViewModel.contact.numbers");
        for (Number number : m35557M) {
            l.d(number, "it");
            String m35473l = number.m35473l();
            if (m35473l != null) {
                m8670S.add(m35473l);
            }
        }
        String str = (String) i.D(m8670S);
        List<Number> m35557M2 = c20847s.f58578a.m35557M();
        ArrayList m8670S2 = C22128a.m8670S(m35557M2, "detailsViewModel.contact.numbers");
        for (Number number2 : m35557M2) {
            l.d(number2, "it");
            String countryCode = number2.getCountryCode();
            if (countryCode != null) {
                m8670S2.add(countryCode);
            }
        }
        String str2 = (String) i.D(m8670S2);
        if (str == null || str.length() == 0) {
            return;
        }
        Contact contact = c20847s.f58578a;
        if (!z) {
            Objects.requireNonNull(this.f58887b);
            if (!(TrueApp.m36032b0().mo28540W() && this.f58886a.mo10138b(contact))) {
                return;
            }
        }
        AbstractC14028r abstractC14028r = this.f58888c;
        UUID randomUUID = UUID.randomUUID();
        l.d(randomUUID, "UUID.randomUUID()");
        C14022p mo20839b = abstractC14028r.mo20839b(randomUUID, "detailView");
        mo20839b.f40565o = i;
        mo20839b.f40566p = str;
        mo20839b.m20845c(str2);
        mo20839b.f40557g = false;
        mo20839b.f40559i = true;
        mo20839b.m20842f(null, false, true, new C14022p.C14023a());
    }
}
