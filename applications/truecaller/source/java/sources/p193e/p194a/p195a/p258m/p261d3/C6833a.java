package p193e.p194a.p195a.p258m.p261d3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6938q0;
import p193e.p194a.p195a.p258m.AbstractC6959u1;
import p193e.p194a.p294b.AbstractC7908c;
import s1.z.c.l;
/* renamed from: e.a.a.m.d3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/d3/a.class */
public class C6833a extends AbstractC6894i2<AbstractC6959u1> implements AbstractC6938q0 {

    /* renamed from: c */
    public final AbstractC7908c f22378c;

    /* renamed from: d */
    public final AbstractC19462a f22379d;

    /* renamed from: e */
    public final AbstractC6959u1.AbstractC6960a f22380e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6833a(AbstractC6900j2 abstractC6900j2, AbstractC7908c abstractC7908c, AbstractC19462a abstractC19462a, AbstractC6959u1.AbstractC6960a abstractC6960a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC7908c, "bizmonBridge");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC6960a, "actionListener");
        this.f22378c = abstractC7908c;
        this.f22379d = abstractC19462a;
        this.f22380e = abstractC6960a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6824t;
    }

    /* renamed from: B */
    public final void m30431B(String str) {
        AbstractC19462a abstractC19462a = this.f22379d;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("PriorityCallAwarenessEvent", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6959u1) obj, "itemView");
        m30431B("Shown");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -1436293257) {
            if (hashCode == 420078776 && str.equals("ItemEvent.ACTION_DISMISS_PRIORITY_CALL_AWARENESS")) {
                m30431B("Dismiss");
                this.f22378c.mo29131c();
                z = this.f22380e.mo30353bi();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_VIEW_PRIORITY_CALL_AWARENESS")) {
                m30431B("View");
                this.f22378c.mo29131c();
                this.f22380e.mo30352oi();
                z = true;
            }
            z = false;
        }
        return z;
    }
}
