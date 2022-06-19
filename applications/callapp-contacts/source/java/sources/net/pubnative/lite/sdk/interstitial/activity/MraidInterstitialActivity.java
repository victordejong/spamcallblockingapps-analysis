package net.pubnative.lite.sdk.interstitial.activity;

import android.os.Bundle;
import android.view.View;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver;
import net.pubnative.lite.sdk.models.APIAsset;
import net.pubnative.lite.sdk.mraid.MRAIDBanner;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener;
import net.pubnative.lite.sdk.mraid.MRAIDView;
import net.pubnative.lite.sdk.mraid.MRAIDViewCloseLayoutListener;
import net.pubnative.lite.sdk.mraid.MRAIDViewListener;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/activity/MraidInterstitialActivity.class */
public class MraidInterstitialActivity extends HyBidInterstitialActivity implements MRAIDNativeFeatureListener, MRAIDViewCloseLayoutListener, MRAIDViewListener {
    private int mSkipOffset;
    private String[] mSupportedNativeFeatures = {MRAIDNativeFeature.CALENDAR, MRAIDNativeFeature.INLINE_VIDEO, MRAIDNativeFeature.SMS, MRAIDNativeFeature.STORE_PICTURE, MRAIDNativeFeature.TEL};
    private MRAIDBanner mView;

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity
    public View getAdView() {
        MRAIDBanner mRAIDBanner = null;
        MRAIDBanner mRAIDBanner2 = null;
        if (getAd() != null) {
            this.mSkipOffset = getIntent().getIntExtra(HyBidInterstitialActivity.EXTRA_SKIP_OFFSET, 0);
            if (getAd().getAssetUrl(APIAsset.HTML_BANNER) != null) {
                mRAIDBanner2 = new MRAIDBanner(this, getAd().getAssetUrl(APIAsset.HTML_BANNER), "", this.mSupportedNativeFeatures, this, this, getAd().getContentInfoContainer(this));
            } else if (getAd().getAssetHtml(APIAsset.HTML_BANNER) != null) {
                mRAIDBanner2 = new MRAIDBanner(this, "", getAd().getAssetHtml(APIAsset.HTML_BANNER), this.mSupportedNativeFeatures, this, this, getAd().getContentInfoContainer(this));
            }
            if (mRAIDBanner2 != null) {
                mRAIDBanner2.setCloseLayoutListener(this);
            }
            int i = this.mSkipOffset;
            mRAIDBanner = mRAIDBanner2;
            if (i > 0) {
                mRAIDBanner2.setSkipOffset(Integer.valueOf(i));
                mRAIDBanner = mRAIDBanner2;
            }
        }
        this.mView = mRAIDBanner;
        return mRAIDBanner;
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureCallTel(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureCreateCalendarEvent(String str) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDNativeFeatureListener
    public void mraidNativeFeatureOpenBrowser(String str) {
        getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.CLICK);
        getUrlHandler().handleUrl(str);
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
        showInterstitialCloseButton();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidViewClose(MRAIDView mRAIDView) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidViewExpand(MRAIDView mRAIDView) {
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public void mraidViewLoaded(MRAIDView mRAIDView) {
        getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.SHOW);
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewListener
    public boolean mraidViewResize(MRAIDView mRAIDView, int i, int i2, int i3, int i4) {
        return true;
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewCloseLayoutListener
    public void onClose() {
        dismiss();
    }

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hideInterstitialCloseButton();
    }

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity, android.app.Activity
    public void onDestroy() {
        MRAIDBanner mRAIDBanner = this.mView;
        if (mRAIDBanner != null) {
            mRAIDBanner.stopAdSession();
            this.mView.destroy();
        }
        super.onDestroy();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewCloseLayoutListener
    public void onRemoveCloseLayout() {
        hideInterstitialCloseButton();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDViewCloseLayoutListener
    public void onShowCloseLayout() {
        showInterstitialCloseButton();
    }

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity
    protected boolean shouldShowContentInfo() {
        return false;
    }
}
