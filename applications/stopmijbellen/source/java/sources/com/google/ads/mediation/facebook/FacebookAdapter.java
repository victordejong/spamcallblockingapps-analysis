package com.google.ads.mediation.facebook;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC1609Ad;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.google.ads.mediation.facebook.C1661a;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MediationUtils;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter.class */
public final class FacebookAdapter extends FacebookMediationAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    public static final String KEY_ID = "id";
    public static final String KEY_SOCIAL_CONTEXT_ASSET = "social_context";
    private static final int MAX_STAR_RATING = 5;
    private boolean isNativeBanner;
    private AdView mAdView;
    private MediationBannerListener mBannerListener;
    private InterstitialAd mInterstitialAd;
    private MediationInterstitialListener mInterstitialListener;
    private boolean mIsImpressionRecorded;
    private MediaView mMediaView;
    private NativeAd mNativeAd;
    private NativeBannerAd mNativeBannerAd;
    private MediationNativeListener mNativeListener;
    private FrameLayout mWrappedAdView;
    private AtomicBoolean showInterstitialCalled = new AtomicBoolean();
    private AtomicBoolean didInterstitialAdClose = new AtomicBoolean();

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$a.class */
    public class C1647a implements C1661a.AbstractC1662a {

        /* renamed from: a */
        public final /* synthetic */ Context f6167a;

        /* renamed from: b */
        public final /* synthetic */ String f6168b;

        /* renamed from: c */
        public final /* synthetic */ AdSize f6169c;

        /* renamed from: d */
        public final /* synthetic */ MediationAdRequest f6170d;

        /* renamed from: e */
        public final /* synthetic */ com.google.android.gms.ads.AdSize f6171e;

        public C1647a(Context context, String str, AdSize adSize, MediationAdRequest mediationAdRequest, com.google.android.gms.ads.AdSize adSize2) {
            FacebookAdapter.this = r4;
            this.f6167a = context;
            this.f6168b = str;
            this.f6169c = adSize;
            this.f6170d = mediationAdRequest;
            this.f6171e = adSize2;
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: a */
        public void mo4818a() {
            FacebookAdapter.this.mAdView = new AdView(this.f6167a, this.f6168b, this.f6169c);
            FacebookAdapter.this.buildAdRequest(this.f6170d);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f6171e.getWidthInPixels(this.f6167a), -2);
            FacebookAdapter.this.mWrappedAdView = new FrameLayout(this.f6167a);
            FacebookAdapter.this.mAdView.setLayoutParams(layoutParams);
            FacebookAdapter.this.mWrappedAdView.addView(FacebookAdapter.this.mAdView);
            FacebookAdapter.this.mAdView.loadAd(FacebookAdapter.this.mAdView.buildLoadAdConfig().withAdListener(new C1650d(null)).build());
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: b */
        public void mo4817b(AdError adError) {
            if (FacebookAdapter.this.mBannerListener != null) {
                FacebookAdapter.this.mBannerListener.onAdFailedToLoad(FacebookAdapter.this, adError);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$b.class */
    public class C1648b implements C1661a.AbstractC1662a {

        /* renamed from: a */
        public final /* synthetic */ Context f6173a;

        /* renamed from: b */
        public final /* synthetic */ String f6174b;

        /* renamed from: c */
        public final /* synthetic */ MediationAdRequest f6175c;

        public C1648b(Context context, String str, MediationAdRequest mediationAdRequest) {
            FacebookAdapter.this = r4;
            this.f6173a = context;
            this.f6174b = str;
            this.f6175c = mediationAdRequest;
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: a */
        public void mo4818a() {
            FacebookAdapter.this.createAndLoadInterstitial(this.f6173a, this.f6174b, this.f6175c);
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: b */
        public void mo4817b(AdError adError) {
            if (FacebookAdapter.this.mInterstitialListener != null) {
                FacebookAdapter.this.mInterstitialListener.onAdFailedToLoad(FacebookAdapter.this, adError);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$c.class */
    public class C1649c implements C1661a.AbstractC1662a {

        /* renamed from: a */
        public final /* synthetic */ Context f6177a;

        /* renamed from: b */
        public final /* synthetic */ String f6178b;

        /* renamed from: c */
        public final /* synthetic */ NativeMediationAdRequest f6179c;

        /* renamed from: d */
        public final /* synthetic */ Bundle f6180d;

        public C1649c(Context context, String str, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle) {
            FacebookAdapter.this = r4;
            this.f6177a = context;
            this.f6178b = str;
            this.f6179c = nativeMediationAdRequest;
            this.f6180d = bundle;
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: a */
        public void mo4818a() {
            FacebookAdapter.this.createAndLoadNativeAd(this.f6177a, this.f6178b, this.f6179c, this.f6180d);
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: b */
        public void mo4817b(AdError adError) {
            Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
            if (FacebookAdapter.this.mNativeListener != null) {
                FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$d.class */
    public class C1650d implements AdListener {
        public C1650d(C1647a c1647a) {
            FacebookAdapter.this = r4;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mBannerListener.onAdClicked(FacebookAdapter.this);
            FacebookAdapter.this.mBannerListener.onAdOpened(FacebookAdapter.this);
            FacebookAdapter.this.mBannerListener.onAdLeftApplication(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mBannerListener.onAdLoaded(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC1609Ad abstractC1609Ad, com.facebook.ads.AdError adError) {
            AdError adError2 = FacebookMediationAdapter.getAdError(adError);
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            FacebookAdapter.this.mBannerListener.onAdFailedToLoad(FacebookAdapter.this, adError2);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$e */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$e.class */
    public class C1651e extends NativeAd.Image {

        /* renamed from: a */
        public Drawable f6183a;

        /* renamed from: b */
        public Uri f6184b;

        public C1651e() {
        }

        public C1651e(Drawable drawable) {
            this.f6183a = drawable;
        }

        public C1651e(Uri uri) {
            this.f6184b = uri;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return this.f6183a;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return 1.0d;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Uri getUri() {
            return this.f6184b;
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$f */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$f.class */
    public class C1652f implements InterstitialAdExtendedListener {
        public C1652f(C1647a c1647a) {
            FacebookAdapter.this = r4;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mInterstitialListener.onAdClicked(FacebookAdapter.this);
            FacebookAdapter.this.mInterstitialListener.onAdLeftApplication(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mInterstitialListener.onAdLoaded(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC1609Ad abstractC1609Ad, com.facebook.ads.AdError adError) {
            Log.w(FacebookMediationAdapter.TAG, FacebookMediationAdapter.getAdError(adError).getMessage());
            if (!FacebookAdapter.this.showInterstitialCalled.get()) {
                FacebookAdapter.this.mInterstitialListener.onAdFailedToLoad(FacebookAdapter.this, adError.getErrorCode());
                return;
            }
            FacebookAdapter.this.mInterstitialListener.onAdOpened(FacebookAdapter.this);
            FacebookAdapter.this.mInterstitialListener.onAdClosed(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.InterstitialAdExtendedListener
        public void onInterstitialActivityDestroyed() {
            if (!FacebookAdapter.this.didInterstitialAdClose.getAndSet(true)) {
                FacebookAdapter.this.mInterstitialListener.onAdClosed(FacebookAdapter.this);
            }
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(AbstractC1609Ad abstractC1609Ad) {
            if (!FacebookAdapter.this.didInterstitialAdClose.getAndSet(true)) {
                FacebookAdapter.this.mInterstitialListener.onAdClosed(FacebookAdapter.this);
            }
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mInterstitialListener.onAdOpened(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
        }

        @Override // com.facebook.ads.RewardedAdListener
        public void onRewardedAdCompleted() {
        }

        @Override // com.facebook.ads.RewardedAdListener
        public void onRewardedAdServerFailed() {
        }

        @Override // com.facebook.ads.RewardedAdListener
        public void onRewardedAdServerSucceeded() {
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$g */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$g.class */
    public interface AbstractC1653g {
        /* renamed from: a */
        void mo4825a(AdError adError);

        /* renamed from: b */
        void mo4824b();
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$h */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$h.class */
    public class C1654h implements AdListener, NativeAdListener {

        /* renamed from: a */
        public WeakReference<Context> f6186a;

        /* renamed from: b */
        public NativeBannerAd f6187b;

        /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$h$a */
        /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$h$a.class */
        public class C1655a implements AbstractC1653g {

            /* renamed from: a */
            public final /* synthetic */ C1658j f6189a;

            public C1655a(C1658j c1658j) {
                C1654h.this = r4;
                this.f6189a = c1658j;
            }

            @Override // com.google.ads.mediation.facebook.FacebookAdapter.AbstractC1653g
            /* renamed from: a */
            public void mo4825a(AdError adError) {
                Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
                FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError);
            }

            @Override // com.google.ads.mediation.facebook.FacebookAdapter.AbstractC1653g
            /* renamed from: b */
            public void mo4824b() {
                FacebookAdapter.this.mNativeListener.onAdLoaded(FacebookAdapter.this, this.f6189a);
            }
        }

        public C1654h(Context context, NativeBannerAd nativeBannerAd, C1647a c1647a) {
            FacebookAdapter.this = r6;
            this.f6186a = new WeakReference<>(context);
            this.f6187b = nativeBannerAd;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mNativeListener.onAdClicked(FacebookAdapter.this);
            FacebookAdapter.this.mNativeListener.onAdOpened(FacebookAdapter.this);
            FacebookAdapter.this.mNativeListener.onAdLeftApplication(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
            if (abstractC1609Ad != this.f6187b) {
                FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, new AdError(106, "Ad loaded is not a native banner ad.", FacebookMediationAdapter.ERROR_DOMAIN));
                return;
            }
            Context context = this.f6186a.get();
            if (context == null) {
                FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, new AdError(107, "Failed to create ad options view. Context is null.", FacebookMediationAdapter.ERROR_DOMAIN));
                return;
            }
            C1658j c1658j = new C1658j(this.f6187b);
            c1658j.m4823a(context, new C1655a(c1658j));
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC1609Ad abstractC1609Ad, com.facebook.ads.AdError adError) {
            AdError adError2 = FacebookMediationAdapter.getAdError(adError);
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError2);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
            if (FacebookAdapter.this.mIsImpressionRecorded) {
                return;
            }
            FacebookAdapter.this.mNativeListener.onAdImpression(FacebookAdapter.this);
            FacebookAdapter.this.mIsImpressionRecorded = true;
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC1609Ad abstractC1609Ad) {
            String str = FacebookMediationAdapter.TAG;
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$i */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$i.class */
    public class C1656i implements AdListener, NativeAdListener {

        /* renamed from: a */
        public WeakReference<Context> f6191a;

        /* renamed from: b */
        public com.facebook.ads.NativeAd f6192b;

        /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$i$a */
        /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$i$a.class */
        public class C1657a implements AbstractC1653g {

            /* renamed from: a */
            public final /* synthetic */ C1658j f6194a;

            public C1657a(C1658j c1658j) {
                C1656i.this = r4;
                this.f6194a = c1658j;
            }

            @Override // com.google.ads.mediation.facebook.FacebookAdapter.AbstractC1653g
            /* renamed from: a */
            public void mo4825a(AdError adError) {
                Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
                FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError);
            }

            @Override // com.google.ads.mediation.facebook.FacebookAdapter.AbstractC1653g
            /* renamed from: b */
            public void mo4824b() {
                FacebookAdapter.this.mNativeListener.onAdLoaded(FacebookAdapter.this, this.f6194a);
            }
        }

        public C1656i(Context context, com.facebook.ads.NativeAd nativeAd, C1647a c1647a) {
            FacebookAdapter.this = r6;
            this.f6191a = new WeakReference<>(context);
            this.f6192b = nativeAd;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
            FacebookAdapter.this.mNativeListener.onAdClicked(FacebookAdapter.this);
            FacebookAdapter.this.mNativeListener.onAdOpened(FacebookAdapter.this);
            FacebookAdapter.this.mNativeListener.onAdLeftApplication(FacebookAdapter.this);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
            if (abstractC1609Ad != this.f6192b) {
                AdError adError = new AdError(106, "Ad loaded is not a native ad.", FacebookMediationAdapter.ERROR_DOMAIN);
                Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
                FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError);
                return;
            }
            Context context = this.f6191a.get();
            if (context != null) {
                C1658j c1658j = new C1658j(this.f6192b);
                c1658j.m4823a(context, new C1657a(c1658j));
                return;
            }
            AdError adError2 = new AdError(107, "Failed to create ad options view. Context is null", FacebookMediationAdapter.ERROR_DOMAIN);
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError2);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC1609Ad abstractC1609Ad, com.facebook.ads.AdError adError) {
            AdError adError2 = FacebookMediationAdapter.getAdError(adError);
            if (!TextUtils.isEmpty(adError.getErrorMessage())) {
                Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            }
            FacebookAdapter.this.mNativeListener.onAdFailedToLoad(FacebookAdapter.this, adError.getErrorCode());
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
            if (FacebookAdapter.this.mIsImpressionRecorded) {
                return;
            }
            FacebookAdapter.this.mNativeListener.onAdImpression(FacebookAdapter.this);
            FacebookAdapter.this.mIsImpressionRecorded = true;
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC1609Ad abstractC1609Ad) {
            String str = FacebookMediationAdapter.TAG;
        }
    }

    /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$j */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$j.class */
    public class C1658j extends UnifiedNativeAdMapper {

        /* renamed from: a */
        public com.facebook.ads.NativeAd f6196a;

        /* renamed from: b */
        public NativeBannerAd f6197b;

        /* renamed from: com.google.ads.mediation.facebook.FacebookAdapter$j$a */
        /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookAdapter$j$a.class */
        public class C1659a implements MediaViewListener {
            public C1659a() {
                C1658j.this = r4;
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onComplete(MediaView mediaView) {
                if (FacebookAdapter.this.mNativeListener != null) {
                    FacebookAdapter.this.mNativeListener.onVideoEnd(FacebookAdapter.this);
                }
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onEnterFullscreen(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onExitFullscreen(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenBackground(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenForeground(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPause(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPlay(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onVolumeChange(MediaView mediaView, float f) {
            }
        }

        public C1658j(com.facebook.ads.NativeAd nativeAd) {
            FacebookAdapter.this = r4;
            this.f6196a = nativeAd;
        }

        public C1658j(NativeBannerAd nativeBannerAd) {
            FacebookAdapter.this = r4;
            this.f6197b = nativeBannerAd;
        }

        /* renamed from: a */
        public void m4823a(Context context, AbstractC1653g abstractC1653g) {
            boolean z = true;
            if (FacebookAdapter.this.isNativeBanner) {
                NativeBannerAd nativeBannerAd = this.f6197b;
                if (nativeBannerAd.getAdHeadline() == null || nativeBannerAd.getAdBodyText() == null || nativeBannerAd.getAdIcon() == null || nativeBannerAd.getAdCallToAction() == null) {
                    z = false;
                }
                if (!z) {
                    AdError adError = new AdError(108, "Ad from Facebook doesn't have all assets required for the Native Banner Ad format.", FacebookMediationAdapter.ERROR_DOMAIN);
                    Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
                    abstractC1653g.mo4825a(adError);
                    return;
                }
                setHeadline(this.f6197b.getAdHeadline());
                setBody(this.f6197b.getAdBodyText());
                if (this.f6197b.getPreloadedIconViewDrawable() != null) {
                    setIcon(new C1651e(this.f6197b.getPreloadedIconViewDrawable()));
                } else if (this.f6197b.getAdIcon() == null) {
                    setIcon(new C1651e());
                } else {
                    setIcon(new C1651e(Uri.parse(this.f6197b.getAdIcon().getUrl())));
                }
                setCallToAction(this.f6197b.getAdCallToAction());
                setAdvertiser(this.f6197b.getAdvertiserName());
                Bundle bundle = new Bundle();
                bundle.putCharSequence(FacebookAdapter.KEY_ID, this.f6197b.getId());
                bundle.putCharSequence(FacebookAdapter.KEY_SOCIAL_CONTEXT_ASSET, this.f6197b.getAdSocialContext());
                setExtras(bundle);
            } else {
                com.facebook.ads.NativeAd nativeAd = this.f6196a;
                boolean z2 = false;
                if (nativeAd.getAdHeadline() != null) {
                    z2 = false;
                    if (nativeAd.getAdCoverImage() != null) {
                        z2 = false;
                        if (nativeAd.getAdBodyText() != null) {
                            z2 = false;
                            if (nativeAd.getAdIcon() != null) {
                                z2 = false;
                                if (nativeAd.getAdCallToAction() != null) {
                                    z2 = false;
                                    if (FacebookAdapter.this.mMediaView != null) {
                                        z2 = true;
                                    }
                                }
                            }
                        }
                    }
                }
                if (!z2) {
                    AdError adError2 = new AdError(108, "Ad from Facebook doesn't have all assets required for the Native Banner Ad format.", FacebookMediationAdapter.ERROR_DOMAIN);
                    Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
                    abstractC1653g.mo4825a(adError2);
                    return;
                }
                setHeadline(this.f6196a.getAdHeadline());
                ArrayList arrayList = new ArrayList();
                arrayList.add(new C1651e(Uri.parse(this.f6196a.getAdCoverImage().getUrl())));
                setImages(arrayList);
                setBody(this.f6196a.getAdBodyText());
                if (this.f6196a.getPreloadedIconViewDrawable() != null) {
                    setIcon(new C1651e(this.f6196a.getPreloadedIconViewDrawable()));
                } else if (this.f6196a.getAdIcon() == null) {
                    setIcon(new C1651e());
                } else {
                    setIcon(new C1651e(Uri.parse(this.f6196a.getAdIcon().getUrl())));
                }
                setCallToAction(this.f6196a.getAdCallToAction());
                setAdvertiser(this.f6196a.getAdvertiserName());
                FacebookAdapter.this.mMediaView.setListener(new C1659a());
                setMediaView(FacebookAdapter.this.mMediaView);
                setHasVideoContent(true);
                NativeAdBase.Rating adStarRating = this.f6196a.getAdStarRating();
                Double valueOf = adStarRating == null ? null : Double.valueOf((adStarRating.getValue() * 5.0d) / adStarRating.getScale());
                if (valueOf != null) {
                    setStarRating(valueOf);
                }
                Bundle bundle2 = new Bundle();
                bundle2.putCharSequence(FacebookAdapter.KEY_ID, this.f6196a.getId());
                bundle2.putCharSequence(FacebookAdapter.KEY_SOCIAL_CONTEXT_ASSET, this.f6196a.getAdSocialContext());
                setExtras(bundle2);
            }
            NativeAdLayout nativeAdLayout = new NativeAdLayout(context);
            setAdChoicesContent(FacebookAdapter.this.isNativeBanner ? new AdOptionsView(context, this.f6197b, nativeAdLayout) : new AdOptionsView(context, this.f6196a, nativeAdLayout));
            abstractC1653g.mo4824b();
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            ArrayList arrayList = new ArrayList();
            KeyEvent.Callback callback = null;
            for (Map.Entry<String, View> entry : map.entrySet()) {
                arrayList.add(entry.getValue());
                if (entry.getKey().equals("3003")) {
                    callback = (View) entry.getValue();
                }
            }
            if (!FacebookAdapter.this.isNativeBanner) {
                if (callback instanceof ImageView) {
                    this.f6196a.registerViewForInteraction(view, FacebookAdapter.this.mMediaView, (ImageView) callback, arrayList);
                    return;
                }
                Log.w(FacebookMediationAdapter.TAG, "Native icon asset is not of type ImageView.Calling registerViewForInteraction() without a reference to the icon view.");
                this.f6196a.registerViewForInteraction(view, FacebookAdapter.this.mMediaView, arrayList);
            } else if (callback == null) {
                Log.w(FacebookMediationAdapter.TAG, "Missing or invalid native ad icon asset. Facebook impression recording might be impacted for this ad.");
            } else if (!(callback instanceof ImageView)) {
                Log.w(FacebookMediationAdapter.TAG, String.format("Native ad icon asset is rendered with an incompatible class type. Facebook impression recording might be impacted for this ad. Expected: ImageView, actual: %s.", callback.getClass()));
            } else {
                this.f6197b.registerViewForInteraction(view, (ImageView) callback);
            }
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public void untrackView(View view) {
            NativeBannerAd nativeBannerAd;
            if (!FacebookAdapter.this.isNativeBanner || (nativeBannerAd = this.f6197b) == null) {
                com.facebook.ads.NativeAd nativeAd = this.f6196a;
                if (nativeAd != null) {
                    nativeAd.unregisterView();
                }
            } else {
                nativeBannerAd.unregisterView();
            }
            super.untrackView(view);
        }
    }

    public void buildAdRequest(MediationAdRequest mediationAdRequest) {
        if (mediationAdRequest != null) {
            if (mediationAdRequest.taggedForChildDirectedTreatment() == 1) {
                AdSettings.setMixedAudience(true);
            } else if (mediationAdRequest.taggedForChildDirectedTreatment() != 0) {
            } else {
                AdSettings.setMixedAudience(false);
            }
        }
    }

    public void createAndLoadInterstitial(Context context, String str, MediationAdRequest mediationAdRequest) {
        this.mInterstitialAd = new InterstitialAd(context, str);
        buildAdRequest(mediationAdRequest);
        InterstitialAd interstitialAd = this.mInterstitialAd;
        interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(new C1652f(null)).build());
    }

    public void createAndLoadNativeAd(Context context, String str, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle) {
        if (bundle != null) {
            this.isNativeBanner = bundle.getBoolean("native_banner");
        }
        if (this.isNativeBanner) {
            this.mNativeBannerAd = new NativeBannerAd(context, str);
            buildAdRequest(nativeMediationAdRequest);
            NativeBannerAd nativeBannerAd = this.mNativeBannerAd;
            nativeBannerAd.loadAd(nativeBannerAd.buildLoadAdConfig().withAdListener(new C1654h(context, this.mNativeBannerAd, null)).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withPreloadedIconView(-1, -1).build());
            return;
        }
        this.mMediaView = new MediaView(context);
        this.mNativeAd = new com.facebook.ads.NativeAd(context, str);
        buildAdRequest(nativeMediationAdRequest);
        com.facebook.ads.NativeAd nativeAd = this.mNativeAd;
        nativeAd.loadAd(nativeAd.buildLoadAdConfig().withAdListener(new C1656i(context, this.mNativeAd, null)).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withPreloadedIconView(-1, -1).build());
    }

    private AdSize getAdSize(Context context, com.google.android.gms.ads.AdSize adSize) {
        int width = adSize.getWidth();
        int i = width;
        if (width < 0) {
            i = Math.round(adSize.getWidthInPixels(context) / context.getResources().getDisplayMetrics().density);
        }
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(0, new com.google.android.gms.ads.AdSize(i, 50));
        arrayList.add(1, new com.google.android.gms.ads.AdSize(i, 90));
        arrayList.add(2, new com.google.android.gms.ads.AdSize(i, 250));
        String str = FacebookMediationAdapter.TAG;
        String valueOf = String.valueOf(arrayList.toString());
        Log.i(str, valueOf.length() != 0 ? "Potential ad sizes: ".concat(valueOf) : new String("Potential ad sizes: "));
        com.google.android.gms.ads.AdSize findClosestSize = MediationUtils.findClosestSize(context, adSize, arrayList);
        if (findClosestSize == null) {
            return null;
        }
        String valueOf2 = String.valueOf(findClosestSize.toString());
        Log.i(str, valueOf2.length() != 0 ? "Found closest ad size: ".concat(valueOf2) : new String("Found closest ad size: "));
        int height = findClosestSize.getHeight();
        AdSize adSize2 = AdSize.BANNER_HEIGHT_50;
        if (height == adSize2.getHeight()) {
            return adSize2;
        }
        AdSize adSize3 = AdSize.BANNER_HEIGHT_90;
        if (height == adSize3.getHeight()) {
            return adSize3;
        }
        AdSize adSize4 = AdSize.RECTANGLE_HEIGHT_250;
        if (height != adSize4.getHeight()) {
            return null;
        }
        return adSize4;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.mWrappedAdView;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.destroy();
        }
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
        }
        com.facebook.ads.NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            nativeAd.unregisterView();
            this.mNativeAd.destroy();
        }
        MediaView mediaView = this.mMediaView;
        if (mediaView != null) {
            mediaView.destroy();
        }
        NativeBannerAd nativeBannerAd = this.mNativeBannerAd;
        if (nativeBannerAd != null) {
            nativeBannerAd.unregisterView();
            this.mNativeBannerAd.destroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, com.google.android.gms.ads.AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.mBannerListener = mediationBannerListener;
        String placementID = FacebookMediationAdapter.getPlacementID(bundle);
        if (TextUtils.isEmpty(placementID)) {
            AdError adError = new AdError(101, "Failed to request ad. PlacementID is null or empty.", FacebookMediationAdapter.ERROR_DOMAIN);
            Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
            this.mBannerListener.onAdFailedToLoad(this, adError);
            return;
        }
        AdSize adSize2 = getAdSize(context, adSize);
        if (adSize2 != null) {
            C1661a.m4822a().m4821b(context, placementID, new C1647a(context, placementID, adSize2, mediationAdRequest, adSize));
            return;
        }
        AdError adError2 = new AdError(102, "There is no matching Facebook ad size for Google ad size.", FacebookMediationAdapter.ERROR_DOMAIN);
        Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
        this.mBannerListener.onAdFailedToLoad(this, adError2);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.mInterstitialListener = mediationInterstitialListener;
        String placementID = FacebookMediationAdapter.getPlacementID(bundle);
        if (!TextUtils.isEmpty(placementID)) {
            C1661a.m4822a().m4821b(context, placementID, new C1648b(context, placementID, mediationAdRequest));
            return;
        }
        this.mInterstitialListener.onAdFailedToLoad(this, new AdError(101, "Failed to request ad. PlacementID is null or empty.", FacebookMediationAdapter.ERROR_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.mNativeListener = mediationNativeListener;
        String placementID = FacebookMediationAdapter.getPlacementID(bundle);
        if (TextUtils.isEmpty(placementID)) {
            AdError adError = new AdError(101, "Failed to request ad. PlacementID is null or empty.", FacebookMediationAdapter.ERROR_DOMAIN);
            Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
            this.mNativeListener.onAdFailedToLoad(this, adError);
        } else if (nativeMediationAdRequest.isUnifiedNativeAdRequested()) {
            C1661a.m4822a().m4821b(context, placementID, new C1649c(context, placementID, nativeMediationAdRequest, bundle2));
        } else {
            AdError adError2 = new AdError(105, "Unified Native Ads should be requested.", FacebookMediationAdapter.ERROR_DOMAIN);
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            this.mNativeListener.onAdFailedToLoad(this, adError2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.showInterstitialCalled.set(true);
        if (!this.mInterstitialAd.show()) {
            Log.w(FacebookMediationAdapter.TAG, new AdError(110, "Failed to present interstitial ad.", FacebookMediationAdapter.ERROR_DOMAIN).getMessage());
            MediationInterstitialListener mediationInterstitialListener = this.mInterstitialListener;
            if (mediationInterstitialListener == null) {
                return;
            }
            mediationInterstitialListener.onAdOpened(this);
            this.mInterstitialListener.onAdClosed(this);
        }
    }
}
