package p193e.p194a.p195a.p258m.p264g3;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6897j0;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6929o1;
import s1.z.c.l;
/* renamed from: e.a.a.m.g3.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/e.class */
public final class C6878e extends AbstractC6894i2<AbstractC6929o1> implements AbstractC6897j0 {

    /* renamed from: c */
    public final AbstractC6929o1.AbstractC6930a f22462c;

    /* renamed from: d */
    public final C6877d f22463d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6878e(AbstractC6900j2 abstractC6900j2, AbstractC6929o1.AbstractC6930a abstractC6930a, C6877d c6877d) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6930a, "actionListener");
        l.e(c6877d, "locationAccessPromoManager");
        this.f22462c = abstractC6930a;
        this.f22463d = c6877d;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6817m.f22364b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6929o1) obj, "itemView");
        this.f22463d.f22461b.m30369a("key_location_promo_last_time");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -2008547274) {
            if (hashCode == -264503129 && str.equals("ItemEvent.ACTION_DISMISS_LOCATION_ACCESS_PROMO")) {
                this.f22462c.mo30371Bi();
                this.f22463d.f22461b.m30368b("key_location_promo_last_time");
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_ALLOW_LOCATION_ACCESS")) {
                this.f22462c.mo30370mg();
            }
            z = false;
        }
        return z;
    }
}
