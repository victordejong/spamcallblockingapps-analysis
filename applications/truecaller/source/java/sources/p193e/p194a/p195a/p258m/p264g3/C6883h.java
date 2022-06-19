package p193e.p194a.p195a.p258m.p264g3;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.p258m.AbstractC6790c1;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6872g2;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import s1.z.c.l;
/* renamed from: e.a.a.m.g3.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/h.class */
public final class C6883h extends AbstractC6894i2<AbstractC6872g2> implements AbstractC6790c1 {

    /* renamed from: c */
    public final AbstractC6900j2 f22473c;

    /* renamed from: d */
    public final AbstractC6872g2.AbstractC6873a f22474d;

    /* renamed from: e */
    public final AbstractC19223c0 f22475e;

    /* renamed from: f */
    public final AbstractC21881d f22476f;

    /* renamed from: g */
    public final AbstractC19222c f22477g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6883h(AbstractC6900j2 abstractC6900j2, AbstractC6872g2.AbstractC6873a abstractC6873a, AbstractC19223c0 abstractC19223c0, AbstractC21881d abstractC21881d, AbstractC19222c abstractC19222c) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6873a, "actionListener");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC19222c, "clock");
        this.f22473c = abstractC6900j2;
        this.f22474d = abstractC6873a;
        this.f22475e = abstractC19223c0;
        this.f22476f = abstractC21881d;
        this.f22477g = abstractC19222c;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6810f0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6872g2 abstractC6872g2 = (AbstractC6872g2) obj;
        l.e(abstractC6872g2, "itemView");
        AbstractC6798d1 mo30397ze = this.f22473c.mo30397ze();
        AbstractC6798d1 abstractC6798d1 = mo30397ze;
        if (!(mo30397ze instanceof AbstractC6798d1.C6810f0)) {
            abstractC6798d1 = null;
        }
        AbstractC6798d1.C6810f0 c6810f0 = (AbstractC6798d1.C6810f0) abstractC6798d1;
        if (c6810f0 != null) {
            AbstractC19223c0 abstractC19223c0 = this.f22475e;
            int i2 = c6810f0.f22357b;
            String mo13759k = abstractC19223c0.mo13759k(C2752R.plurals.ProfileViewCountDesc, i2, Integer.valueOf(i2));
            l.d(mo13759k, "resourceProvider.getQuan…ountDesc, number, number)");
            abstractC6872g2.mo30412c(mo13759k);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -1465253441) {
            if (hashCode == 1473693963 && str.equals("ItemEvent.ACTION_DISMISS_WHO_VIEWED_ME_PROMO")) {
                this.f22476f.putLong("whoViewedMePromoTimestamp", this.f22477g.mo13819c());
                this.f22474d.mo30411B7();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_OPEN_WHO_VIEWED_ME")) {
                this.f22476f.putLong("whoViewedMePromoTimestamp", this.f22477g.mo13819c());
                this.f22474d.mo30410md();
            }
            z = false;
        }
        return z;
    }
}
