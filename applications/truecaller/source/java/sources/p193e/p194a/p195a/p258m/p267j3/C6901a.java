package p193e.p194a.p195a.p258m.p267j3;

import com.truecaller.premium.PremiumLaunchContext;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6928o0;
import p193e.p194a.p195a.p258m.AbstractC6949s1;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.m.j3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/j3/a.class */
public final class C6901a extends AbstractC6894i2<Object> implements AbstractC6928o0 {

    /* renamed from: c */
    public final AbstractC6900j2 f22491c;

    /* renamed from: d */
    public final AbstractC6949s1 f22492d;

    /* renamed from: e */
    public final AbstractC16832c2 f22493e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6901a(AbstractC6900j2 abstractC6900j2, AbstractC6949s1 abstractC6949s1, AbstractC16832c2 abstractC16832c2) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6949s1, "actionListener");
        l.e(abstractC16832c2, "premiumSettings");
        this.f22491c = abstractC6900j2;
        this.f22492d = abstractC6949s1;
        this.f22493e = abstractC16832c2;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6823s;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2, p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return (l.a(this.f22491c.mo30398Ge(), "PromoInboxSpamTab") || l.a(this.f22491c.mo30398Ge(), "PromoCallTab")) && (this.f22491c.mo30397ze() instanceof AbstractC6798d1.C6823s);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -1727423888) {
            if (hashCode == 2111334804 && str.equals("ItemEvent.ACTION_DISMISS_PREMIUM_BLOCKING")) {
                this.f22492d.mo30359Ha();
                AbstractC16832c2 abstractC16832c2 = this.f22493e;
                abstractC16832c2.mo16917C2(abstractC16832c2.mo16888e1() + 1);
                AbstractC16832c2 abstractC16832c22 = this.f22493e;
                b bVar = new b();
                l.d(bVar, "DateTime.now()");
                abstractC16832c22.mo16881j1(((e) bVar).a);
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_PREMIUM_BLOCKING_LEARN_MORE")) {
                AbstractC6949s1 abstractC6949s1 = this.f22492d;
                Object obj = c18900h.f53005e;
                Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.premium.PremiumLaunchContext");
                abstractC6949s1.mo30358Ta((PremiumLaunchContext) obj);
                AbstractC16832c2 abstractC16832c23 = this.f22493e;
                b bVar2 = new b();
                l.d(bVar2, "DateTime.now()");
                abstractC16832c23.mo16881j1(((e) bVar2).a);
            }
            z = false;
        }
        return z;
    }
}
