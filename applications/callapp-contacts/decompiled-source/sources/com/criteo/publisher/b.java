package com.criteo.publisher;

import com.criteo.publisher.logging.e;
import com.criteo.publisher.model.BannerAdUnit;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b.class */
public final class b {
    static {
        new b();
    }

    private b() {
    }

    public static final e a(CriteoBannerView bannerView) {
        p.c(bannerView, "bannerView");
        return new e(0, "BannerView(" + bannerView.bannerAdUnit + ") is loading", null, null, 13, null);
    }

    public static final e a(CriteoBannerView bannerView, Bid bid) {
        p.c(bannerView, "bannerView");
        StringBuilder sb = new StringBuilder("BannerView(");
        sb.append(bannerView.bannerAdUnit);
        sb.append(") is loading with bid ");
        sb.append(bid != null ? c.a(bid) : null);
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e a(BannerAdUnit bannerAdUnit) {
        return new e(0, "BannerView initialized for ".concat(String.valueOf(bannerAdUnit)), null, null, 13, null);
    }

    public static final e b(CriteoBannerView criteoBannerView) {
        StringBuilder sb = new StringBuilder("BannerView(");
        sb.append(criteoBannerView != null ? criteoBannerView.bannerAdUnit : null);
        sb.append(") is loaded");
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e c(CriteoBannerView criteoBannerView) {
        StringBuilder sb = new StringBuilder("BannerView(");
        sb.append(criteoBannerView != null ? criteoBannerView.bannerAdUnit : null);
        sb.append(") failed to load");
        return new e(0, sb.toString(), null, null, 13, null);
    }
}
