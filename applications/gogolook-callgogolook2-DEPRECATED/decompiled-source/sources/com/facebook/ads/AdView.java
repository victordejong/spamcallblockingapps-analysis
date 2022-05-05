package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC2237Ad;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.bench.Benchmark;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView.class */
public class AdView extends RelativeLayout implements AbstractC2237Ad {
    public final AdViewApi mAdViewApi;
    public final AdViewParentApi mAdViewParentApi = new C2238a();

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView$AdViewLoadConfig.class */
    public interface AdViewLoadConfig extends AbstractC2237Ad.LoadAdConfig {
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView$AdViewLoadConfigBuilder.class */
    public interface AdViewLoadConfigBuilder extends AbstractC2237Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC2237Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        AdViewLoadConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        AdViewLoadConfigBuilder withAdListener(AdListener adListener);

        @Override // com.facebook.ads.AbstractC2237Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        AdViewLoadConfigBuilder withBid(String str);
    }

    /* renamed from: com.facebook.ads.AdView$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView$a.class */
    public class C2238a implements AdViewParentApi {
        public C2238a() {
        }

        @Override // com.facebook.ads.internal.api.AdViewParentApi
        @Benchmark
        public void onConfigurationChanged(Configuration configuration) {
            AdView.super.onConfigurationChanged(configuration);
        }
    }

    @Benchmark
    public AdView(Context context, String str, AdSize adSize) {
        super(context);
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, adSize, this.mAdViewParentApi, this);
    }

    @Benchmark
    public AdView(Context context, String str, String str2) throws Exception {
        super(context);
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, str2, this.mAdViewParentApi, this);
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public AdViewLoadConfigBuilder buildLoadAdConfig() {
        return this.mAdViewApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void destroy() {
        this.mAdViewApi.destroy();
    }

    @Deprecated
    public void disableAutoRefresh() {
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public String getPlacementId() {
        return this.mAdViewApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public boolean isAdInvalidated() {
        return this.mAdViewApi.isAdInvalidated();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    @Benchmark
    public void loadAd() {
        this.mAdViewApi.loadAd();
    }

    @Benchmark
    public void loadAd(AdViewLoadConfig adViewLoadConfig) {
        this.mAdViewApi.loadAd(adViewLoadConfig);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void loadAdFromBid(String str) {
        this.mAdViewApi.loadAdFromBid(str);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        this.mAdViewApi.onConfigurationChanged(configuration);
    }

    @Benchmark
    @Deprecated
    public void setAdListener(AdListener adListener) {
        this.mAdViewApi.setAdListener(adListener);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mAdViewApi.setExtraHints(extraHints);
    }
}
