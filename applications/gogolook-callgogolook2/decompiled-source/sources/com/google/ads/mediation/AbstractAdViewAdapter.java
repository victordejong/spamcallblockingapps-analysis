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
import com.google.android.gms.ads.formats.NativeAdOptions;
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
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzauy;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7477z2;
import p081h.p203i.p204a.p224e.p259j.p260a.C7343o1;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter.class */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, OnImmersiveModeUpdatedListener, com.google.android.gms.ads.mediation.zzb, MediationRewardedVideoAdAdapter, zzauy {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    public AdView zzha;
    public InterstitialAd zzhb;
    public AdLoader zzhc;
    public Context zzhd;
    public InterstitialAd zzhe;
    public MediationRewardedVideoAdListener zzhf;
    public final RewardedVideoAdListener zzhg = new com.google.ads.mediation.zza(this);

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$zza.class */
    public static final class zza extends NativeAppInstallAdMapper {
        public final NativeAppInstallAd zzhi;

        public zza(NativeAppInstallAd nativeAppInstallAd) {
            this.zzhi = nativeAppInstallAd;
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
                ((NativeAdView) view).setNativeAd(this.zzhi);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzvx.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.zzhi);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$zzb.class */
    public static final class zzb extends NativeContentAdMapper {
        public final NativeContentAd zzhj;

        public zzb(NativeContentAd nativeContentAd) {
            this.zzhj = nativeContentAd;
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
                ((NativeAdView) view).setNativeAd(this.zzhj);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzvx.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.zzhj);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$zzc.class */
    public static final class zzc extends UnifiedNativeAdMapper {
        public final UnifiedNativeAd zzhk;

        public zzc(UnifiedNativeAd unifiedNativeAd) {
            this.zzhk = unifiedNativeAd;
            setHeadline(unifiedNativeAd.getHeadline());
            setImages(unifiedNativeAd.getImages());
            setBody(unifiedNativeAd.getBody());
            setIcon(unifiedNativeAd.getIcon());
            setCallToAction(unifiedNativeAd.getCallToAction());
            setAdvertiser(unifiedNativeAd.getAdvertiser());
            setStarRating(unifiedNativeAd.getStarRating());
            setStore(unifiedNativeAd.getStore());
            setPrice(unifiedNativeAd.getPrice());
            zzm(unifiedNativeAd.zzbh());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(unifiedNativeAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public final void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof UnifiedNativeAdView) {
                ((UnifiedNativeAdView) view).setNativeAd(this.zzhk);
                return;
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzvx.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.zzhk);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$zzd.class */
    public static final class zzd extends AdListener implements AppEventListener, AbstractC7477z2 {
        public final AbstractAdViewAdapter zzhl;
        public final MediationBannerListener zzhm;

        public zzd(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.zzhl = abstractAdViewAdapter;
            this.zzhm = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.zzhm.onAdClicked(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.zzhm.onAdClosed(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.zzhm.onAdFailedToLoad(this.zzhl, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.zzhm.onAdLeftApplication(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.zzhm.onAdLoaded(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.zzhm.onAdOpened(this.zzhl);
        }

        @Override // com.google.android.gms.ads.doubleclick.AppEventListener
        public final void onAppEvent(String str, String str2) {
            this.zzhm.zza(this.zzhl, str, str2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$zze.class */
    public static final class zze extends AdListener implements AbstractC7477z2 {
        public final AbstractAdViewAdapter zzhl;
        public final MediationInterstitialListener zzhn;

        public zze(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzhl = abstractAdViewAdapter;
            this.zzhn = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.zzhn.onAdClicked(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.zzhn.onAdClosed(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.zzhn.onAdFailedToLoad(this.zzhl, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.zzhn.onAdLeftApplication(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.zzhn.onAdLoaded(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.zzhn.onAdOpened(this.zzhl);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$zzf.class */
    public static final class zzf extends AdListener implements NativeAppInstallAd.OnAppInstallAdLoadedListener, NativeContentAd.OnContentAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener, UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {
        public final AbstractAdViewAdapter zzhl;
        public final MediationNativeListener zzho;

        public zzf(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.zzhl = abstractAdViewAdapter;
            this.zzho = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            this.zzho.onAdClicked(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.zzho.onAdClosed(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.zzho.onAdFailedToLoad(this.zzhl, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            this.zzho.onAdImpression(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.zzho.onAdLeftApplication(this.zzhl);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.zzho.onAdOpened(this.zzhl);
        }

        @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
        public final void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.zzho.onAdLoaded(this.zzhl, new zza(nativeAppInstallAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
        public final void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.zzho.onAdLoaded(this.zzhl, new zzb(nativeContentAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener
        public final void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
            this.zzho.zza(this.zzhl, nativeCustomTemplateAd, str);
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener
        public final void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd) {
            this.zzho.zza(this.zzhl, nativeCustomTemplateAd);
        }

        @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
        public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
            this.zzho.onAdLoaded(this.zzhl, new zzc(unifiedNativeAd));
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
            C7430v3.m20640a();
            builder.addTestDevice(C7343o1.m20779a(context));
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
        return this.zzha;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public Bundle getInterstitialAdapterInfo() {
        return new MediationAdapter.zza().zzaq(1).zzxq();
    }

    @Override // com.google.android.gms.ads.mediation.zzb
    public AbstractC7359p5 getVideoController() {
        VideoController videoController;
        AdView adView = this.zzha;
        if (adView == null || (videoController = adView.getVideoController()) == null) {
            return null;
        }
        return videoController.zzbb();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzhd = context.getApplicationContext();
        this.zzhf = mediationRewardedVideoAdListener;
        this.zzhf.onInitializationSucceeded(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzhf != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        Context context = this.zzhd;
        if (context == null || this.zzhf == null) {
            C7452x1.m20574a("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzhe = new InterstitialAd(context);
        this.zzhe.zza(true);
        this.zzhe.setAdUnitId(getAdUnitId(bundle));
        this.zzhe.setRewardedVideoAdListener(this.zzhg);
        this.zzhe.setAdMetadataListener(new com.google.ads.mediation.zzb(this));
        this.zzhe.loadAd(zza(this.zzhd, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        AdView adView = this.zzha;
        if (adView != null) {
            adView.destroy();
            this.zzha = null;
        }
        if (this.zzhb != null) {
            this.zzhb = null;
        }
        if (this.zzhc != null) {
            this.zzhc = null;
        }
        if (this.zzhe != null) {
            this.zzhe = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener
    public void onImmersiveModeUpdated(boolean z) {
        InterstitialAd interstitialAd = this.zzhb;
        if (interstitialAd != null) {
            interstitialAd.setImmersiveMode(z);
        }
        InterstitialAd interstitialAd2 = this.zzhe;
        if (interstitialAd2 != null) {
            interstitialAd2.setImmersiveMode(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        AdView adView = this.zzha;
        if (adView != null) {
            adView.pause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        AdView adView = this.zzha;
        if (adView != null) {
            adView.resume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzha = new AdView(context);
        this.zzha.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzha.setAdUnitId(getAdUnitId(bundle));
        this.zzha.setAdListener(new zzd(this, mediationBannerListener));
        this.zzha.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzhb = new InterstitialAd(context);
        this.zzhb.setAdUnitId(getAdUnitId(bundle));
        this.zzhb.setAdListener(new zze(this, mediationInterstitialListener));
        this.zzhb.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        zzf zzfVar = new zzf(this, mediationNativeListener);
        AdLoader.Builder withAdListener = new AdLoader.Builder(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(zzfVar);
        NativeAdOptions nativeAdOptions = nativeMediationAdRequest.getNativeAdOptions();
        if (nativeAdOptions != null) {
            withAdListener.withNativeAdOptions(nativeAdOptions);
        }
        if (nativeMediationAdRequest.isUnifiedNativeAdRequested()) {
            withAdListener.forUnifiedNativeAd(zzfVar);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(zzfVar);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(zzfVar);
        }
        if (nativeMediationAdRequest.zzok()) {
            for (String str : nativeMediationAdRequest.zzol().keySet()) {
                withAdListener.forCustomTemplateAd(str, zzfVar, nativeMediationAdRequest.zzol().get(str).booleanValue() ? zzfVar : null);
            }
        }
        this.zzhc = withAdListener.build();
        this.zzhc.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzhb.show();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzhe.show();
    }

    public abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
