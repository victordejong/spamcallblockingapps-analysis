package com.applovin.impl.sdk.p057e;

import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.p035a.C0881c;
import com.applovin.impl.p035a.C0882d;
import com.applovin.impl.p035a.C0883e;
import com.applovin.impl.p035a.C0888i;
import com.applovin.impl.p035a.C0891l;
import com.applovin.impl.p035a.C0892m;
import com.applovin.impl.p035a.EnumC0884f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdType;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: com.applovin.impl.sdk.e.t */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/t.class */
public class C1377t extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final C0883e f5211a;

    /* renamed from: c */
    private final AppLovinAdLoadListener f5212c;

    public C1377t(C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super("TaskRenderVastAd", c1408l);
        this.f5212c = appLovinAdLoadListener;
        this.f5211a = c0883e;
    }

    @Override // java.lang.Runnable
    public void run() {
        m5733a("Rendering VAST ad...");
        int size = this.f5211a.m7148b().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String str = "";
        C0888i c0888i = null;
        C0892m c0892m = null;
        C0882d c0882d = null;
        C0881c c0881c = null;
        String str2 = "";
        for (C1539q c1539q : this.f5211a.m7148b()) {
            C1539q m4938c = c1539q.m4938c(C0891l.m7118a(c1539q) ? "Wrapper" : "InLine");
            if (m4938c != null) {
                C1539q m4938c2 = m4938c.m4938c("AdSystem");
                C0888i c0888i2 = c0888i;
                if (m4938c2 != null) {
                    c0888i2 = C0888i.m7130a(m4938c2, c0888i, this.f5113b);
                }
                String m7117a = C0891l.m7117a(m4938c, "AdTitle", str);
                String m7117a2 = C0891l.m7117a(m4938c, "Description", str2);
                C0891l.m7114a(m4938c.m4942a("Impression"), hashSet, this.f5211a, this.f5113b);
                C1539q m4940b = m4938c.m4940b("ViewableImpression");
                if (m4940b != null) {
                    C0891l.m7114a(m4940b.m4942a("Viewable"), hashSet, this.f5211a, this.f5113b);
                }
                C1539q m4938c3 = m4938c.m4938c("AdVerifications");
                C0881c c0881c2 = c0881c;
                if (m4938c3 != null) {
                    c0881c2 = C0881c.m7155a(m4938c3, c0881c, this.f5211a, this.f5113b);
                }
                C0891l.m7114a(m4938c.m4942a("Error"), hashSet2, this.f5211a, this.f5113b);
                C1539q m4940b2 = m4938c.m4940b("Creatives");
                str = m7117a;
                str2 = m7117a2;
                c0888i = c0888i2;
                c0881c = c0881c2;
                if (m4940b2 != null) {
                    Iterator<C1539q> it2 = m4940b2.m4937d().iterator();
                    C0882d c0882d2 = c0882d;
                    C0892m c0892m2 = c0892m;
                    while (true) {
                        str = m7117a;
                        str2 = m7117a2;
                        c0888i = c0888i2;
                        c0892m = c0892m2;
                        c0882d = c0882d2;
                        c0881c = c0881c2;
                        if (it2.hasNext()) {
                            C1539q next = it2.next();
                            C1539q m4940b3 = next.m4940b("Linear");
                            if (m4940b3 != null) {
                                c0892m2 = C0892m.m7103a(m4940b3, c0892m2, this.f5211a, this.f5113b);
                            } else {
                                C1539q m4938c4 = next.m4938c("CompanionAds");
                                if (m4938c4 != null) {
                                    C1539q m4938c5 = m4938c4.m4938c("Companion");
                                    if (m4938c5 != null) {
                                        c0882d2 = C0882d.m7153a(m4938c5, c0882d2, this.f5211a, this.f5113b);
                                    }
                                } else {
                                    m5728d("Received and will skip rendering for an unidentified creative: " + next);
                                }
                            }
                        }
                    }
                }
            } else {
                m5728d("Did not find wrapper or inline response for node: " + c1539q);
            }
        }
        C0875a m7188a = new C0875a.C0877a().m7180a(this.f5113b).m7177a(this.f5211a.m7147c()).m7173b(this.f5211a.m7146d()).m7181a(this.f5211a.m7145e()).m7187a(this.f5211a.m7144f()).m7179a(str).m7175b(str2).m7183a(c0888i).m7182a(c0892m).m7184a(c0882d).m7185a(c0881c).m7178a(hashSet).m7185a(c0881c).m7174b(hashSet2).m7188a();
        EnumC0884f m7122a = C0891l.m7122a(m7188a);
        if (m7122a != null) {
            C0891l.m7119a(this.f5211a, this.f5212c, m7122a, -6, this.f5113b);
            return;
        }
        m5733a("Finished rendering VAST ad: " + m7188a);
        m7188a.getAdEventTracker().m6062b();
        C1341e c1341e = new C1341e(m7188a, this.f5113b, this.f5212c);
        C1362o.EnumC1364a enumC1364a = C1362o.EnumC1364a.CACHING_OTHER;
        C1362o.EnumC1364a enumC1364a2 = enumC1364a;
        if (((Boolean) this.f5113b.m5511a(C1314b.f4807bj)).booleanValue()) {
            if (m7188a.getType() == AppLovinAdType.REGULAR) {
                enumC1364a2 = C1362o.EnumC1364a.CACHING_INTERSTITIAL;
            } else {
                enumC1364a2 = enumC1364a;
                if (m7188a.getType() == AppLovinAdType.INCENTIVIZED) {
                    enumC1364a2 = C1362o.EnumC1364a.CACHING_INCENTIVIZED;
                }
            }
        }
        this.f5113b.m5525R().m5653a(c1341e, enumC1364a2);
    }
}
