package com.callapp.contacts.util;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.callapp.contacts.util.ads.MultiSizeAdLoaderCache;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.loaders.AdLoaderFactory;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.mopub.common.util.Views;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/BaseAdTransparentActivity.class */
public abstract class BaseAdTransparentActivity extends BaseTransparentActivity implements AdUtils.AdEvents {
    public static final String EXTRA_AD_LOADED = "AD_LOADED";
    protected FrameLayout adPlaceHolder;
    protected Object currentAd;
    protected BaseMultiSizeAdLoader multiSizeAdLoader;
    private View nativeAdView;
    protected View.OnAttachStateChangeListener onAttachStateChangeListener;

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAd() {
        Object obj = this.currentAd;
        if (obj != null) {
            if (obj instanceof MoPubView) {
                MoPubView moPubView = (MoPubView) obj;
                Views.removeFromParent(moPubView);
                moPubView.setBannerAdListener(null);
                moPubView.destroy();
            } else {
                NativeAd nativeAd = (NativeAd) obj;
                nativeAd.clear(this.nativeAdView);
                nativeAd.destroy();
                this.nativeAdView = null;
            }
            this.currentAd = null;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getAdLayoutResourceId(int i) {
        return AdUtils.getSmallCardAdLayoutResourceId(i);
    }

    protected abstract String getAdUnitIdRemoteConfigName();

    protected abstract String getBiddingRemoteConfigName();

    protected abstract String getExperimentRemoteConfigName();

    protected abstract String getPreferencesRemoteConfigName();

    protected ViewBinder getViewBinder(AdSettings adSettings) {
        return AdUtils.b(adSettings);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initAd() {
        this.adPlaceHolder = (FrameLayout) findViewById(2131361969);
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.callapp.contacts.util.BaseAdTransparentActivity.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (BaseAdTransparentActivity.this.multiSizeAdLoader != null) {
                    BaseAdTransparentActivity.this.multiSizeAdLoader.setAdVisibility(0);
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (BaseAdTransparentActivity.this.multiSizeAdLoader != null) {
                    BaseAdTransparentActivity.this.multiSizeAdLoader.setAdVisibility(8);
                }
            }
        };
        this.onAttachStateChangeListener = onAttachStateChangeListener;
        this.adPlaceHolder.addOnAttachStateChangeListener(onAttachStateChangeListener);
        if (!AdUtils.a()) {
            MultiSizeAdLoaderCache.AdData adData = null;
            if (getIntent().getBooleanExtra(EXTRA_AD_LOADED, false)) {
                MultiSizeAdLoaderCache.Companion companion = MultiSizeAdLoaderCache.f16077a;
                adData = MultiSizeAdLoaderCache.Companion.a(getClass());
            }
            if (adData == null) {
                JSONAdPreferences a2 = AdUtils.a(getPreferencesRemoteConfigName());
                BaseMultiSizeAdLoader a3 = AdLoaderFactory.a(this, this, AdUtils.b(getBiddingRemoteConfigName(), getAdUnitIdRemoteConfigName()), a2 != null ? a2.getRefreshInterval() : 0, a2 != null && a2.isRetryAfterFail(), new NativeAdParamGetter() { // from class: com.callapp.contacts.util.BaseAdTransparentActivity.2
                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    public final AdSettings a(String str) {
                        String experimentRemoteConfigName = BaseAdTransparentActivity.this.getExperimentRemoteConfigName();
                        final BaseAdTransparentActivity baseAdTransparentActivity = BaseAdTransparentActivity.this;
                        return AdUtils.a(str, experimentRemoteConfigName, new AdUtils.NativeAdLayoutGetter() { // from class: com.callapp.contacts.util._$$Lambda$fWrEpz8eOICyubfkpp1MawagR5A
                            @Override // com.callapp.contacts.util.ads.AdUtils.NativeAdLayoutGetter
                            public final int getAdLayoutResourceId(int i) {
                                return BaseAdTransparentActivity.this.getAdLayoutResourceId(i);
                            }
                        });
                    }

                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    public final ViewBinder a(AdSettings adSettings) {
                        return BaseAdTransparentActivity.this.getViewBinder(adSettings);
                    }

                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    public final EnumSet<RequestParameters.NativeAdAsset> b(AdSettings adSettings) {
                        return AdUtils.a(adSettings);
                    }
                }, Activities.b(Activities.getScreenWidth(1)));
                this.multiSizeAdLoader = a3;
                a3.a();
                return;
            }
            this.multiSizeAdLoader = adData.getAdLoader();
            if (adData.getMoPubView() != null) {
                onBannerAdLoaded(adData.getMoPubView(), adData.getDisableRefresh());
            } else if (adData.getNativeAd() != null) {
                onNativeAdLoaded(adData.getNativeAd(), adData.getDisableRefresh());
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onAdClick() {
        AdUtils.AdEvents._CC.$default$onAdClick(this);
    }

    protected void onAdLoaded(final View view) {
        final int color = ThemeUtils.getColor(2131100108);
        final int color2 = ThemeUtils.getColor(2131099686);
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.BaseAdTransparentActivity.5
            @Override // java.lang.Runnable
            public void run() {
                BaseAdTransparentActivity.this.adPlaceHolder.setBackgroundColor(color2);
                View view2 = view;
                if (view2 != null) {
                    view2.setBackgroundColor(color2);
                    BaseAdTransparentActivity.this.adPlaceHolder.removeAllViews();
                    BaseAdTransparentActivity.this.adPlaceHolder.addView(view);
                    View view3 = view;
                    if (!(view3 instanceof MoPubView)) {
                        TextView textView = (TextView) view3.findViewById(2131363360);
                        if (textView != null) {
                            textView.setTextColor(ThemeUtils.getColor(2131100140));
                        }
                        TextView textView2 = (TextView) view.findViewById(2131361973);
                        if (textView2 != null) {
                            textView2.setTextColor(color);
                        }
                        TextView textView3 = (TextView) view.findViewById(2131363359);
                        if (textView3 != null) {
                            textView3.setTextColor(color);
                        }
                    }
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
        AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public void onBannerAdLoaded(final MoPubView moPubView, boolean z) {
        if (this.currentAd != moPubView) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.BaseAdTransparentActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    BaseAdTransparentActivity.this.clearAd();
                    BaseAdTransparentActivity.this.currentAd = moPubView;
                    BaseAdTransparentActivity.this.onAdLoaded(moPubView);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onDestroy();
        BaseMultiSizeAdLoader baseMultiSizeAdLoader = this.multiSizeAdLoader;
        if (baseMultiSizeAdLoader != null) {
            baseMultiSizeAdLoader.b();
            this.multiSizeAdLoader = null;
        }
        FrameLayout frameLayout = this.adPlaceHolder;
        if (!(frameLayout == null || (onAttachStateChangeListener = this.onAttachStateChangeListener) == null)) {
            frameLayout.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        clearAd();
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
        AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
        AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
        AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
        AdUtils.AdEvents._CC.$default$onInterstitialLoaded(this, moPubInterstitial);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
        AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
        AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public void onNativeAdLoaded(final NativeAd nativeAd, boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.BaseAdTransparentActivity.4
            @Override // java.lang.Runnable
            public void run() {
                View createAdView = nativeAd.createAdView(CallAppApplication.get(), null);
                nativeAd.renderAdView(createAdView);
                nativeAd.prepare(createAdView);
                BaseAdTransparentActivity.this.clearAd();
                BaseAdTransparentActivity.this.nativeAdView = createAdView;
                BaseAdTransparentActivity.this.currentAd = nativeAd;
                BaseAdTransparentActivity baseAdTransparentActivity = BaseAdTransparentActivity.this;
                baseAdTransparentActivity.onAdLoaded(baseAdTransparentActivity.nativeAdView);
            }
        });
    }
}
