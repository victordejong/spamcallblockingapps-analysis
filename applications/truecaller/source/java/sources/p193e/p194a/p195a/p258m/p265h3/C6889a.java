package p193e.p194a.p195a.p258m.p265h3;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1031t2.C17239b;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1349x.AbstractC21385w;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6836e0;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6906k1;
import s1.z.c.l;
/* renamed from: e.a.a.m.h3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/h3/a.class */
public final class C6889a extends AbstractC6894i2<AbstractC6906k1> implements AbstractC6836e0 {

    /* renamed from: c */
    public final AbstractC17197v0 f22479c;

    /* renamed from: d */
    public final AbstractC6906k1.AbstractC6907a f22480d;

    /* renamed from: e */
    public final C17239b f22481e;

    /* renamed from: f */
    public final AbstractC21385w f22482f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6889a(AbstractC6900j2 abstractC6900j2, AbstractC17197v0 abstractC17197v0, AbstractC6906k1.AbstractC6907a abstractC6907a, C17239b c17239b, AbstractC21385w abstractC21385w) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC6907a, "actionListener");
        l.e(c17239b, "ghostCallHomeTabPromo");
        l.e(abstractC21385w, "ghostCallSettings");
        this.f22479c = abstractC17197v0;
        this.f22480d = abstractC6907a;
        this.f22481e = c17239b;
        this.f22482f = abstractC21385w;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6812h;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6906k1 abstractC6906k1 = (AbstractC6906k1) obj;
        l.e(abstractC6906k1, "itemView");
        if (this.f22479c.mo16408H()) {
            abstractC6906k1.mo30394P();
        } else {
            abstractC6906k1.mo30395N();
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        boolean z = true;
        this.f22481e.f48374b.mo9786j(true);
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -193148370) {
            if (hashCode == 1058268880 && str.equals("ItemEvent.ACTION_PRETEND_CALL_DISMISS_PROMO")) {
                this.f22480d.mo30393H6();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_PRETEND_CALL_CTA_CLICKED")) {
                this.f22482f.mo9793d(false);
                this.f22480d.mo30392h2();
            }
            z = false;
        }
        return z;
    }
}
