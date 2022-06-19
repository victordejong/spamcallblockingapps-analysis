package com.criteo.publisher;

import androidx.annotation.Keep;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.InterstitialAdUnit;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.C22912a3;
import p193e.p1512i.p1516b.C23065r2;
import p193e.p1512i.p1516b.C23096t2;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.EnumC23143v2;
import p193e.p1512i.p1516b.p1519d2.C22935c;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1521g2.C22952b;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1525o2.C23001d;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import p193e.p1512i.p1516b.p1531s2.EnumC23092o;
import p193e.p1512i.p1516b.p1533u2.C23100a;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
import s1.z.c.l;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitial.class */
public class CriteoInterstitial {
    private final Criteo criteo;
    private CriteoInterstitialAdListener criteoInterstitialAdListener;
    private C23096t2 criteoInterstitialEventController;
    public final InterstitialAdUnit interstitialAdUnit;
    private final C23021h logger;

    public CriteoInterstitial() {
        this(null, null);
    }

    public CriteoInterstitial(InterstitialAdUnit interstitialAdUnit) {
        this(interstitialAdUnit, null);
    }

    public CriteoInterstitial(InterstitialAdUnit interstitialAdUnit, Criteo criteo) {
        C23021h m7583a = C23023i.m7583a(getClass());
        this.logger = m7583a;
        this.interstitialAdUnit = interstitialAdUnit;
        this.criteo = criteo;
        m7583a.m7586a(new C23019f(0, "Interstitial initialized for " + interstitialAdUnit, null, null, 13));
    }

    private void doLoadAd(Bid bid) {
        C23021h c23021h = this.logger;
        l.f(this, "interstitial");
        StringBuilder sb = new StringBuilder();
        sb.append("Interstitial(");
        l.f(this, "$this$adUnit");
        sb.append(this.interstitialAdUnit);
        sb.append(") is loading with bid ");
        sb.append(bid != null ? C26232y.m2359f(bid) : null);
        c23021h.m7586a(new C23019f(0, sb.toString(), null, null, 13));
        getIntegrationRegistry().m7620a(EnumC22933a.IN_HOUSE);
        C23096t2 orCreateController = getOrCreateController();
        if (!orCreateController.f63928d.mo7424b()) {
            orCreateController.m7554b();
            return;
        }
        String m42047b = bid == null ? null : bid.m42047b(EnumC23072a.CRITEO_INTERSTITIAL);
        if (m42047b == null) {
            orCreateController.m7554b();
        } else {
            orCreateController.m7555a(m42047b);
        }
    }

    private void doLoadAd(ContextData contextData) {
        C23021h c23021h = this.logger;
        l.f(this, "interstitial");
        StringBuilder sb = new StringBuilder();
        sb.append("Interstitial(");
        l.f(this, "$this$adUnit");
        sb.append(this.interstitialAdUnit);
        sb.append(") is loading");
        c23021h.m7586a(new C23019f(0, sb.toString(), null, null, 13));
        getIntegrationRegistry().m7620a(EnumC22933a.STANDALONE);
        C23096t2 orCreateController = getOrCreateController();
        InterstitialAdUnit interstitialAdUnit = this.interstitialAdUnit;
        if (!orCreateController.f63928d.mo7424b()) {
            orCreateController.m7554b();
            return;
        }
        C23100a c23100a = orCreateController.f63925a;
        EnumC23092o enumC23092o = c23100a.f63935b;
        EnumC23092o enumC23092o2 = EnumC23092o.LOADING;
        if (enumC23092o == enumC23092o2) {
            return;
        }
        c23100a.f63935b = enumC23092o2;
        orCreateController.f63927c.getBidForAdUnit(interstitialAdUnit, contextData, new C23065r2(orCreateController));
    }

    private void doShow() {
        C23021h c23021h = this.logger;
        l.f(this, "interstitial");
        StringBuilder sb = new StringBuilder();
        sb.append("Interstitial(");
        l.f(this, "$this$adUnit");
        sb.append(this.interstitialAdUnit);
        sb.append(") is showing");
        c23021h.m7586a(new C23019f(0, sb.toString(), null, null, 13));
        C23096t2 orCreateController = getOrCreateController();
        C23100a c23100a = orCreateController.f63925a;
        if (!(c23100a.f63935b == EnumC23092o.LOADED)) {
            return;
        }
        orCreateController.f63928d.mo7425a(c23100a.f63934a, orCreateController.f63929e);
        orCreateController.f63929e.m7594a(EnumC23143v2.OPEN);
        C23100a c23100a2 = orCreateController.f63925a;
        c23100a2.f63935b = EnumC23092o.NONE;
        c23100a2.f63934a = "";
    }

    private Criteo getCriteo() {
        Criteo criteo = this.criteo;
        Criteo criteo2 = criteo;
        if (criteo == null) {
            criteo2 = Criteo.getInstance();
        }
        return criteo2;
    }

    private C22935c getIntegrationRegistry() {
        return C23157x2.m7454h().m7460b();
    }

    private C22967g getPubSdkApi() {
        return C23157x2.m7454h().m7458d();
    }

    private ExecutorC23149c getRunOnUiThreadExecutor() {
        return C23157x2.m7454h().m7453i();
    }

    public C23096t2 getOrCreateController() {
        if (this.criteoInterstitialEventController == null) {
            Criteo criteo = getCriteo();
            this.criteoInterstitialEventController = new C23096t2(new C23100a(criteo.getConfig(), getPubSdkApi()), criteo.getInterstitialActivityHelper(), criteo, new C23001d(this, this.criteoInterstitialAdListener, getRunOnUiThreadExecutor()));
        }
        return this.criteoInterstitialEventController;
    }

    public boolean isAdLoaded() {
        try {
            boolean z = getOrCreateController().f63925a.f63935b == EnumC23092o.LOADED;
            this.logger.m7586a(C22952b.m7614b(this, z));
            return z;
        } catch (Throwable th) {
            this.logger.m7586a(C22912a3.m7631a(th));
            return false;
        }
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(Bid bid) {
        if (!C23157x2.m7454h().m7452j()) {
            this.logger.m7586a(C22952b.m7615a());
            return;
        }
        try {
            doLoadAd(bid);
        } catch (Throwable th) {
            this.logger.m7586a(C22912a3.m7631a(th));
        }
    }

    public void loadAd(ContextData contextData) {
        if (!C23157x2.m7454h().m7452j()) {
            this.logger.m7586a(C22952b.m7615a());
            return;
        }
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.m7586a(C22912a3.m7631a(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        if (!C23157x2.m7454h().m7452j()) {
            this.logger.m7586a(C22952b.m7615a());
        } else {
            getOrCreateController().m7555a(str);
        }
    }

    public void setCriteoInterstitialAdListener(CriteoInterstitialAdListener criteoInterstitialAdListener) {
        this.criteoInterstitialAdListener = criteoInterstitialAdListener;
    }

    public void show() {
        if (!C23157x2.m7454h().m7452j()) {
            this.logger.m7586a(C22952b.m7615a());
            return;
        }
        try {
            doShow();
        } catch (Throwable th) {
            this.logger.m7586a(C22912a3.m7631a(th));
        }
    }
}
