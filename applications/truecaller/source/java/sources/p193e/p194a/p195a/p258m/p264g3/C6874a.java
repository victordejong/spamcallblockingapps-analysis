package p193e.p194a.p195a.p258m.p264g3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p195a.p258m.AbstractC6789c0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6892i1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p673d0.C12554s0;
import s1.z.c.l;
/* renamed from: e.a.a.m.g3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/a.class */
public final class C6874a extends AbstractC6894i2<AbstractC6892i1> implements AbstractC6789c0 {

    /* renamed from: c */
    public final AbstractC6892i1.AbstractC6893a f22453c;

    /* renamed from: d */
    public final AbstractC19462a f22454d;

    /* renamed from: e */
    public final C12554s0 f22455e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6874a(AbstractC6900j2 abstractC6900j2, AbstractC6892i1.AbstractC6893a abstractC6893a, AbstractC19462a abstractC19462a, C12554s0 c12554s0) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6893a, "actionListener");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c12554s0, "disableBatteryOptimizationPromoManager");
        this.f22453c = abstractC6893a;
        this.f22454d = abstractC19462a;
        this.f22455e = c12554s0;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(abstractC6798d1, AbstractC6798d1.C6809f.f22356b);
    }

    /* renamed from: B */
    public final void m30409B(String str) {
        AbstractC19462a abstractC19462a = this.f22454d;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("DisableBatteryOptimizPromoInteraction", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6892i1) obj, "itemView");
        m30409B("Shown");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -1782134419) {
            if (hashCode == 107189324 && str.equals("ItemEvent.ACTION_CONTINUE_DISABLE_BATTERY_OPTIMIZATION")) {
                C12554s0 c12554s0 = this.f22455e;
                c12554s0.f36653a.putLong("disable_battery_optimization_promo_last_shown_timestamp", c12554s0.f36656d.mo13819c());
                this.f22453c.mo30402Rh();
                m30409B("Positive");
                z = true;
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_DISABLE_BATTERY_OPTIMIZATION")) {
                C12554s0 c12554s02 = this.f22455e;
                c12554s02.f36653a.putLong("disable_battery_optimization_promo_last_shown_timestamp", c12554s02.f36656d.mo13819c());
                this.f22453c.mo30403Ae();
                m30409B("Dismiss");
                z = true;
            }
            z = false;
        }
        return z;
    }
}
