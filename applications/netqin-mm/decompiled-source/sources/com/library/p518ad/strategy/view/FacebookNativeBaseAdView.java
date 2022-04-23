package com.library.p518ad.strategy.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.library.p518ad.core.AbstractAdView;
import java.util.ArrayList;
/* renamed from: com.library.ad.strategy.view.FacebookNativeBaseAdView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/FacebookNativeBaseAdView.class */
public abstract class FacebookNativeBaseAdView extends AbstractAdView<NativeAd> implements AdListener, NativeAdListener {
    public View adView;
    public ArrayList<View> clickableViews;
    public MediaView mAdIconView;
    public NativeAd mNativeAd;
    public MediaView mNativeAdMedia;

    public FacebookNativeBaseAdView(Context context) {
        super(context, "FB");
    }

    public FacebookNativeBaseAdView(Context context, AttributeSet attributeSet) {
        super(context, "FB", attributeSet);
    }

    public int adChoicesId() {
        return getIdByStr("ad_native_adChoices_container");
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public void clearAdData() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            nativeAd.unregisterView();
            this.mNativeAd.destroy();
            this.mNativeAd = null;
        }
    }

    public int nativeAdLayout() {
        return getIdByStr("native_ad_container");
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC7079Ad ad) {
        onAdClick();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC7079Ad ad) {
    }

    public void onBindData(NativeAd nativeAd) {
        this.mNativeAd = nativeAd;
        if (nativeAd == null) {
            setVisibility(8);
            return;
        }
        this.adView = View.inflate(getContext(), getLayoutId(), this);
        LinearLayout linearLayout = (LinearLayout) getView(adChoicesId());
        NativeAdLayout nativeAdLayout = (NativeAdLayout) getView(nativeAdLayout());
        if (!(linearLayout == null || nativeAdLayout == null)) {
            AdOptionsView adOptionsView = new AdOptionsView(this.mContext, nativeAd, nativeAdLayout);
            linearLayout.removeAllViews();
            linearLayout.addView(adOptionsView, 0);
        }
        TextView textView = (TextView) getView(titleId());
        TextView textView2 = (TextView) getView(bodyId());
        TextView textView3 = (TextView) getView(buttonId());
        this.clickableViews = new ArrayList<>();
        this.mNativeAdMedia = (MediaView) getView(imageContainerId());
        if (textView != null) {
            textView.setText(this.mNativeAd.getAdHeadline());
            NativeAdBase.NativeComponentTag.tagView(textView, NativeAdBase.NativeComponentTag.AD_TITLE);
        }
        if (textView2 != null) {
            textView2.setText(this.mNativeAd.getAdBodyText());
            NativeAdBase.NativeComponentTag.tagView(textView2, NativeAdBase.NativeComponentTag.AD_BODY);
        }
        MediaView mediaView = (MediaView) getView(iconId(), this);
        this.mAdIconView = mediaView;
        if (mediaView != null) {
            this.clickableViews.add(mediaView);
            NativeAdBase.NativeComponentTag.tagView(this.mAdIconView, NativeAdBase.NativeComponentTag.AD_ICON);
        }
        MediaView mediaView2 = this.mNativeAdMedia;
        if (mediaView2 != null) {
            this.clickableViews.add(mediaView2);
        }
        if (textView3 != null) {
            textView3.setText(this.mNativeAd.getAdCallToAction());
            this.clickableViews.add(textView3);
            NativeAdBase.NativeComponentTag.tagView(textView3, NativeAdBase.NativeComponentTag.AD_CALL_TO_ACTION);
        }
        this.mNativeAd.setAdListener(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC7079Ad ad, AdError adError) {
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC7079Ad ad) {
    }

    @Override // com.facebook.ads.NativeAdListener
    public void onMediaDownloaded(AbstractC7079Ad ad) {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public void onRegisterViewForInteraction() {
        MediaView mediaView = this.mNativeAdMedia;
        if (mediaView != null) {
            this.mNativeAd.registerViewForInteraction(this.adView, mediaView, this.mAdIconView, this.clickableViews);
        } else {
            this.mNativeAd.registerViewForInteraction(this.adView, this.mAdIconView, this.clickableViews);
        }
    }
}
