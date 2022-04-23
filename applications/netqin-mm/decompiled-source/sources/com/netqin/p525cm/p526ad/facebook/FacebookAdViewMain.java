package com.netqin.p525cm.p526ad.facebook;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AdIconView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.library.p518ad.strategy.view.FacebookNativeBaseAdView;
import java.util.ArrayList;
/* renamed from: com.netqin.cm.ad.facebook.FacebookAdViewMain */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/facebook/FacebookAdViewMain.class */
public class FacebookAdViewMain extends FacebookNativeBaseAdView {
    public View adView;
    public ArrayList<View> clickableViews;
    public AdIconView mAdIconView;
    public MediaView mNativeAdMedia;

    public FacebookAdViewMain(Context context) {
        super(context);
    }

    @Override // com.library.p518ad.strategy.view.FacebookNativeBaseAdView
    public int adChoicesId() {
        return getIdByStr("ad_choices_container");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int bodyId() {
        return getIdByStr("ads_nativeAdBody");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int buttonId() {
        return getIdByStr("native_ad_call_to_action");
    }

    @Override // com.library.p518ad.strategy.view.FacebookNativeBaseAdView, p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public void clearAdData() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            nativeAd.unregisterView();
            this.mNativeAd.destroy();
            this.mNativeAd = null;
        }
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int iconId() {
        return getIdByStr("native_icon_view");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int imageContainerId() {
        return getIdByStr("ads_nativeAdMedia");
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public int[] layoutIds() {
        return new int[]{2131427411};
    }

    @Override // com.library.p518ad.strategy.view.FacebookNativeBaseAdView
    public void onBindData(NativeAd nativeAd) {
        this.mNativeAd = nativeAd;
        if (nativeAd == null) {
            setVisibility(8);
            return;
        }
        this.adView = View.inflate(getContext(), getLayoutId(), this);
        RelativeLayout relativeLayout = (RelativeLayout) getView(adChoicesId());
        NativeAdLayout nativeAdLayout = (NativeAdLayout) getView(nativeAdLayout());
        int i = 0;
        if (!(relativeLayout == null || nativeAdLayout == null)) {
            AdOptionsView adOptionsView = new AdOptionsView(this.mContext, nativeAd, nativeAdLayout);
            relativeLayout.removeAllViews();
            relativeLayout.addView(adOptionsView, 0);
        }
        TextView textView = (TextView) getView(titleId());
        TextView textView2 = (TextView) getView(bodyId());
        TextView textView3 = (TextView) getView(buttonId());
        TextView textView4 = (TextView) getView(getIdByStr("native_ad_sponsored_label"));
        TextView textView5 = (TextView) getView(getIdByStr("native_ad_social_context"));
        if (textView5 != null) {
            textView5.setText(nativeAd.getAdSocialContext());
        }
        if (textView4 != null) {
            textView4.setText(nativeAd.getSponsoredTranslation());
        }
        this.clickableViews = new ArrayList<>();
        if (textView != null) {
            textView.setText(this.mNativeAd.getAdvertiserName());
            NativeAdBase.NativeComponentTag.tagView(textView, NativeAdBase.NativeComponentTag.AD_TITLE);
        }
        if (textView2 != null) {
            textView2.setText(this.mNativeAd.getAdBodyText());
            NativeAdBase.NativeComponentTag.tagView(textView2, NativeAdBase.NativeComponentTag.AD_BODY);
        }
        AdIconView adIconView = (AdIconView) getView(iconId(), this);
        this.mAdIconView = adIconView;
        if (adIconView != null) {
            this.clickableViews.add(adIconView);
            NativeAdBase.NativeComponentTag.tagView(this.mAdIconView, NativeAdBase.NativeComponentTag.AD_ICON);
        }
        MediaView mediaView = this.mNativeAdMedia;
        if (mediaView != null) {
            this.clickableViews.add(mediaView);
        }
        if (textView3 != null) {
            if (!this.mNativeAd.hasCallToAction()) {
                i = 4;
            }
            textView3.setVisibility(i);
            textView3.setText(this.mNativeAd.getAdCallToAction());
            this.clickableViews.add(textView3);
            NativeAdBase.NativeComponentTag.tagView(textView3, NativeAdBase.NativeComponentTag.AD_CALL_TO_ACTION);
        }
        this.mNativeAd.setAdListener(this);
    }

    @Override // com.library.p518ad.strategy.view.FacebookNativeBaseAdView, p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public void onRegisterViewForInteraction() {
        MediaView mediaView = this.mNativeAdMedia;
        if (mediaView != null) {
            this.mNativeAd.registerViewForInteraction(this.adView, mediaView, this.mAdIconView, this.clickableViews);
        } else {
            this.mNativeAd.registerViewForInteraction(this.adView, this.mAdIconView, this.clickableViews);
        }
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int titleId() {
        return getIdByStr("native_ad_title");
    }
}
