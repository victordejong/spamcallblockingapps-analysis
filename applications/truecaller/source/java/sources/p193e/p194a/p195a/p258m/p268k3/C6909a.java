package p193e.p194a.p195a.p258m.p268k3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6848f0;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6912l1;
import p193e.p194a.p619d.AbstractC11705f;
import s1.z.c.l;
/* renamed from: e.a.a.m.k3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/k3/a.class */
public final class C6909a extends AbstractC6894i2<AbstractC6912l1> implements AbstractC6848f0 {

    /* renamed from: c */
    public boolean f22508c;

    /* renamed from: d */
    public final AbstractC19223c0 f22509d;

    /* renamed from: e */
    public final AbstractC6912l1.AbstractC6913a f22510e;

    /* renamed from: f */
    public final AbstractC11705f f22511f;

    /* renamed from: g */
    public final AbstractC19462a f22512g;

    /* renamed from: h */
    public final AbstractC19854f<AbstractC19463a0> f22513h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6909a(AbstractC6900j2 abstractC6900j2, AbstractC19223c0 abstractC19223c0, AbstractC6912l1.AbstractC6913a abstractC6913a, AbstractC11705f abstractC11705f, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6913a, "actionListener");
        l.e(abstractC11705f, "voip");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19854f, "eventsTracker");
        this.f22509d = abstractC19223c0;
        this.f22510e = abstractC6913a;
        this.f22511f = abstractC11705f;
        this.f22512g = abstractC19462a;
        this.f22513h = abstractC19854f;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6813i;
    }

    /* renamed from: B */
    public final void m30391B(String str) {
        AbstractC19462a abstractC19462a = this.f22512g;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("GroupVoicePromoBannerInteraction", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15903c("GroupVoicePromoBannerInteraction");
        m15906a.m15904b(str);
        this.f22513h.mo11854a().mo13111a(m15906a.build());
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6912l1 abstractC6912l1 = (AbstractC6912l1) obj;
        l.e(abstractC6912l1, "itemView");
        AbstractC19223c0 abstractC19223c0 = this.f22509d;
        String mo13768b = abstractC19223c0.mo13768b(C2752R.string.promo_group_voice_title, abstractC19223c0.mo13768b(2131890378, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri…ring(R.string.voip_text))");
        abstractC6912l1.setTitle(mo13768b);
        if (!this.f22508c) {
            m30391B("Shown");
            this.f22508c = true;
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() == 1220390955 && str.equals("ItemEvent.ACTION_DISMISS_GROUP_VOICE_PROMO")) {
            this.f22511f.mo24191b();
            this.f22510e.mo30390He();
            m30391B("Dismiss");
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
