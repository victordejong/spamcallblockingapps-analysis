package p193e.p194a.p195a.p258m.p261d3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p195a.p258m.AbstractC6779a2;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6968w0;
import p193e.p194a.p294b.AbstractC7908c;
import s1.z.c.l;
/* renamed from: e.a.a.m.d3.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/d3/b.class */
public class C6834b extends AbstractC6894i2<AbstractC6779a2> implements AbstractC6968w0 {

    /* renamed from: c */
    public final AbstractC19462a f22381c;

    /* renamed from: d */
    public final AbstractC7908c f22382d;

    /* renamed from: e */
    public final AbstractC6779a2.AbstractC6780a f22383e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6834b(AbstractC6900j2 abstractC6900j2, AbstractC19462a abstractC19462a, AbstractC7908c abstractC7908c, AbstractC6779a2.AbstractC6780a abstractC6780a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC7908c, "bizmonBridge");
        l.e(abstractC6780a, "actionListener");
        this.f22381c = abstractC19462a;
        this.f22382d = abstractC7908c;
        this.f22383e = abstractC6780a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6830z;
    }

    /* renamed from: B */
    public final void m30430B(String str) {
        AbstractC19462a abstractC19462a = this.f22381c;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("VerifiedBusinessAwarenessEvent", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6779a2) obj, "itemView");
        m30430B("Shown");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -436291275) {
            if (hashCode == 1794256374 && str.equals("ItemEvent.ACTION_DISMISS_VERIFIED_BUSINESS_AWARENESS")) {
                m30430B("Dismiss");
                this.f22382d.mo29133a();
                z = this.f22383e.mo30443Td();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_VIEW_VERIFIED_BUSINESS_AWARENESS")) {
                m30430B("View");
                this.f22382d.mo29133a();
                this.f22383e.mo30442U7();
                z = true;
            }
            z = false;
        }
        return z;
    }
}
