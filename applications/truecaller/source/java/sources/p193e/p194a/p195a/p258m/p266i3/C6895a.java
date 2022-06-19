package p193e.p194a.p195a.p258m.p266i3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1399z.AbstractC21834f;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6922n0;
import p193e.p194a.p195a.p258m.AbstractC6944r1;
import s1.z.c.l;
/* renamed from: e.a.a.m.i3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/i3/a.class */
public final class C6895a extends AbstractC6894i2<AbstractC6944r1> implements AbstractC6922n0 {

    /* renamed from: c */
    public final AbstractC6944r1.AbstractC6945a f22486c;

    /* renamed from: d */
    public final AbstractC21834f f22487d;

    /* renamed from: e */
    public final AbstractC19462a f22488e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6895a(AbstractC6900j2 abstractC6900j2, AbstractC6944r1.AbstractC6945a abstractC6945a, AbstractC21834f abstractC21834f, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6945a, "actionListener");
        l.e(abstractC21834f, "personalSafety");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22486c = abstractC6945a;
        this.f22487d = abstractC21834f;
        this.f22488e = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6821q;
    }

    /* renamed from: B */
    public final void m30401B(String str) {
        AbstractC19462a abstractC19462a = this.f22488e;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("PersonalSafetyHomeBannerInteraction", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(P…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6944r1 abstractC6944r1 = (AbstractC6944r1) obj;
        l.e(abstractC6944r1, "itemView");
        m30401B("Shown");
        abstractC6944r1.setTitle(this.f22487d.mo9017e());
        abstractC6944r1.mo30351k(this.f22487d.mo9021a());
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -792700741) {
            if (hashCode == -13708566 && str.equals("ItemEvent.ACTION_DISMISS_PERSONAL_SAFETY_PROMO")) {
                this.f22487d.mo9018d();
                m30401B("Dismiss");
                this.f22486c.mo30361be();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_PERSONAL_SAFETY_GET_IT_NOW")) {
                this.f22487d.mo9018d();
                m30401B("GetItNow");
                this.f22486c.mo30362Qd();
            }
            z = false;
        }
        return z;
    }
}
