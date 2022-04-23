package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAdViewHolder;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emk;
import com.google.android.gms.internal.ads.yq;
import com.google.android.gms.internal.ads.za;
import com.google.android.gms.internal.ads.zzbhf;
import java.util.Date;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter.class */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, OnImmersiveModeUpdatedListener, zza, MediationRewardedVideoAdAdapter, zzbhf {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private AdView zzmo;
    private InterstitialAd zzmp;
    private AdLoader zzmq;
    private Context zzmr;
    private InterstitialAd zzms;
    private MediationRewardedVideoAdListener zzmt;
    private final RewardedVideoAdListener zzmu = new com.google.ads.mediation.f(this);

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$a.class */
    static final class a extends NativeAppInstallAdMapper {

        /* renamed from: a  reason: collision with root package name */
        private final NativeAppInstallAd f20266a;

        public a(NativeAppInstallAd nativeAppInstallAd) {
            this.f20266a = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.getHeadline().toString());
            setImages(nativeAppInstallAd.getImages());
            setBody(nativeAppInstallAd.getBody().toString());
            setIcon(nativeAppInstallAd.getIcon());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            if (nativeAppInstallAd.getStarRating() != null) {
                setStarRating(nativeAppInstallAd.getStarRating().doubleValue());
            }
            if (nativeAppInstallAd.getStore() != null) {
                setStore(nativeAppInstallAd.getStore().toString());
            }
            if (nativeAppInstallAd.getPrice() != null) {
                setPrice(nativeAppInstallAd.getPrice().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeAppInstallAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f20266a);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbol.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f20266a);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$b.class */
    static final class b extends UnifiedNativeAdMapper {

        /* renamed from: a  reason: collision with root package name */
        private final UnifiedNativeAd f20267a;

        public b(UnifiedNativeAd unifiedNativeAd) {
            this.f20267a = unifiedNativeAd;
            setHeadline(unifiedNativeAd.getHeadline());
            setImages(unifiedNativeAd.getImages());
            setBody(unifiedNativeAd.getBody());
            setIcon(unifiedNativeAd.getIcon());
            setCallToAction(unifiedNativeAd.getCallToAction());
            setAdvertiser(unifiedNativeAd.getAdvertiser());
            setStarRating(unifiedNativeAd.getStarRating());
            setStore(unifiedNativeAd.getStore());
            setPrice(unifiedNativeAd.getPrice());
            zzm(unifiedNativeAd.zzka());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(unifiedNativeAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public final void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof UnifiedNativeAdView) {
                ((UnifiedNativeAdView) view).setNativeAd(this.f20267a);
                return;
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbol.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f20267a);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$c.class */
    static final class c extends NativeContentAdMapper {

        /* renamed from: a  reason: collision with root package name */
        private final NativeContentAd f20268a;

        public c(NativeContentAd nativeContentAd) {
            this.f20268a = nativeContentAd;
            setHeadline(nativeContentAd.getHeadline().toString());
            setImages(nativeContentAd.getImages());
            setBody(nativeContentAd.getBody().toString());
            if (nativeContentAd.getLogo() != null) {
                setLogo(nativeContentAd.getLogo());
            }
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeContentAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f20268a);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbol.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f20268a);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$d.class */
    static final class d extends AdListener implements eir {

        /* renamed from: a  reason: collision with root package name */
        private final AbstractAdViewAdapter f20269a;

        /* renamed from: b  reason: collision with root package name */
        private final MediationInterstitialListener f20270b;

        public d(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.f20269a = abstractAdViewAdapter;
            this.f20270b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.f20270b.onAdClicked(this.f20269a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f20270b.onAdClosed(this.f20269a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f20270b.onAdFailedToLoad(this.f20269a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f20270b.onAdLeftApplication(this.f20269a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.f20270b.onAdLoaded(this.f20269a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f20270b.onAdOpened(this.f20269a);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$e.class */
    static final class e extends AdListener implements AppEventListener, eir {

        /* renamed from: a  reason: collision with root package name */
        private final AbstractAdViewAdapter f20271a;

        /* renamed from: b  reason: collision with root package name */
        private final MediationBannerListener f20272b;

        public e(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.f20271a = abstractAdViewAdapter;
            this.f20272b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.f20272b.onAdClicked(this.f20271a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f20272b.onAdClosed(this.f20271a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f20272b.onAdFailedToLoad(this.f20271a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f20272b.onAdLeftApplication(this.f20271a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.f20272b.onAdLoaded(this.f20271a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f20272b.onAdOpened(this.f20271a);
        }

        @Override // com.google.android.gms.ads.doubleclick.AppEventListener
        public final void onAppEvent(String str, String str2) {
            this.f20272b.zza(this.f20271a, str, str2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$f.class */
    static final class f extends AdListener implements NativeAppInstallAd.OnAppInstallAdLoadedListener, NativeContentAd.OnContentAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener, UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {

        /* renamed from: a  reason: collision with root package name */
        private final AbstractAdViewAdapter f20273a;

        /* renamed from: b  reason: collision with root package name */
        private final MediationNativeListener f20274b;

        public f(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.f20273a = abstractAdViewAdapter;
            this.f20274b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.f20274b.onAdClicked(this.f20273a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f20274b.onAdClosed(this.f20273a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f20274b.onAdFailedToLoad(this.f20273a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            this.f20274b.onAdImpression(this.f20273a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f20274b.onAdLeftApplication(this.f20273a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f20274b.onAdOpened(this.f20273a);
        }

        @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
        public final void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.f20274b.onAdLoaded(this.f20273a, new a(nativeAppInstallAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
        public final void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.f20274b.onAdLoaded(this.f20273a, new c(nativeContentAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener
        public final void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
            this.f20274b.zza(this.f20273a, nativeCustomTemplateAd, str);
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener
        public final void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd) {
            this.f20274b.zza(this.f20273a, nativeCustomTemplateAd);
        }

        @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
        public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
            this.f20274b.onAdLoaded(this.f20273a, new b(unifiedNativeAd));
        }
    }

    private final AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        AdRequest.Builder builder = new AdRequest.Builder();
        Date birthday = mediationAdRequest.getBirthday();
        if (birthday != null) {
            builder.setBirthday(birthday);
        }
        int gender = mediationAdRequest.getGender();
        if (gender != 0) {
            builder.setGender(gender);
        }
        Set<String> keywords = mediationAdRequest.getKeywords();
        if (keywords != null) {
            for (String str : keywords) {
                builder.addKeyword(str);
            }
        }
        Location location = mediationAdRequest.getLocation();
        if (location != null) {
            builder.setLocation(location);
        }
        if (mediationAdRequest.isTesting()) {
            ekb.a();
            builder.addTestDevice(yq.a(context));
        }
        if (mediationAdRequest.taggedForChildDirectedTreatment() != -1) {
            boolean z = true;
            if (mediationAdRequest.taggedForChildDirectedTreatment() != 1) {
                z = false;
            }
            builder.tagForChildDirectedTreatment(z);
        }
        builder.setIsDesignedForFamilies(mediationAdRequest.isDesignedForFamilies());
        builder.addNetworkExtrasBundle(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.build();
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.zzmo;
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public Bundle getInterstitialAdapterInfo() {
        return new MediationAdapter.zza().zzed(1).zzafn();
    }

    @Override // com.google.android.gms.ads.mediation.zza
    public emk getVideoController() {
        VideoController videoController;
        AdView adView = this.zzmo;
        if (adView == null || (videoController = adView.getVideoController()) == null) {
            return null;
        }
        return videoController.zzdz();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzmr = context.getApplicationContext();
        this.zzmt = mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener.onInitializationSucceeded(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzmt != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        Context context = this.zzmr;
        if (context == null || this.zzmt == null) {
            za.zzex("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.zzms = interstitialAd;
        interstitialAd.zze(true);
        this.zzms.setAdUnitId(getAdUnitId(bundle));
        this.zzms.setRewardedVideoAdListener(this.zzmu);
        this.zzms.setAdMetadataListener(new g(this));
        this.zzms.loadAd(zza(this.zzmr, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        AdView adView = this.zzmo;
        if (adView != null) {
            adView.destroy();
            this.zzmo = null;
        }
        if (this.zzmp != null) {
            this.zzmp = null;
        }
        if (this.zzmq != null) {
            this.zzmq = null;
        }
        if (this.zzms != null) {
            this.zzms = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener
    public void onImmersiveModeUpdated(boolean z) {
        InterstitialAd interstitialAd = this.zzmp;
        if (interstitialAd != null) {
            interstitialAd.setImmersiveMode(z);
        }
        InterstitialAd interstitialAd2 = this.zzms;
        if (interstitialAd2 != null) {
            interstitialAd2.setImmersiveMode(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        AdView adView = this.zzmo;
        if (adView != null) {
            adView.pause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        AdView adView = this.zzmo;
        if (adView != null) {
            adView.resume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        AdView adView = new AdView(context);
        this.zzmo = adView;
        adView.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzmo.setAdUnitId(getAdUnitId(bundle));
        this.zzmo.setAdListener(new e(this, mediationBannerListener));
        this.zzmo.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.zzmp = interstitialAd;
        interstitialAd.setAdUnitId(getAdUnitId(bundle));
        this.zzmp.setAdListener(new d(this, mediationInterstitialListener));
        this.zzmp.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        f fVar = new f(this, mediationNativeListener);
        AdLoader.Builder withAdListener = new AdLoader.Builder(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(fVar);
        withAdListener.withNativeAdOptions(nativeMediationAdRequest.getNativeAdOptions());
        withAdListener.withNativeAdOptions(nativeMediationAdRequest.getNativeAdRequestOptions());
        if (nativeMediationAdRequest.isUnifiedNativeAdRequested()) {
            withAdListener.forUnifiedNativeAd(fVar);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(fVar);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(fVar);
        }
        if (nativeMediationAdRequest.zzvw()) {
            for (String str : nativeMediationAdRequest.zzvx().keySet()) {
                withAdListener.forCustomTemplateAd(str, fVar, nativeMediationAdRequest.zzvx().get(str).booleanValue() ? fVar : null);
            }
        }
        AdLoader build = withAdListener.build();
        this.zzmq = build;
        build.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzmp.show();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzms.show();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
