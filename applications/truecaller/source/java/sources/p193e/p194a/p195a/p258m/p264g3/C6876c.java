package p193e.p194a.p195a.p258m.p264g3;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6797d0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6898j1;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import s1.z.c.l;
/* renamed from: e.a.a.m.g3.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/c.class */
public final class C6876c extends AbstractC6894i2<AbstractC6898j1> implements AbstractC6797d0 {

    /* renamed from: c */
    public final AbstractC6898j1.AbstractC6899a f22458c;

    /* renamed from: d */
    public final C6875b f22459d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6876c(AbstractC6900j2 abstractC6900j2, AbstractC6898j1.AbstractC6899a abstractC6899a, C6875b c6875b) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6899a, "actionListener");
        l.e(c6875b, "drawPermissionPromoManager");
        this.f22458c = abstractC6899a;
        this.f22459d = c6875b;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6811g.f22358b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6898j1) obj, "itemView");
        this.f22459d.f22457b.m30369a("key_draw_promo_last_time");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -419171805) {
            if (hashCode == 1783742130 && str.equals("ItemEvent.ACTION_ALLOW_DRAW_PERMISSION")) {
                this.f22458c.mo30399Y4();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_DRAW_PERMISSION_PROMO")) {
                this.f22458c.mo30400G5();
                this.f22459d.f22457b.m30368b("key_draw_promo_last_time");
            }
            z = false;
        }
        return z;
    }
}
