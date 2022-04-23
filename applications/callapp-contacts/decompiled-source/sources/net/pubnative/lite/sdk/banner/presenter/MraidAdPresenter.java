package net.pubnative.lite.sdk.banner.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.models.APIAsset;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.mraid.MRAIDBanner;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener;
import net.pubnative.lite.sdk.mraid.MRAIDView;
import net.pubnative.lite.sdk.mraid.MRAIDViewListener;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.utils.CheckUtils;
import net.pubnative.lite.sdk.utils.UrlHandler;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/banner/presenter/MraidAdPresenter.class */
public class MraidAdPresenter implements MRAIDNativeFeatureListener, MRAIDViewListener, AdPresenter {
    private final Ad mAd;
    private final Context mContext;
    private AdPresenter.ImpressionListener mImpressionListener;
    private boolean mIsDestroyed;
    private AdPresenter.Listener mListener;
    private MRAIDBanner mMRAIDBanner;
    private final String[] mSupportedNativeFeatures = {MRAIDNativeFeature.CALENDAR, MRAIDNativeFeature.INLINE_VIDEO, MRAIDNativeFeature.SMS, MRAIDNativeFeature.STORE_PICTURE, MRAIDNativeFeature.TEL};
    private final UrlHandler mUrlHandlerDelegate;

    public MraidAdPresenter(Context context, Ad ad) {
        this.mContext = context;
        this.mAd = ad;
        this.mUrlHandlerDelegate = new UrlHandler(context);
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void destroy() {
        MRAIDBanner mRAIDBanner = this.mMRAIDBanner;
        if (mRAIDBanner != null) {
            mRAIDBanner.destroy();
        }
        this.mListener = null;
        this.mIsDestroyed = true;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public Ad getAd() {
        return this.mAd;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void load() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "MraidAdPresenter is destroyed")) {
            if (this.mAd.getAssetUrl(APIAsset.HTML_BANNER) != null) {
                this.mMRAIDBanner = new MRAIDBanner(this.mContext, this.mAd.getAssetUrl(APIAsset.HTML_BANNER), "", this.mSupportedNativeFeatures, this, this, this.mAd.getContentInfoContainer(this.mContext));
            } else if (this.mAd.getAssetHtml(APIAsset.HTML_BANNER) != null) {
                this.mMRAIDBanner = new MRAIDBanner(this.mContext, "", this.mAd.getAssetHtml(APIAsset.HTML_BANNER), this.mSupportedNativeFeatures, this, this, this.mAd.getContentInfoContainer(this.mContext));
            }
        }
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureCallTel(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureCreateCalendarEvent(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureOpenBrowser(String str) {
        if (!this.mIsDestroyed) {
            this.mUrlHandlerDelegate.handleUrl(str);
            AdPresenter.Listener listener = this.mListener;
            if (listener != null) {
                listener.onAdClicked(this);
            }
        }
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeaturePlayVideo(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureSendSms(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureStorePicture(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidShowCloseButton() {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidViewClose(MRAIDView mRAIDView) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidViewExpand(MRAIDView mRAIDView) {
        AdPresenter.Listener listener;
        if (!this.mIsDestroyed && (listener = this.mListener) != null) {
            listener.onAdClicked(this);
        }
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidViewLoaded(MRAIDView mRAIDView) {
        AdPresenter.Listener listener;
        if (!this.mIsDestroyed && (listener = this.mListener) != null) {
            listener.onAdLoaded(this, mRAIDView);
            this.mImpressionListener.onImpression();
        }
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public boolean mraidViewResize(MRAIDView mRAIDView, int i, int i2, int i3, int i4) {
        return true;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void setImpressionListener(AdPresenter.ImpressionListener impressionListener) {
        this.mImpressionListener = impressionListener;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void setListener(AdPresenter.Listener listener) {
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void startTracking() {
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void stopTracking() {
        MRAIDBanner mRAIDBanner = this.mMRAIDBanner;
        if (mRAIDBanner != null) {
            mRAIDBanner.stopAdSession();
        }
    }
}
