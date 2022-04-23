package com.criteo.publisher;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.criteo.publisher.a;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.i.c;
import com.criteo.publisher.k;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.o;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.BannerAdUnit;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoBannerView.class */
public class CriteoBannerView extends WebView {
    private static final int UNSET_DIMENSION_VALUE = -1;
    final BannerAdUnit bannerAdUnit;
    private final Criteo criteo;
    private CriteoBannerAdListener criteoBannerAdListener;
    private k criteoBannerEventController;
    private final g logger;

    public CriteoBannerView(Context context) {
        this(context, null, null);
    }

    /* JADX WARN: Finally extract failed */
    public CriteoBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        g a2 = h.a(getClass());
        this.logger = a2;
        this.criteo = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.c.CriteoBannerView, 0, 0);
        try {
            int integer = obtainStyledAttributes.getInteger(a.c.CriteoBannerView_criteoAdUnitWidth, -1);
            int integer2 = obtainStyledAttributes.getInteger(a.c.CriteoBannerView_criteoAdUnitHeight, -1);
            String string = obtainStyledAttributes.getString(a.c.CriteoBannerView_criteoAdUnitId);
            if (string != null && integer != -1 && integer2 != -1) {
                this.bannerAdUnit = new BannerAdUnit(string, new AdSize(integer, integer2));
            } else if (string == null && integer == -1 && integer2 == -1) {
                this.bannerAdUnit = null;
            } else {
                this.bannerAdUnit = null;
                o.a((Throwable) new IllegalStateException("CriteoBannerView was not properly inflated. For InHouse integration, no attribute must be set. For Standalone integration, all of: criteoAdUnitId, criteoAdUnitWidth and criteoAdUnitHeight must be set."));
            }
            obtainStyledAttributes.recycle();
            a2.a(b.a(this.bannerAdUnit));
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public CriteoBannerView(Context context, BannerAdUnit bannerAdUnit) {
        this(context, bannerAdUnit, null);
    }

    CriteoBannerView(Context context, BannerAdUnit bannerAdUnit, Criteo criteo) {
        super(context);
        g a2 = h.a(getClass());
        this.logger = a2;
        this.bannerAdUnit = bannerAdUnit;
        this.criteo = criteo;
        a2.a(b.a(bannerAdUnit));
    }

    private void doLoadAd(Bid bid) {
        this.logger.a(b.a(this, bid));
        getIntegrationRegistry().a(com.criteo.publisher.i.a.IN_HOUSE);
        k orCreateController = getOrCreateController();
        String a2 = bid == null ? null : bid.a(com.criteo.publisher.m0.a.CRITEO_BANNER);
        if (a2 == null) {
            orCreateController.a(o.INVALID);
            return;
        }
        orCreateController.a(o.VALID);
        orCreateController.a(a2);
    }

    private void doLoadAd(ContextData contextData) {
        this.logger.a(b.a(this));
        getIntegrationRegistry().a(com.criteo.publisher.i.a.STANDALONE);
        k orCreateController = getOrCreateController();
        orCreateController.f17387a.getBidForAdUnit(this.bannerAdUnit, contextData, new k.a());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public CriteoBannerAdListener getCriteoBannerAdListener() {
        return this.criteoBannerAdListener;
    }

    k getOrCreateController() {
        if (this.criteoBannerEventController == null) {
            this.criteoBannerEventController = getCriteo().createBannerController(this);
        }
        return this.criteoBannerEventController;
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(Bid bid) {
        try {
            doLoadAd(bid);
        } catch (Throwable th) {
            this.logger.a(t.a(th));
        }
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.a(t.a(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        getOrCreateController().a(o.VALID);
        getOrCreateController().a(str);
    }

    public void setCriteoBannerAdListener(CriteoBannerAdListener criteoBannerAdListener) {
        this.criteoBannerAdListener = criteoBannerAdListener;
    }
}
