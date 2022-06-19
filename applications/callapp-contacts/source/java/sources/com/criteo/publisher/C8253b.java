package com.criteo.publisher;

import com.criteo.publisher.logging.C8400e;
import com.criteo.publisher.model.BannerAdUnit;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b.class */
public final class C8253b {
    static {
        new C8253b();
    }

    private C8253b() {
    }

    /* renamed from: a */
    public static final C8400e m25965a(CriteoBannerView bannerView) {
        C18524p.m3841c(bannerView, "bannerView");
        return new C8400e(0, "BannerView(" + bannerView.bannerAdUnit + ") is loading", null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25964a(CriteoBannerView bannerView, Bid bid) {
        C18524p.m3841c(bannerView, "bannerView");
        StringBuilder sb = new StringBuilder("BannerView(");
        sb.append(bannerView.bannerAdUnit);
        sb.append(") is loading with bid ");
        sb.append(bid != null ? C8258c.m25959a(bid) : null);
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25963a(BannerAdUnit bannerAdUnit) {
        return new C8400e(0, "BannerView initialized for ".concat(String.valueOf(bannerAdUnit)), null, null, 13, null);
    }

    /* renamed from: b */
    public static final C8400e m25962b(CriteoBannerView criteoBannerView) {
        StringBuilder sb = new StringBuilder("BannerView(");
        sb.append(criteoBannerView != null ? criteoBannerView.bannerAdUnit : null);
        sb.append(") is loaded");
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: c */
    public static final C8400e m25961c(CriteoBannerView criteoBannerView) {
        StringBuilder sb = new StringBuilder("BannerView(");
        sb.append(criteoBannerView != null ? criteoBannerView.bannerAdUnit : null);
        sb.append(") failed to load");
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }
}
