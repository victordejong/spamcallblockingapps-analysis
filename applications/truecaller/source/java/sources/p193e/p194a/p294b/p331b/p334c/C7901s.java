package p193e.p194a.p294b.p331b.p334c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.profile.data.dto.BusinessData;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.s */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/s.class */
public final class C7901s implements AbstractC7877d {

    /* renamed from: a */
    public final AbstractC19462a f24503a;

    @Inject
    public C7901s(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f24503a = abstractC19462a;
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7877d
    /* renamed from: a */
    public void mo29137a(int i, BusinessData businessData) {
        l.e(businessData, RemoteMessageConst.DATA);
        AbstractC19462a abstractC19462a = this.f24503a;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("BusinessProfileSaved");
        c19504b.m13263d("Action", C18334g0.m15237c(i));
        c19504b.m13262e("Logo", C18334g0.m15235d(businessData.getAvatarUrl()));
        c19504b.m13263d("Color", businessData.getCompany().getBranding().getBackgroundColor());
        String size = businessData.getCompany().getSize();
        if (size == null) {
            size = "";
        }
        c19504b.m13263d("Size", size);
        c19504b.m13262e("HasWebsite", C18334g0.m15235d(businessData.getOnlineIds().getUrl()));
        c19504b.m13262e("HasFacebook", C18334g0.m15235d(businessData.getOnlineIds().getFacebookId()));
        c19504b.m13262e("HasTwitter", C18334g0.m15235d(businessData.getOnlineIds().getTwitterId()));
        c19504b.m13262e("HasContactPersonsDesignation", C18334g0.m15235d(businessData.getJobTitle()));
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(m13266a);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7877d
    /* renamed from: b */
    public void mo29136b(int i, String str) {
        l.e(str, "cause");
        AbstractC19462a abstractC19462a = this.f24503a;
        String m15237c = C18334g0.m15237c(i);
        HashMap hashMap = new HashMap();
        hashMap.put("Action", m15237c);
        HashMap hashMap2 = hashMap;
        if (hashMap == null) {
            hashMap2 = new HashMap();
        }
        hashMap2.put("Cause", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("BusinessProfileSaveFailed", null, hashMap2, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }
}
