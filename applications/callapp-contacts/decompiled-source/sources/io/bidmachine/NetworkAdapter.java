package io.bidmachine;

import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedNativeAd;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/NetworkAdapter.class */
public abstract class NetworkAdapter {
    private final String adapterVersion;
    private boolean isInitialized;
    private final String key;
    private final AdsType[] supportedTypes;
    private final String version;

    public NetworkAdapter(String str, String str2, String str3, AdsType[] adsTypeArr) {
        this.key = str;
        this.version = str2;
        this.adapterVersion = str3;
        this.supportedTypes = adsTypeArr;
    }

    public UnifiedBannerAd createBanner() {
        throw new IllegalArgumentException(getKey() + " adapter does not support banner");
    }

    public UnifiedFullscreenAd createInterstitial() {
        throw new IllegalArgumentException(getKey() + " adapter does not support static interstitial");
    }

    public UnifiedNativeAd createNativeAd() {
        throw new IllegalArgumentException(getKey() + " adapter does not support native ads");
    }

    public UnifiedFullscreenAd createRewarded() {
        throw new IllegalArgumentException(getKey() + " adapter does not support rewarded interstitial");
    }

    public String getAdapterVersion() {
        return this.adapterVersion;
    }

    public String getKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdsType[] getSupportedTypes() {
        return this.supportedTypes;
    }

    public String getVersion() {
        return this.version;
    }

    public final void initialize(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkConfigParams networkConfigParams) throws Throwable {
        if (!this.isInitialized) {
            onInitialize(contextProvider, unifiedAdRequestParams, networkConfigParams);
            this.isInitialized = true;
        }
    }

    protected void onInitialize(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkConfigParams networkConfigParams) {
    }

    public void setLogging(boolean z) {
    }
}
