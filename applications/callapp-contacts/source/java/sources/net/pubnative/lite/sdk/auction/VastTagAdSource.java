package net.pubnative.lite.sdk.auction;

import android.content.Context;
import android.text.TextUtils;
import net.pubnative.lite.sdk.auction.AdSource;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.vast.VastUrlUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/VastTagAdSource.class */
public class VastTagAdSource implements AdSource {
    private static final String TAG = "VastTagAdSource";
    private final AdSize mAdSize;
    private final AdSourceConfig mConfig;
    private final Context mContext;

    public VastTagAdSource(Context context, AdSourceConfig adSourceConfig, AdSize adSize) {
        this.mContext = context;
        this.mConfig = adSourceConfig;
        this.mAdSize = adSize;
    }

    private String processTagUrl(String str) {
        return VastUrlUtils.formatURL(str);
    }

    @Override // net.pubnative.lite.sdk.auction.AdSource
    public void fetchAd(final AdSource.Listener listener) {
        AdSourceConfig adSourceConfig = this.mConfig;
        if (adSourceConfig != null && TextUtils.isEmpty(adSourceConfig.getVastTagUrl())) {
            PNHttpClient.makeRequest(this.mContext, processTagUrl(this.mConfig.getVastTagUrl()), null, null, false, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.auction.VastTagAdSource.1
                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onFailure(Throwable th) {
                    String str = VastTagAdSource.TAG;
                    Logger.m628e(str, "Request failed: " + th.toString());
                    AdSource.Listener listener2 = listener;
                    if (listener2 != null) {
                        listener2.onError(new AuctionError(VastTagAdSource.this.mConfig.getName(), th));
                    }
                }

                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onSuccess(String str) {
                    if (!TextUtils.isEmpty(str)) {
                        AdSource.Listener listener2 = listener;
                        if (listener2 == null) {
                            return;
                        }
                        listener2.onError(new AuctionError(VastTagAdSource.this.mConfig.getName(), new Exception("The server responded with an empty ad")));
                        return;
                    }
                    int i = 4;
                    if (VastTagAdSource.this.mAdSize == AdSize.SIZE_INTERSTITIAL) {
                        i = 15;
                    }
                    C20576Ad c20576Ad = new C20576Ad(i, str, C20576Ad.AdType.VIDEO);
                    if (listener == null) {
                        return;
                    }
                    c20576Ad.setAdSourceName(VastTagAdSource.this.mConfig.getName());
                    listener.onAdFetched(c20576Ad);
                }
            });
        } else if (listener == null) {
        } else {
            listener.onError(new AuctionError(this.mConfig.getName(), new Exception("VAST tag fetch failed. Invalid config")));
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
        return this.mConfig.getName();
    }
}
