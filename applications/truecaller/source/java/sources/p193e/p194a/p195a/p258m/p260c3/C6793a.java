package p193e.p194a.p195a.p258m.p260c3;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1031t2.C17238a;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1213s2.p1216h.AbstractC20215e;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6837e1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6977y;
import s1.z.c.l;
/* renamed from: e.a.a.m.c3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/c3/a.class */
public final class C6793a extends AbstractC6894i2<AbstractC6837e1> implements AbstractC6977y {

    /* renamed from: c */
    public final AbstractC17197v0 f22335c;

    /* renamed from: d */
    public final AbstractC6837e1.AbstractC6838a f22336d;

    /* renamed from: e */
    public final C17238a f22337e;

    /* renamed from: f */
    public final AbstractC20215e f22338f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6793a(AbstractC6900j2 abstractC6900j2, AbstractC17197v0 abstractC17197v0, AbstractC6837e1.AbstractC6838a abstractC6838a, C17238a c17238a, AbstractC20215e abstractC20215e) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC6838a, "actionListener");
        l.e(c17238a, "announceCallerIdHomeTabPromo");
        l.e(abstractC20215e, "announceCallerIdSettings");
        this.f22335c = abstractC17197v0;
        this.f22336d = abstractC6838a;
        this.f22337e = c17238a;
        this.f22338f = abstractC20215e;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6799a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6837e1 abstractC6837e1 = (AbstractC6837e1) obj;
        l.e(abstractC6837e1, "itemView");
        if (this.f22335c.mo16408H()) {
            abstractC6837e1.mo30428P();
        } else {
            abstractC6837e1.mo30429N();
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        boolean z = true;
        this.f22337e.f48371b.mo11331j(true);
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -2145716170) {
            if (hashCode == -1497039596 && str.equals("ItemEvent.ACTION_ANNOUNCE_CALLER_ID_CTA_CLICKED")) {
                this.f22338f.mo11340d(false);
                this.f22336d.mo30427Y2();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_ANNOUNCE_CALLER_ID_DISMISS_PROMO")) {
                this.f22336d.mo30426jj();
            }
            z = false;
        }
        return z;
    }
}
