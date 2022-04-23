package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.i.a;
import com.criteo.publisher.i.c;
import com.criteo.publisher.j.b;
import com.criteo.publisher.l.d;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.model.a0;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitial.class */
public class CriteoInterstitial {
    private final Criteo criteo;
    private CriteoInterstitialAdListener criteoInterstitialAdListener;
    private m criteoInterstitialEventController;
    final InterstitialAdUnit interstitialAdUnit;
    private final g logger;

    public CriteoInterstitial() {
        this(null, null);
    }

    public CriteoInterstitial(InterstitialAdUnit interstitialAdUnit) {
        this(interstitialAdUnit, null);
    }

    CriteoInterstitial(InterstitialAdUnit interstitialAdUnit, Criteo criteo) {
        g a2 = h.a(getClass());
        this.logger = a2;
        this.interstitialAdUnit = interstitialAdUnit;
        this.criteo = criteo;
        a2.a(b.a(interstitialAdUnit));
    }

    private void doLoadAd(Bid bid) {
        this.logger.a(b.a(this, bid));
        getIntegrationRegistry().a(a.IN_HOUSE);
        m orCreateController = getOrCreateController();
        if (!orCreateController.f17486c.a()) {
            orCreateController.a();
            return;
        }
        String a2 = bid == null ? null : bid.a(com.criteo.publisher.m0.a.CRITEO_INTERSTITIAL);
        if (a2 == null) {
            orCreateController.a();
        } else {
            orCreateController.a(a2);
        }
    }

    private void doLoadAd(ContextData contextData) {
        this.logger.a(b.a(this));
        getIntegrationRegistry().a(a.STANDALONE);
        m orCreateController = getOrCreateController();
        InterstitialAdUnit interstitialAdUnit = this.interstitialAdUnit;
        if (!orCreateController.f17486c.a()) {
            orCreateController.a();
        } else if (!orCreateController.f17484a.f()) {
            orCreateController.f17484a.b();
            orCreateController.f17485b.getBidForAdUnit(interstitialAdUnit, contextData, new m.a());
        }
    }

    private void doShow() {
        this.logger.a(b.d(this));
        m orCreateController = getOrCreateController();
        if (orCreateController.f17484a.e()) {
            orCreateController.f17486c.a(orCreateController.f17484a.d(), orCreateController.f17487d);
            orCreateController.f17487d.a(o.OPEN);
            orCreateController.f17484a.g();
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

    private c getIntegrationRegistry() {
        return q.a().u();
    }

    private com.criteo.publisher.j0.g getPubSdkApi() {
        return q.a().e();
    }

    private com.criteo.publisher.e.c getRunOnUiThreadExecutor() {
        return q.a().i();
    }

    m getOrCreateController() {
        if (this.criteoInterstitialEventController == null) {
            Criteo criteo = getCriteo();
            this.criteoInterstitialEventController = new m(new a0(criteo.getConfig(), getPubSdkApi()), criteo.getInterstitialActivityHelper(), criteo, new d(this, this.criteoInterstitialAdListener, getRunOnUiThreadExecutor()));
        }
        return this.criteoInterstitialEventController;
    }

    public boolean isAdLoaded() {
        try {
            boolean e = getOrCreateController().f17484a.e();
            this.logger.a(b.a(this, e));
            return e;
        } catch (Throwable th) {
            this.logger.a(t.a(th));
            return false;
        }
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(Bid bid) {
        q.a();
        if (!q.d()) {
            this.logger.a(b.a());
            return;
        }
        try {
            doLoadAd(bid);
        } catch (Throwable th) {
            this.logger.a(t.a(th));
        }
    }

    public void loadAd(ContextData contextData) {
        q.a();
        if (!q.d()) {
            this.logger.a(b.a());
            return;
        }
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.a(t.a(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        q.a();
        if (!q.d()) {
            this.logger.a(b.a());
        } else {
            getOrCreateController().a(str);
        }
    }

    public void setCriteoInterstitialAdListener(CriteoInterstitialAdListener criteoInterstitialAdListener) {
        this.criteoInterstitialAdListener = criteoInterstitialAdListener;
    }

    public void show() {
        q.a();
        if (!q.d()) {
            this.logger.a(b.a());
            return;
        }
        try {
            doShow();
        } catch (Throwable th) {
            this.logger.a(t.a(th));
        }
    }
}
