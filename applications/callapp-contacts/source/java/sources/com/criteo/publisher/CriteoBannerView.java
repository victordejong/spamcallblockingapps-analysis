package com.criteo.publisher;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.criteo.publisher.C8217a;
import com.criteo.publisher.C8365k;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p256m0.C8444o;
import com.criteo.publisher.p256m0.EnumC8423a;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoBannerView.class */
public class CriteoBannerView extends WebView {
    private static final int UNSET_DIMENSION_VALUE = -1;
    final BannerAdUnit bannerAdUnit;
    private final Criteo criteo;
    private CriteoBannerAdListener criteoBannerAdListener;
    private C8365k criteoBannerEventController;
    private final C8402g logger;

    public CriteoBannerView(Context context) {
        this(context, null, null);
    }

    /* JADX WARN: Finally extract failed */
    public CriteoBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C8402g m25741a = C8404h.m25741a(getClass());
        this.logger = m25741a;
        this.criteo = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C8217a.C8220c.CriteoBannerView, 0, 0);
        try {
            int integer = obtainStyledAttributes.getInteger(C8217a.C8220c.CriteoBannerView_criteoAdUnitWidth, -1);
            int integer2 = obtainStyledAttributes.getInteger(C8217a.C8220c.CriteoBannerView_criteoAdUnitHeight, -1);
            String string = obtainStyledAttributes.getString(C8217a.C8220c.CriteoBannerView_criteoAdUnitId);
            if (string != null && integer != -1 && integer2 != -1) {
                this.bannerAdUnit = new BannerAdUnit(string, new AdSize(integer, integer2));
            } else if (string == null && integer == -1 && integer2 == -1) {
                this.bannerAdUnit = null;
            } else {
                this.bannerAdUnit = null;
                C8444o.m25675a((Throwable) new IllegalStateException("CriteoBannerView was not properly inflated. For InHouse integration, no attribute must be set. For Standalone integration, all of: criteoAdUnitId, criteoAdUnitWidth and criteoAdUnitHeight must be set."));
            }
            obtainStyledAttributes.recycle();
            m25741a.m25744a(C8253b.m25963a(this.bannerAdUnit));
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
        C8402g m25741a = C8404h.m25741a(getClass());
        this.logger = m25741a;
        this.bannerAdUnit = bannerAdUnit;
        this.criteo = criteo;
        m25741a.m25744a(C8253b.m25963a(bannerAdUnit));
    }

    private void doLoadAd(Bid bid) {
        this.logger.m25744a(C8253b.m25964a(this, bid));
        getIntegrationRegistry().m25807a(EnumC8347a.IN_HOUSE);
        C8365k orCreateController = getOrCreateController();
        String m25992a = bid == null ? null : bid.m25992a(EnumC8423a.CRITEO_BANNER);
        if (m25992a == null) {
            orCreateController.m25777a(EnumC8518o.INVALID);
            return;
        }
        orCreateController.m25777a(EnumC8518o.VALID);
        orCreateController.m25776a(m25992a);
    }

    private void doLoadAd(ContextData contextData) {
        this.logger.m25744a(C8253b.m25965a(this));
        getIntegrationRegistry().m25807a(EnumC8347a.STANDALONE);
        C8365k orCreateController = getOrCreateController();
        orCreateController.f30048a.getBidForAdUnit(this.bannerAdUnit, contextData, new C8365k.C8366a());
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

    public CriteoBannerAdListener getCriteoBannerAdListener() {
        return this.criteoBannerAdListener;
    }

    C8365k getOrCreateController() {
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
            this.logger.m25744a(C8527t.m25376a(th));
        }
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.m25744a(C8527t.m25376a(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        getOrCreateController().m25777a(EnumC8518o.VALID);
        getOrCreateController().m25776a(str);
    }

    public void setCriteoBannerAdListener(CriteoBannerAdListener criteoBannerAdListener) {
        this.criteoBannerAdListener = criteoBannerAdListener;
    }
}
