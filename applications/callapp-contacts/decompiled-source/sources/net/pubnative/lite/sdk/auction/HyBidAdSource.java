package net.pubnative.lite.sdk.auction;

import android.content.Context;
import android.text.TextUtils;
import net.pubnative.lite.sdk.api.BannerRequestManager;
import net.pubnative.lite.sdk.api.InterstitialRequestManager;
import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.auction.AdSource;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.models.IntegrationType;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/HyBidAdSource.class */
public class HyBidAdSource implements RequestManager.RequestListener, AdSource {
    private final AdSize mAdSize;
    private final AdSourceConfig mConfig;
    private final Context mContext;
    private AdSource.Listener mListener;

    public HyBidAdSource(Context context, AdSourceConfig adSourceConfig, AdSize adSize) {
        this.mContext = context;
        this.mConfig = adSourceConfig;
        this.mAdSize = adSize;
    }

    @Override // net.pubnative.lite.sdk.auction.AdSource
    public void fetchAd(AdSource.Listener listener) {
        RequestManager requestManager;
        AdSourceConfig adSourceConfig = this.mConfig;
        if (adSourceConfig != null && TextUtils.isEmpty(adSourceConfig.getZoneId())) {
            this.mListener = listener;
            if (this.mAdSize == AdSize.SIZE_INTERSTITIAL) {
                requestManager = new InterstitialRequestManager();
            } else {
                requestManager = new BannerRequestManager();
                requestManager.setAdSize(this.mAdSize);
            }
            requestManager.setZoneId(this.mConfig.getZoneId());
            requestManager.setIntegrationType(IntegrationType.IN_APP_BIDDING);
            requestManager.setRequestListener(this);
            requestManager.requestAd();
        } else if (listener != null) {
            listener.onError(new AuctionError(this.mConfig.getName(), new Exception("HyBid ad fetch failed. Invalid config")));
        }
    }

    @Override // net.pubnative.lite.sdk.auction.AdSource
    public AdSize getAdSize() {
        return this.mAdSize;
    }

    @Override // net.pubnative.lite.sdk.auction.AdSource
    public double getECPM() {
        return this.mConfig.getECPM();
    }

    @Override // net.pubnative.lite.sdk.auction.AdSource
    public String getName() {
        return !TextUtils.isEmpty(this.mConfig.getName()) ? this.mConfig.getName() : "hybid_api";
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestFail(Throwable th) {
        AdSource.Listener listener = this.mListener;
        if (listener != null) {
            listener.onError(new AuctionError(this.mConfig.getName(), th));
        }
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestSuccess(Ad ad) {
        if (this.mListener != null) {
            ad.setAdSourceName(this.mConfig.getName());
            this.mListener.onAdFetched(ad);
        }
    }
}
