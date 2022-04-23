package net.pubnative.lite.sdk.interstitial;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import net.pubnative.lite.sdk.AdCache;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.api.InterstitialRequestManager;
import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenterFactory;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.IntegrationType;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.MarkupUtils;
import net.pubnative.lite.sdk.vpaid.VideoAdCache;
import net.pubnative.lite.sdk.vpaid.VideoAdCacheItem;
import net.pubnative.lite.sdk.vpaid.VideoAdProcessor;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
import net.pubnative.lite.sdk.vpaid.vast.VastUrlUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialAd.class */
public class HyBidInterstitialAd implements RequestManager.RequestListener, InterstitialPresenter.Listener {
    private static final String TAG = "HyBidInterstitialAd";
    private static String mScreenIabCategory;
    private static String mScreenKeywords;
    private static String mUserIntent;
    private Ad mAd;
    private final AdCache mAdCache;
    private final Context mContext;
    private boolean mIsDestroyed;
    private final Listener mListener;
    private InterstitialPresenter mPresenter;
    private boolean mReady;
    private RequestManager mRequestManager;
    private int mSkipOffset;
    private final VideoAdCache mVideoCache;
    private final String mZoneId;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialAd$Listener.class */
    public interface Listener {
        void onInterstitialClick();

        void onInterstitialDismissed();

        void onInterstitialImpression();

        void onInterstitialLoadFailed(Throwable th);

        void onInterstitialLoaded();
    }

    public HyBidInterstitialAd(Activity activity, String str, Listener listener) {
        this((Context) activity, str, listener);
    }

    public HyBidInterstitialAd(Activity activity, Listener listener) {
        this((Context) activity, "", listener);
    }

    public HyBidInterstitialAd(Context context, String str, Listener listener) {
        this.mReady = false;
        this.mSkipOffset = 0;
        this.mIsDestroyed = false;
        this.mRequestManager = new InterstitialRequestManager();
        this.mContext = context;
        this.mZoneId = str;
        this.mListener = listener;
        this.mAdCache = HyBid.getAdCache();
        this.mVideoCache = HyBid.getVideoAdCache();
        this.mSkipOffset = HyBid.getInterstitialSkipOffset().intValue();
        this.mRequestManager.setIntegrationType(IntegrationType.STANDALONE);
    }

