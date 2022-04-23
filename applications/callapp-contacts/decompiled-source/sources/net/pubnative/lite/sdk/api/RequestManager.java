package net.pubnative.lite.sdk.api;

import net.pubnative.lite.sdk.AdCache;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.api.PNApiClient;
import net.pubnative.lite.sdk.config.ConfigManager;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdRequest;
import net.pubnative.lite.sdk.models.AdRequestFactory;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.models.IntegrationType;
import net.pubnative.lite.sdk.utils.CheckUtils;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.PNInitializationHelper;
import net.pubnative.lite.sdk.vpaid.VideoAdCache;
import net.pubnative.lite.sdk.vpaid.VideoAdCacheItem;
import net.pubnative.lite.sdk.vpaid.VideoAdProcessor;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/RequestManager.class */
public class RequestManager {
    private static final String TAG = "RequestManager";
    private AdCache mAdCache;
    private final AdRequestFactory mAdRequestFactory;
    private AdSize mAdSize;
    private PNApiClient mApiClient;
    private final ConfigManager mConfigManager;
    private final PNInitializationHelper mInitializationHelper;
    private boolean mIsDestroyed;
    private boolean mIsRewarded;
    private RequestListener mRequestListener;
    private VideoAdCache mVideoCache;
    private String mZoneId;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/RequestManager$RequestListener.class */
    public interface RequestListener {
        void onRequestFail(Throwable th);

        void onRequestSuccess(Ad ad);
    }

    public RequestManager() {
        this(HyBid.getApiClient(), HyBid.getAdCache(), HyBid.getVideoAdCache(), HyBid.getConfigManager(), new AdRequestFactory(), new PNInitializationHelper());
    }

    RequestManager(PNApiClient pNApiClient, AdCache adCache, VideoAdCache videoAdCache, ConfigManager configManager, AdRequestFactory adRequestFactory, PNInitializationHelper pNInitializationHelper) {
        this.mIsRewarded = false;
        this.mApiClient = pNApiClient;
        this.mAdCache = adCache;
        this.mVideoCache = videoAdCache;
        this.mAdRequestFactory = adRequestFactory;
        this.mInitializationHelper = pNInitializationHelper;
        this.mAdSize = AdSize.SIZE_320x50;
        this.mConfigManager = configManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processAd(final AdRequest adRequest, final Ad ad) {
        if (this.mAdCache == null) {
            this.mAdCache = HyBid.getAdCache();
        }
        if (this.mVideoCache == null) {
            this.mVideoCache = HyBid.getVideoAdCache();
        }
        ad.setZoneId(adRequest.zoneid);
        this.mAdCache.put(adRequest.zoneid, ad);
        int i = ad.assetgroupid;
        if (i == 4 || i == 15) {
            new VideoAdProcessor().process(this.mApiClient.getContext(), ad.getVast(), null, new VideoAdProcessor.Listener() { // from class: net.pubnative.lite.sdk.api.RequestManager.3
                @Override // net.pubnative.lite.sdk.vpaid.VideoAdProcessor.Listener
                public void onCacheError(Throwable th) {
                    if (!RequestManager.this.mIsDestroyed) {
                        Logger.w(RequestManager.TAG, th.getMessage());
                        if (RequestManager.this.mRequestListener != null) {
                            RequestManager.this.mRequestListener.onRequestFail(th);
                        }
                    }
                }

                @Override // net.pubnative.lite.sdk.vpaid.VideoAdProcessor.Listener
                public void onCacheSuccess(AdParams adParams, String str, String str2) {
                    if (!RequestManager.this.mIsDestroyed) {
                        RequestManager.this.mVideoCache.put(adRequest.zoneid, new VideoAdCacheItem(adParams, str, str2));
                        if (RequestManager.this.mRequestListener != null) {
                            RequestManager.this.mRequestListener.onRequestSuccess(ad);
                        }
                    }
                }
            });
            return;
        }
        RequestListener requestListener = this.mRequestListener;
        if (requestListener != null) {
            requestListener.onRequestSuccess(ad);
        }
    }

    public void destroy() {
        this.mRequestListener = null;
        this.mIsDestroyed = true;
    }

    public AdSize getAdSize() {
        return this.mAdSize;
    }

    public boolean isRewarded() {
        return this.mIsRewarded;
    }

    public void requestAd() {
        if (CheckUtils.NoThrow.checkArgument(this.mInitializationHelper.isInitialized(), "HyBid SDK has not been initialized. Please call HyBid#initialize in your application's onCreate method.") && CheckUtils.NoThrow.checkNotNull(HyBid.getDeviceInfo(), "HyBid SDK has not been initialized yet. Please call HyBid#initialize in your application's onCreate method.") && CheckUtils.NoThrow.checkNotNull(HyBid.getUserDataManager(), "HyBid SDK has not been initialized yet. Please call HyBid#initialize in your application's onCreate method.") && CheckUtils.NoThrow.checkNotNull(this.mZoneId, "zone id cannot be null") && CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "RequestManager has been destroyed")) {
            ConfigManager configManager = this.mConfigManager;
            if (configManager != null) {
                configManager.refreshConfig();
            }
            this.mAdRequestFactory.createAdRequest(this.mZoneId, getAdSize(), isRewarded(), new AdRequestFactory.Callback() { // from class: net.pubnative.lite.sdk.api.RequestManager.1
                @Override // net.pubnative.lite.sdk.models.AdRequestFactory.Callback
                public void onRequestCreated(AdRequest adRequest) {
                    RequestManager.this.requestAdFromApi(adRequest);
                }
            });
        }
    }

    void requestAdFromApi(final AdRequest adRequest) {
        if (this.mApiClient == null) {
            this.mApiClient = HyBid.getApiClient();
        }
        String str = TAG;
        Logger.d(str, "Requesting ad for zone id: " + adRequest.zoneid);
        this.mApiClient.getAd(adRequest, new PNApiClient.AdRequestListener() { // from class: net.pubnative.lite.sdk.api.RequestManager.2
            @Override // net.pubnative.lite.sdk.api.PNApiClient.AdRequestListener
            public void onFailure(Throwable th) {
                if (!RequestManager.this.mIsDestroyed) {
                    Logger.w(RequestManager.TAG, th.getMessage());
                    if (RequestManager.this.mRequestListener != null) {
                        RequestManager.this.mRequestListener.onRequestFail(th);
                    }
                }
            }

            @Override // net.pubnative.lite.sdk.api.PNApiClient.AdRequestListener
            public void onSuccess(Ad ad) {
                if (!RequestManager.this.mIsDestroyed) {
                    String str2 = RequestManager.TAG;
                    Logger.d(str2, "Received ad response for zone id: " + adRequest.zoneid);
                    RequestManager.this.processAd(adRequest, ad);
                }
            }
        });
    }

    public void setAdSize(AdSize adSize) {
        this.mAdSize = adSize;
    }

    public void setIntegrationType(IntegrationType integrationType) {
        AdRequestFactory adRequestFactory = this.mAdRequestFactory;
        if (adRequestFactory != null) {
            adRequestFactory.setIntegrationType(integrationType);
        }
    }

    public void setRequestListener(RequestListener requestListener) {
        this.mRequestListener = requestListener;
    }

    public void setZoneId(String str) {
        this.mZoneId = str;
    }
}
