package p193e.p194a.p1011l;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.HashMap;
import javax.inject.Inject;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.z.c.l;
/* renamed from: e.a.l.m1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/m1.class */
public final class C16957m1 implements AbstractC16951l1 {

    /* renamed from: a */
    public final AbstractC19462a f47569a;

    /* renamed from: b */
    public final AbstractC14840m f47570b;

    /* renamed from: c */
    public final AbstractC26857y f47571c;

    @Inject
    public C16957m1(AbstractC19462a abstractC19462a, AbstractC14840m abstractC14840m, AbstractC26857y abstractC26857y) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC26857y, "workManager");
        this.f47569a = abstractC19462a;
        this.f47570b = abstractC14840m;
        this.f47571c = abstractC26857y;
    }

    @Override // p193e.p194a.p1011l.AbstractC16951l1
    /* renamed from: a */
    public void mo16732a(PremiumLaunchContext premiumLaunchContext) {
        l.e(premiumLaunchContext, "launchContext");
        switch (premiumLaunchContext.ordinal()) {
            case 19:
                this.f47570b.mo19558j(true);
                m16730c();
                m16731b("BLOCKSETTINGS_BlockHiddenNumbers");
                return;
            case 20:
                this.f47570b.mo19557k(true);
                m16730c();
                m16731b("BLOCKSETTINGS_BlockSpammers");
                return;
            case 21:
                this.f47570b.mo19555m(true);
                m16730c();
                m16731b("BLOCKSETTINGS_BlockNonPhonebook");
                return;
            case 22:
                this.f47570b.mo19561g(true);
                m16730c();
                m16731b("BLOCKSETTINGS_BlockForeignNumbers");
                return;
            case 23:
                this.f47570b.mo19561g(true);
                m16730c();
                m16731b("BLOCKSETTINGS_BlockNeighbourSpoofing");
                return;
            case 24:
                this.f47570b.mo19567a(true);
                m16730c();
                m16731b("BLOCKSETTINGS_BlockIndianTelemarketers");
                return;
            default:
                return;
        }
    }

    /* renamed from: b */
    public final void m16731b(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("BlocktabSettings_Action", "Enabled");
        AbstractC19462a abstractC19462a = this.f47569a;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, null, hashMap, null);
        l.d(c19505a, "event.build()");
        abstractC19462a.mo13271e(c19505a);
    }

    /* renamed from: c */
    public final void m16730c() {
        this.f47570b.mo19565c(true);
        AbstractC26857y abstractC26857y = this.f47571c;
        l.e(abstractC26857y, "workManager");
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        abstractC26857y.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
    }
}
