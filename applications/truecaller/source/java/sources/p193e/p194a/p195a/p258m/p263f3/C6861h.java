package p193e.p194a.p195a.p258m.p263f3;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6948s0;
import p193e.p194a.p195a.p258m.AbstractC6969w1;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/h.class */
public final class C6861h extends AbstractC6894i2<AbstractC6969w1> implements AbstractC6948s0 {

    /* renamed from: c */
    public final AbstractC6969w1.AbstractC6970a f22425c;

    /* renamed from: d */
    public final C6860g f22426d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6861h(AbstractC6900j2 abstractC6900j2, AbstractC6969w1.AbstractC6970a abstractC6970a, C6860g c6860g) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6970a, "actionListener");
        l.e(c6860g, "requestDoNotDisturbAccessManager");
        this.f22425c = abstractC6970a;
        this.f22426d = c6860g;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6826v.f22373b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6969w1) obj, "itemView");
        this.f22426d.f22422a.m30369a("key_dnd_promo_last_time");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != 62649356) {
            if (hashCode == 1688972397 && str.equals("ItemEvent.ACTION_DISMISS_REQUEST_DO_NOT_DISTURB_ACCESS_PROMO")) {
                this.f22425c.mo30341va();
                this.f22426d.f22422a.m30368b("key_dnd_promo_last_time");
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_ALLOW_DO_NOT_DISTURB_ACCESS")) {
                this.f22425c.mo30342L9();
            }
            z = false;
        }
        return z;
    }
}
