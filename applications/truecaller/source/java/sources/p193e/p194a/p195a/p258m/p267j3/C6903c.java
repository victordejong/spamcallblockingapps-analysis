package p193e.p194a.p195a.p258m.p267j3;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1031t2.C17242e;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1161q5.AbstractC19693i;
import p193e.p194a.p195a.p258m.AbstractC6778a1;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6839e2;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import s1.z.c.l;
/* renamed from: e.a.a.m.j3.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/j3/c.class */
public final class C6903c extends AbstractC6894i2<AbstractC6839e2> implements AbstractC6778a1 {

    /* renamed from: c */
    public final AbstractC17197v0 f22500c;

    /* renamed from: d */
    public final AbstractC19223c0 f22501d;

    /* renamed from: e */
    public final AbstractC6839e2.AbstractC6840a f22502e;

    /* renamed from: f */
    public final C17242e f22503f;

    /* renamed from: g */
    public final AbstractC19693i f22504g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6903c(AbstractC6900j2 abstractC6900j2, AbstractC17197v0 abstractC17197v0, AbstractC19223c0 abstractC19223c0, AbstractC6839e2.AbstractC6840a abstractC6840a, C17242e c17242e, AbstractC19693i abstractC19693i) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6840a, "actionListener");
        l.e(c17242e, "homeTabPromo");
        l.e(abstractC19693i, "settings");
        this.f22500c = abstractC17197v0;
        this.f22501d = abstractC19223c0;
        this.f22502e = abstractC6840a;
        this.f22503f = c17242e;
        this.f22504g = abstractC19693i;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6806d0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6839e2 abstractC6839e2 = (AbstractC6839e2) obj;
        l.e(abstractC6839e2, "itemView");
        if (this.f22500c.mo16408H()) {
            String mo13768b = this.f22501d.mo13768b(C2752R.string.WhatsAppCallerIdHomePromoDescriptionPremium, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…ePromoDescriptionPremium)");
            abstractC6839e2.mo30333c(mo13768b);
            String mo13768b2 = this.f22501d.mo13768b(C2752R.string.StrTryNow, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getString(R.string.StrTryNow)");
            abstractC6839e2.mo30332y(mo13768b2);
            return;
        }
        String mo13768b3 = this.f22501d.mo13768b(C2752R.string.WhatsAppCallerIdHomePromoDescriptionNonPremium, new Object[0]);
        l.d(mo13768b3, "resourceProvider.getStri…omoDescriptionNonPremium)");
        abstractC6839e2.mo30333c(mo13768b3);
        String mo13768b4 = this.f22501d.mo13768b(C2752R.string.PremiumHomeTabPromoButton, new Object[0]);
        l.d(mo13768b4, "resourceProvider.getStri…remiumHomeTabPromoButton)");
        abstractC6839e2.mo30332y(mo13768b4);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        boolean z = true;
        this.f22503f.f48380b.mo12978j(true);
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -473719427) {
            if (hashCode == 2012422751 && str.equals("ItemEvent.ACTION_WHATSAPP_CALLER_ID_DISMISS_PROMO")) {
                this.f22502e.mo30425E3();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_WHATSAPP_CALLER_ID_CTA_CLICKED")) {
                this.f22504g.mo12984d(false);
                this.f22502e.mo30424xf();
            }
            z = false;
        }
        return z;
    }
}
