package p193e.p194a.p1011l.p1030s2;

import com.truecaller.premium.personalisation.PersonalisationPromo;
import com.truecaller.premium.provider.Store;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p613c0.C10912h;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.l.s2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/s2/b.class */
public final class C17230b implements AbstractC17229a {

    /* renamed from: a */
    public final AbstractC20235a f48356a;

    /* renamed from: b */
    public final C10912h f48357b;

    /* renamed from: c */
    public final AbstractC17246a f48358c;

    @Inject
    public C17230b(AbstractC20235a abstractC20235a, C10912h c10912h, AbstractC17246a abstractC17246a) {
        l.e(abstractC20235a, "remoteConfig");
        l.e(c10912h, "experimentRegistry");
        l.e(abstractC17246a, "premiumProductStoreProvider");
        this.f48356a = abstractC20235a;
        this.f48357b = c10912h;
        this.f48358c = abstractC17246a;
    }

    @Override // p193e.p194a.p1011l.p1030s2.AbstractC17229a
    /* renamed from: a */
    public String mo16359a() {
        String str = "Default";
        if (this.f48358c.mo16331a() == Store.WEB) {
            return "Default";
        }
        PersonalisationPromo mo16358b = mo16358b();
        boolean z = true;
        if (mo16358b == null) {
            String m25510b = this.f48357b.f32400b.m25510b();
            if (m25510b.length() <= 0) {
                z = false;
            }
            if (!z) {
                m25510b = null;
            }
            if (m25510b != null) {
                str = m25510b;
            }
        } else {
            int ordinal = mo16358b.ordinal();
            if (ordinal == 0) {
                str = "Variant0";
            } else if (ordinal == 1) {
                str = "Variant1";
            } else if (ordinal == 2) {
                str = "Variant2";
            } else if (ordinal != 3) {
                throw new i();
            } else {
                str = "Variant3";
            }
        }
        return str;
    }

    @Override // p193e.p194a.p1011l.p1030s2.AbstractC17229a
    /* renamed from: b */
    public PersonalisationPromo mo16358b() {
        PersonalisationPromo personalisationPromo;
        PersonalisationPromo[] values = PersonalisationPromo.values();
        int i = 0;
        while (true) {
            if (i >= 4) {
                personalisationPromo = null;
                break;
            }
            personalisationPromo = values[i];
            if (l.a(personalisationPromo.getRemoteConfigValue(), this.f48356a.getString("personalized_premium_promotion"))) {
                break;
            }
            i++;
        }
        return personalisationPromo;
    }

    @Override // p193e.p194a.p1011l.p1030s2.AbstractC17229a
    /* renamed from: c */
    public boolean mo16357c() {
        return mo16358b() != null;
    }
}
