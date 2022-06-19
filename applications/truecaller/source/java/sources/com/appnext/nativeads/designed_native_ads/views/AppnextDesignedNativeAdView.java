package com.appnext.nativeads.designed_native_ads.views;

import android.content.Context;
import android.util.AttributeSet;
import com.appnext.nativeads.designed_native_ads.DesignNativeAdsRequest;
import com.appnext.nativeads.designed_native_ads.interfaces.AppnextDesignedNativeAdViewCallbacks;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/AppnextDesignedNativeAdView.class */
public class AppnextDesignedNativeAdView extends C0655a {
    public AppnextDesignedNativeAdView(Context context) {
        this(context, null, 0);
    }

    public AppnextDesignedNativeAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppnextDesignedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AppnextDesignedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void load(String str, int i, AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
        super.load(str, null, i, appnextDesignedNativeAdViewCallbacks);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void load(String str, DesignNativeAdsRequest designNativeAdsRequest, int i, AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
        super.load(str, designNativeAdsRequest, i, appnextDesignedNativeAdViewCallbacks);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void load(String str, DesignNativeAdsRequest designNativeAdsRequest, AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
        super.load(str, designNativeAdsRequest, appnextDesignedNativeAdViewCallbacks);
    }

    public void load(String str, AppnextDesignedNativeAdViewCallbacks appnextDesignedNativeAdViewCallbacks) {
        super.load(str, (DesignNativeAdsRequest) null, appnextDesignedNativeAdViewCallbacks);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void setAppTitleColor(int i) {
        super.setAppTitleColor(i);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a, android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void setLocalDirection(boolean z) {
        super.setLocalDirection(z);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void setPresentAppTitles(boolean z) {
        super.setPresentAppTitles(z);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void setTitleColor(int i) {
        super.setTitleColor(i);
    }

    @Override // com.appnext.nativeads.designed_native_ads.views.C0655a
    public void setTransparency(int i) {
        super.setTransparency(i);
    }
}
