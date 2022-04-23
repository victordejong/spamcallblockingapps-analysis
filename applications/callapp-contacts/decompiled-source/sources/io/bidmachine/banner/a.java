package io.bidmachine.banner;

import android.content.Context;
import io.bidmachine.AdListener;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/a.class */
final class a extends ViewAd<a, BannerRequest, ViewAdObject<BannerRequest, UnifiedBannerAd, UnifiedBannerAdRequestParams>, UnifiedBannerAdRequestParams, AdListener<a>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context) {
        super(context, AdsType.Banner);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ViewAdObject<BannerRequest, UnifiedBannerAd, UnifiedBannerAdRequestParams> createAdObject(ContextProvider contextProvider, BannerRequest bannerRequest, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback) {
        UnifiedBannerAd createBanner = networkAdapter.createBanner();
        if (createBanner == null) {
            return null;
        }
        ViewAdObject<BannerRequest, UnifiedBannerAd, UnifiedBannerAdRequestParams> viewAdObject = new ViewAdObject<>(contextProvider, adProcessCallback, bannerRequest, adObjectParams, createBanner);
        BannerSize size = bannerRequest.getSize();
        viewAdObject.setWidth(size.width);
        viewAdObject.setHeight(size.height);
        return viewAdObject;
    }
}
