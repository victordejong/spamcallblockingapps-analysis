package com.criteo.publisher;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.webkit.WebView;
import androidx.annotation.Keep;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.BannerAdUnit;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.C22912a3;
import p193e.p1512i.p1516b.C22971j2;
import p193e.p1512i.p1516b.C22989m2;
import p193e.p1512i.p1516b.C23095t1;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.EnumC23143v2;
import p193e.p1512i.p1516b.p1519d2.C22935c;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import s1.z.c.l;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoBannerView.class */
public class CriteoBannerView extends WebView {
    private static final int UNSET_DIMENSION_VALUE = -1;
    public final BannerAdUnit bannerAdUnit;
    private final Criteo criteo;
    private CriteoBannerAdListener criteoBannerAdListener;
    private C22989m2 criteoBannerEventController;
    private final C23021h logger;

    public CriteoBannerView(Context context) {
        this(context, null, null);
    }

    /* JADX WARN: Finally extract failed */
    public CriteoBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C23021h m7583a = C23023i.m7583a(getClass());
        this.logger = m7583a;
        this.criteo = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0895R.styleable.CriteoBannerView, 0, 0);
        try {
            int integer = obtainStyledAttributes.getInteger(C0895R.styleable.CriteoBannerView_criteoAdUnitWidth, -1);
            int integer2 = obtainStyledAttributes.getInteger(C0895R.styleable.CriteoBannerView_criteoAdUnitHeight, -1);
            String string = obtainStyledAttributes.getString(C0895R.styleable.CriteoBannerView_criteoAdUnitId);
            if (string != null && integer != -1 && integer2 != -1) {
                this.bannerAdUnit = new BannerAdUnit(string, new AdSize(integer, integer2));
            } else if (string == null && integer == -1 && integer2 == -1) {
                this.bannerAdUnit = null;
            } else {
                this.bannerAdUnit = null;
                C23089l.m7560a(new IllegalStateException("CriteoBannerView was not properly inflated. For InHouse integration, no attribute must be set. For Standalone integration, all of: criteoAdUnitId, criteoAdUnitWidth and criteoAdUnitHeight must be set."));
            }
            obtainStyledAttributes.recycle();
            m7583a.m7586a(C23095t1.m7556a(this.bannerAdUnit));
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public CriteoBannerView(Context context, BannerAdUnit bannerAdUnit) {
        this(context, bannerAdUnit, null);
    }

    public CriteoBannerView(Context context, BannerAdUnit bannerAdUnit, Criteo criteo) {
        super(context);
        C23021h m7583a = C23023i.m7583a(getClass());
        this.logger = m7583a;
        this.bannerAdUnit = bannerAdUnit;
        this.criteo = criteo;
        m7583a.m7586a(C23095t1.m7556a(bannerAdUnit));
    }

    private void doLoadAd(Bid bid) {
        C23021h c23021h = this.logger;
        l.f(this, "bannerView");
        StringBuilder m8728C = C22128a.m8728C("BannerView(");
        m8728C.append(this.bannerAdUnit);
        m8728C.append(") is loading with bid ");
        m8728C.append(bid != null ? C26232y.m2359f(bid) : null);
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        getIntegrationRegistry().m7620a(EnumC22933a.IN_HOUSE);
        C22989m2 orCreateController = getOrCreateController();
        Objects.requireNonNull(orCreateController);
        String m42047b = bid == null ? null : bid.m42047b(EnumC23072a.CRITEO_BANNER);
        if (m42047b == null) {
            orCreateController.m7596a(EnumC23143v2.INVALID);
            return;
        }
        orCreateController.m7596a(EnumC23143v2.VALID);
        orCreateController.m7595b(m42047b);
    }

    private void doLoadAd(ContextData contextData) {
        C23021h c23021h = this.logger;
        l.f(this, "bannerView");
        StringBuilder m8728C = C22128a.m8728C("BannerView(");
        m8728C.append(this.bannerAdUnit);
        m8728C.append(") is loading");
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        getIntegrationRegistry().m7620a(EnumC22933a.STANDALONE);
        C22989m2 orCreateController = getOrCreateController();
        orCreateController.f63725c.getBidForAdUnit(this.bannerAdUnit, contextData, new C22971j2(orCreateController));
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

    public CriteoBannerAdListener getCriteoBannerAdListener() {
        return this.criteoBannerAdListener;
    }

    public C22989m2 getOrCreateController() {
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
            this.logger.m7586a(C22912a3.m7631a(th));
        }
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.m7586a(C22912a3.m7631a(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        getOrCreateController().m7596a(EnumC23143v2.VALID);
        getOrCreateController().m7595b(str);
    }

    public void setCriteoBannerAdListener(CriteoBannerAdListener criteoBannerAdListener) {
        this.criteoBannerAdListener = criteoBannerAdListener;
    }
}
