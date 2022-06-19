package p193e.p194a.p195a.p258m.p262e3;

import javax.inject.Inject;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6849f1;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p851h5.AbstractC14946m;
import s1.z.c.l;
/* renamed from: e.a.a.m.e3.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/e3/e.class */
public final class C6846e extends AbstractC6843c {

    /* renamed from: e */
    public final AbstractC6900j2 f22392e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6846e(AbstractC6900j2 abstractC6900j2, AbstractC6849f1.AbstractC6850a abstractC6850a, AbstractC14946m abstractC14946m) {
        super(abstractC6900j2, abstractC6850a, abstractC14946m);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6850a, "actionListener");
        l.e(abstractC14946m, "roleRequester");
        this.f22392e = abstractC6900j2;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6803c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6849f1 abstractC6849f1 = (AbstractC6849f1) obj;
        l.e(abstractC6849f1, "itemView");
        AbstractC6798d1 mo30397ze = this.f22392e.mo30397ze();
        AbstractC6798d1 abstractC6798d1 = mo30397ze;
        if (!(mo30397ze instanceof AbstractC6798d1.C6803c)) {
            abstractC6798d1 = null;
        }
        if (((AbstractC6798d1.C6803c) abstractC6798d1) != null) {
            abstractC6849f1.mo30421E3();
        }
    }
}
