package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.bench.Benchmark;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/AdView.class */
public class AdView extends RelativeLayout implements AbstractC0929Ad {
    private final AdViewApi mAdViewApi;
    private final AdViewParentApi mAdViewParentApi;

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/AdView$AdViewLoadConfig.class */
    public interface AdViewLoadConfig extends AbstractC0929Ad.LoadAdConfig {
    }

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/AdView$AdViewLoadConfigBuilder.class */
    public interface AdViewLoadConfigBuilder extends AbstractC0929Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC0929Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        AdViewLoadConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        AdViewLoadConfigBuilder withAdListener(AdListener adListener);

        @Override // com.facebook.ads.AbstractC0929Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        AdViewLoadConfigBuilder withBid(String str);
    }

    /* renamed from: com.facebook.ads.AdView$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/AdView$a.class */
    public class C0930a implements AdViewParentApi {
        public C0930a() {
            AdView.this = r4;
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
        C0930a c0930a = new C0930a();
        this.mAdViewParentApi = c0930a;
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, adSize, c0930a, this);
    }

    @Benchmark
    public AdView(Context context, String str, String str2) throws Exception {
        super(context);
        C0930a c0930a = new C0930a();
        this.mAdViewParentApi = c0930a;
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, str2, c0930a, this);
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public AdViewLoadConfigBuilder buildLoadAdConfig() {
        return this.mAdViewApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public void destroy() {
        this.mAdViewApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public String getPlacementId() {
        return this.mAdViewApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public boolean isAdInvalidated() {
        return this.mAdViewApi.isAdInvalidated();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    @Benchmark
    public void loadAd() {
        this.mAdViewApi.loadAd();
    }

    @Benchmark
    public void loadAd(AdViewLoadConfig adViewLoadConfig) {
        this.mAdViewApi.loadAd(adViewLoadConfig);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        this.mAdViewApi.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mAdViewApi.setExtraHints(extraHints);
    }
}
