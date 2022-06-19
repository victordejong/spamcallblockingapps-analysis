package com.criteo.publisher;

import com.criteo.publisher.C8418m;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.C8452a0;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p250j.C8354b;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p254l.C8387d;
import com.criteo.publisher.p256m0.EnumC8423a;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitial.class */
public class CriteoInterstitial {
    private final Criteo criteo;
    private CriteoInterstitialAdListener criteoInterstitialAdListener;
    private C8418m criteoInterstitialEventController;
    final InterstitialAdUnit interstitialAdUnit;
    private final C8402g logger;

    public CriteoInterstitial() {
        this(null, null);
    }

    public CriteoInterstitial(InterstitialAdUnit interstitialAdUnit) {
        this(interstitialAdUnit, null);
    }

    CriteoInterstitial(InterstitialAdUnit interstitialAdUnit, Criteo criteo) {
        C8402g m25741a = C8404h.m25741a(getClass());
        this.logger = m25741a;
        this.interstitialAdUnit = interstitialAdUnit;
        this.criteo = criteo;
        m25741a.m25744a(C8354b.m25801a(interstitialAdUnit));
    }

    private void doLoadAd(Bid bid) {
        this.logger.m25744a(C8354b.m25803a(this, bid));
        getIntegrationRegistry().m25807a(EnumC8347a.IN_HOUSE);
        C8418m orCreateController = getOrCreateController();
        if (!orCreateController.f30167c.mo25378a()) {
            orCreateController.m25714a();
            return;
        }
        String m25992a = bid == null ? null : bid.m25992a(EnumC8423a.CRITEO_INTERSTITIAL);
        if (m25992a == null) {
            orCreateController.m25714a();
        } else {
            orCreateController.m25713a(m25992a);
        }
    }

    private void doLoadAd(ContextData contextData) {
        this.logger.m25744a(C8354b.m25804a(this));
        getIntegrationRegistry().m25807a(EnumC8347a.STANDALONE);
        C8418m orCreateController = getOrCreateController();
        InterstitialAdUnit interstitialAdUnit = this.interstitialAdUnit;
        if (!orCreateController.f30167c.mo25378a()) {
            orCreateController.m25714a();
        } else if (orCreateController.f30165a.m25659f()) {
        } else {
            orCreateController.f30165a.m25663b();
            orCreateController.f30166b.getBidForAdUnit(interstitialAdUnit, contextData, new C8418m.C8419a());
        }
    }

    private void doShow() {
        this.logger.m25744a(C8354b.m25798d(this));
        C8418m orCreateController = getOrCreateController();
        if (orCreateController.f30165a.m25660e()) {
            orCreateController.f30167c.mo25377a(orCreateController.f30165a.m25661d(), orCreateController.f30168d);
            orCreateController.f30168d.m25751a(EnumC8518o.OPEN);
            orCreateController.f30165a.m25658g();
        }
    }

    private Criteo getCriteo() {
        Criteo criteo = this.criteo;
        Criteo criteo2 = criteo;
        if (criteo == null) {
            criteo2 = Criteo.getInstance();
        }
        return criteo2;
    }

    private C8350c getIntegrationRegistry() {
        return C8520q.m25449a().m25388u();
    }

    private C8364g getPubSdkApi() {
        return C8520q.m25449a().m25404e();
    }

    private ExecutorC8277c getRunOnUiThreadExecutor() {
        return C8520q.m25449a().m25400i();
    }

    C8418m getOrCreateController() {
        if (this.criteoInterstitialEventController == null) {
            Criteo criteo = getCriteo();
            this.criteoInterstitialEventController = new C8418m(new C8452a0(criteo.getConfig(), getPubSdkApi()), criteo.getInterstitialActivityHelper(), criteo, new C8387d(this, this.criteoInterstitialAdListener, getRunOnUiThreadExecutor()));
        }
        return this.criteoInterstitialEventController;
    }

    public boolean isAdLoaded() {
        try {
            boolean m25660e = getOrCreateController().f30165a.m25660e();
            this.logger.m25744a(C8354b.m25802a(this, m25660e));
            return m25660e;
        } catch (Throwable th) {
            this.logger.m25744a(C8527t.m25376a(th));
            return false;
        }
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(Bid bid) {
        C8520q.m25449a();
        if (!C8520q.m25405d()) {
            this.logger.m25744a(C8354b.m25805a());
            return;
        }
        try {
            doLoadAd(bid);
        } catch (Throwable th) {
            this.logger.m25744a(C8527t.m25376a(th));
        }
    }

    public void loadAd(ContextData contextData) {
        C8520q.m25449a();
        if (!C8520q.m25405d()) {
            this.logger.m25744a(C8354b.m25805a());
            return;
        }
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.m25744a(C8527t.m25376a(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        C8520q.m25449a();
        if (!C8520q.m25405d()) {
            this.logger.m25744a(C8354b.m25805a());
        } else {
            getOrCreateController().m25713a(str);
        }
    }

    public void setCriteoInterstitialAdListener(CriteoInterstitialAdListener criteoInterstitialAdListener) {
        this.criteoInterstitialAdListener = criteoInterstitialAdListener;
    }

    public void show() {
        C8520q.m25449a();
        if (!C8520q.m25405d()) {
            this.logger.m25744a(C8354b.m25805a());
            return;
        }
        try {
            doShow();
        } catch (Throwable th) {
            this.logger.m25744a(C8527t.m25376a(th));
        }
    }
}