    private void cleanup() {
        this.mReady = false;
        InterstitialPresenter interstitialPresenter = this.mPresenter;
        if (interstitialPresenter != null) {
            interstitialPresenter.destroy();
            this.mPresenter = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processAdValue(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.interstitial.HyBidInterstitialAd.processAdValue(java.lang.String):void");
    }

    private void renderAd() {
        InterstitialPresenter createInterstitialPresenter = new InterstitialPresenterFactory(this.mContext, this.mZoneId).createInterstitialPresenter(this.mAd, this.mSkipOffset, this);
        this.mPresenter = createInterstitialPresenter;
        if (createInterstitialPresenter != null) {
            createInterstitialPresenter.load();
        } else {
            invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
        }
    }

    public void destroy() {
        cleanup();
        this.mIsDestroyed = true;
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.destroy();
            this.mRequestManager = null;
        }
    }

    public Integer getBidPoints() {
        Ad ad = this.mAd;
        return Integer.valueOf(ad != null ? ad.getECPM().intValue() : 0);
    }

    public String getCreativeId() {
        Ad ad = this.mAd;
        if (ad != null) {
            return ad.getCreativeId();
        }
        return null;
    }

    public String getImpressionId() {
        Ad ad = this.mAd;
        if (ad != null) {
            return ad.getImpressionId();
        }
        return null;
    }

    protected void invokeOnClick() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onInterstitialClick();
        }
    }

    protected void invokeOnDismissed() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onInterstitialDismissed();
        }
    }

    protected void invokeOnImpression() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onInterstitialImpression();
        }
    }

    protected void invokeOnLoadFailed(Exception exc) {
        Logger.e(TAG, exc.getMessage());
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onInterstitialLoadFailed(exc);
        }
    }

    protected void invokeOnLoadFinished() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onInterstitialLoaded();
        }
    }

    public boolean isReady() {
        return this.mReady;
    }

    public void load() {
        if (TextUtils.isEmpty(this.mZoneId)) {
            invokeOnLoadFailed(new Exception("Invalid zone id provided"));
            return;
        }
        cleanup();
        this.mRequestManager.setZoneId(this.mZoneId);
        this.mRequestManager.setRequestListener(this);
        this.mRequestManager.requestAd();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialClicked(InterstitialPresenter interstitialPresenter) {
        invokeOnClick();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialDismissed(InterstitialPresenter interstitialPresenter) {
        invokeOnDismissed();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialError(InterstitialPresenter interstitialPresenter) {
        invokeOnLoadFailed(new Exception("An error has occurred while rendering the interstitial"));
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialLoaded(InterstitialPresenter interstitialPresenter) {
        this.mReady = true;
        invokeOnLoadFinished();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialShown(InterstitialPresenter interstitialPresenter) {
        invokeOnImpression();
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestFail(Throwable th) {
        invokeOnLoadFailed(new Exception(th));
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestSuccess(Ad ad) {
        if (ad == null) {
            invokeOnLoadFailed(new Exception("Server returned null ad"));
            return;
        }
        this.mAd = ad;
        renderAd();
    }

    public void prepareAd(String str) {
        if (!TextUtils.isEmpty(str)) {
            processAdValue(str);
        } else {
            invokeOnLoadFailed(new Exception("The server has returned an invalid ad asset"));
        }
    }

    public void prepareAd(Ad ad) {
        if (ad != null) {
            this.mAd = ad;
            InterstitialPresenter createInterstitialPresenter = new InterstitialPresenterFactory(this.mContext, this.mZoneId).createInterstitialPresenter(this.mAd, this);
            this.mPresenter = createInterstitialPresenter;
            if (createInterstitialPresenter != null) {
                createInterstitialPresenter.load();
            } else {
                invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
            }
        } else {
            invokeOnLoadFailed(new Exception("The provided ad is invalid."));
        }
    }

    public void prepareCustomMarkup(final String str) {
        if (TextUtils.isEmpty(str)) {
            invokeOnLoadFailed(new Exception("The server has returned an invalid ad asset"));
        } else if (MarkupUtils.isVastXml(str)) {
            final Ad.AdType adType = Ad.AdType.VIDEO;
            new VideoAdProcessor().process(this.mContext, str, null, new VideoAdProcessor.Listener() { // from class: net.pubnative.lite.sdk.interstitial.HyBidInterstitialAd.2
                @Override // net.pubnative.lite.sdk.vpaid.VideoAdProcessor.Listener
                public void onCacheError(Throwable th) {
                    if (!HyBidInterstitialAd.this.mIsDestroyed) {
                        Logger.w(HyBidInterstitialAd.TAG, "onCacheError", th);
                        HyBidInterstitialAd.this.invokeOnLoadFailed(new Exception(th));
                    }
                }

                @Override // net.pubnative.lite.sdk.vpaid.VideoAdProcessor.Listener
                public void onCacheSuccess(AdParams adParams, String str2, String str3) {
                    if (!HyBidInterstitialAd.this.mIsDestroyed) {
                        VideoAdCacheItem videoAdCacheItem = new VideoAdCacheItem(adParams, str2, str3);
                        HyBidInterstitialAd.this.mAd = new Ad(r5, str, adType);
                        HyBidInterstitialAd.this.mAdCache.put(r8, HyBidInterstitialAd.this.mAd);
                        HyBidInterstitialAd.this.mVideoCache.put(r8, videoAdCacheItem);
                        HyBidInterstitialAd.this.mPresenter = new InterstitialPresenterFactory(HyBidInterstitialAd.this.mContext, r8).createInterstitialPresenter(HyBidInterstitialAd.this.mAd, HyBidInterstitialAd.this);
                        if (HyBidInterstitialAd.this.mPresenter != null) {
                            HyBidInterstitialAd.this.mPresenter.load();
                        } else {
                            HyBidInterstitialAd.this.invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
                        }
                    }
                }
            });
        } else {
            Ad ad = new Ad(21, str, Ad.AdType.HTML);
            this.mAd = ad;
            this.mAdCache.put("3", ad);
            InterstitialPresenter createInterstitialPresenter = new InterstitialPresenterFactory(this.mContext, "3").createInterstitialPresenter(this.mAd, this);
            this.mPresenter = createInterstitialPresenter;
            if (createInterstitialPresenter != null) {
                createInterstitialPresenter.load();
            } else {
                invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
            }
        }
    }

    public void prepareVideoTag(String str) {
        PNHttpClient.makeRequest(this.mContext, VastUrlUtils.formatURL(str), null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.interstitial.HyBidInterstitialAd.3
            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onFailure(Throwable th) {
                String str2 = HyBidInterstitialAd.TAG;
                Logger.e(str2, "Request failed: " + th.toString());
                HyBidInterstitialAd.this.invokeOnLoadFailed(new Exception("The server has returned an invalid ad asset"));
            }

            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onSuccess(String str2) {
                if (!TextUtils.isEmpty(str2)) {
                    HyBidInterstitialAd.this.prepareCustomMarkup(str2);
                }
            }
        });
    }

    public void setMediation(boolean z) {
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.setIntegrationType(z ? IntegrationType.MEDIATION : IntegrationType.STANDALONE);
        }
    }

    public void setSkipOffset(int i) {
        if (i >= 0) {
            this.mSkipOffset = i;
        }
    }

    public boolean show() {
        InterstitialPresenter interstitialPresenter = this.mPresenter;
        if (interstitialPresenter == null || !this.mReady) {
            Logger.e(TAG, "Can't display ad. Interstitial not ready.");
            return false;
        }
        interstitialPresenter.show();
        return true;
    }
}
