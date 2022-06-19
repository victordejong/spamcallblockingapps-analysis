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
import com.google.android.gms.internal.ads.C13077yq;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emk;
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
    private final RewardedVideoAdListener zzmu = new C10603f(this);

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$a */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$a.class */
    static final class C10586a extends NativeAppInstallAdMapper {

        /* renamed from: a */
        private final NativeAppInstallAd f34343a;

        public C10586a(NativeAppInstallAd nativeAppInstallAd) {
            this.f34343a = nativeAppInstallAd;
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
                ((NativeAdView) view).setNativeAd(this.f34343a);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbol.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f34343a);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$b */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$b.class */
    static final class C10587b extends UnifiedNativeAdMapper {

        /* renamed from: a */
        private final UnifiedNativeAd f34344a;

        public C10587b(UnifiedNativeAd unifiedNativeAd) {
            this.f34344a = unifiedNativeAd;
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
                ((UnifiedNativeAdView) view).setNativeAd(this.f34344a);
                return;
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbol.get(view);
            if (nativeAdViewHolder == null) {
                return;
            }
            nativeAdViewHolder.setNativeAd(this.f34344a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$c */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$c.class */
    static final class C10588c extends NativeContentAdMapper {

        /* renamed from: a */
        private final NativeContentAd f34345a;

        public C10588c(NativeContentAd nativeContentAd) {
            this.f34345a = nativeContentAd;
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
                ((NativeAdView) view).setNativeAd(this.f34345a);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbol.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f34345a);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$d */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$d.class */
    static final class C10589d extends AdListener implements eir {

        /* renamed from: a */
        private final AbstractAdViewAdapter f34346a;

        /* renamed from: b */
        private final MediationInterstitialListener f34347b;

        public C10589d(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.f34346a = abstractAdViewAdapter;
            this.f34347b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.f34347b.onAdClicked(this.f34346a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f34347b.onAdClosed(this.f34346a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f34347b.onAdFailedToLoad(this.f34346a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f34347b.onAdLeftApplication(this.f34346a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.f34347b.onAdLoaded(this.f34346a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f34347b.onAdOpened(this.f34346a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$e */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$e.class */
    static final class C10590e extends AdListener implements AppEventListener, eir {

        /* renamed from: a */
        private final AbstractAdViewAdapter f34348a;

        /* renamed from: b */
        private final MediationBannerListener f34349b;

        public C10590e(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.f34348a = abstractAdViewAdapter;
            this.f34349b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.f34349b.onAdClicked(this.f34348a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f34349b.onAdClosed(this.f34348a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f34349b.onAdFailedToLoad(this.f34348a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f34349b.onAdLeftApplication(this.f34348a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.f34349b.onAdLoaded(this.f34348a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f34349b.onAdOpened(this.f34348a);
        }

        @Override // com.google.android.gms.ads.doubleclick.AppEventListener
        public final void onAppEvent(String str, String str2) {
            this.f34349b.zza(this.f34348a, str, str2);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$f */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$f.class */
    static final class C10591f extends AdListener implements NativeAppInstallAd.OnAppInstallAdLoadedListener, NativeContentAd.OnContentAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener, UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {

        /* renamed from: a */
        private final AbstractAdViewAdapter f34350a;

        /* renamed from: b */
        private final MediationNativeListener f34351b;

        public C10591f(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.f34350a = abstractAdViewAdapter;
            this.f34351b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.f34351b.onAdClicked(this.f34350a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f34351b.onAdClosed(this.f34350a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f34351b.onAdFailedToLoad(this.f34350a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            this.f34351b.onAdImpression(this.f34350a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f34351b.onAdLeftApplication(this.f34350a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f34351b.onAdOpened(this.f34350a);
        }

        @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
        public final void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.f34351b.onAdLoaded(this.f34350a, new C10586a(nativeAppInstallAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
        public final void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.f34351b.onAdLoaded(this.f34350a, new C10588c(nativeContentAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener
        public final void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
            this.f34351b.zza(this.f34350a, nativeCustomTemplateAd, str);
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener
        public final void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd) {
            this.f34351b.zza(this.f34350a, nativeCustomTemplateAd);
        }

        @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
        public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
            this.f34351b.onAdLoaded(this.f34350a, new C10587b(unifiedNativeAd));
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
            ekb.m14835a();
            builder.addTestDevice(C13077yq.m13951a(context));
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
            C13088za.zzex("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.zzms = interstitialAd;
        interstitialAd.zze(true);
        this.zzms.setAdUnitId(getAdUnitId(bundle));
        this.zzms.setRewardedVideoAdListener(this.zzmu);
        this.zzms.setAdMetadataListener(new C10604g(this));
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
        this.zzmo.setAdListener(new C10590e(this, mediationBannerListener));
        this.zzmo.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.zzmp = interstitialAd;
        interstitialAd.setAdUnitId(getAdUnitId(bundle));
        this.zzmp.setAdListener(new C10589d(this, mediationInterstitialListener));
        this.zzmp.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        C10591f c10591f = new C10591f(this, mediationNativeListener);
        AdLoader.Builder withAdListener = new AdLoader.Builder(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(c10591f);
        withAdListener.withNativeAdOptions(nativeMediationAdRequest.getNativeAdOptions());
        withAdListener.withNativeAdOptions(nativeMediationAdRequest.getNativeAdRequestOptions());
        if (nativeMediationAdRequest.isUnifiedNativeAdRequested()) {
            withAdListener.forUnifiedNativeAd(c10591f);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(c10591f);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(c10591f);
        }
        if (nativeMediationAdRequest.zzvw()) {
            for (String str : nativeMediationAdRequest.zzvx().keySet()) {
                withAdListener.forCustomTemplateAd(str, c10591f, nativeMediationAdRequest.zzvx().get(str).booleanValue() ? c10591f : null);
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
