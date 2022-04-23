package net.pubnative.lite.sdk.request;

import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.IntegrationType;
import net.pubnative.lite.sdk.models.NativeAd;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/request/HyBidNativeAdRequest.class */
public class HyBidNativeAdRequest implements RequestManager.RequestListener {
    private static String mScreenIabCategory;
    private static String mScreenKeywords;
    private static String mUserIntent;
    private RequestListener mListener;
    private RequestManager mRequestManager;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener.class */
    public interface RequestListener {
        void onRequestFail(Throwable th);

        void onRequestSuccess(NativeAd nativeAd);
    }

    public HyBidNativeAdRequest() {
        NativeRequestManager nativeRequestManager = new NativeRequestManager();
        this.mRequestManager = nativeRequestManager;
        nativeRequestManager.setIntegrationType(IntegrationType.STANDALONE);
        this.mRequestManager.setRequestListener(this);
    }

    private void createNativeAd(Ad ad) {
        RequestListener requestListener = this.mListener;
        if (requestListener != null) {
            requestListener.onRequestSuccess(new NativeAd(ad));
        }
    }

    public void load(String str, RequestListener requestListener) {
        this.mListener = requestListener;
        this.mRequestManager.setZoneId(str);
        this.mRequestManager.requestAd();
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestFail(Throwable th) {
        RequestListener requestListener = this.mListener;
        if (requestListener != null) {
            requestListener.onRequestFail(th);
        }
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestSuccess(Ad ad) {
        createNativeAd(ad);
    }

    public void setMediation(boolean z) {
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.setIntegrationType(z ? IntegrationType.MEDIATION : IntegrationType.STANDALONE);
        }
    }

    public void setScreenIabCategory(String str) {
        mScreenIabCategory = str;
    }

    public void setScreenKeywords(String str) {
        mScreenKeywords = str;
    }

    public void setUserIntent(String str) {
        mUserIntent = str;
    }
}
