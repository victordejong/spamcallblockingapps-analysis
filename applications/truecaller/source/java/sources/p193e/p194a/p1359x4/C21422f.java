package p193e.p194a.p1359x4;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.searchwarnings.data.analytics.SearchWarningSource;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x4.f */
/* loaded from: classes13-dex2jar.jar:e/a/x4/f.class */
public final class C21422f implements AbstractC21421e {

    /* renamed from: a */
    public final AbstractC19462a f59897a;

    @Inject
    public C21422f(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f59897a = abstractC19462a;
    }

    @Override // p193e.p194a.p1359x4.AbstractC21421e
    /* renamed from: a */
    public void mo9748a(SearchWarningSource searchWarningSource, String str, String str2) {
        l.e(searchWarningSource, "source");
        l.e(str, "id");
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ShowSearchWarning");
        k kVar = new k("Source", searchWarningSource.name());
        k kVar2 = new k("SearchWarningId", str);
        if (str2 == null) {
            str2 = "Unknown";
        }
        m15852a.m15848d(i.W(new k[]{kVar, kVar2, new k("RuleName", str2)}));
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…   )\n            .build()");
        n.C0(build, this.f59897a);
    }
}
