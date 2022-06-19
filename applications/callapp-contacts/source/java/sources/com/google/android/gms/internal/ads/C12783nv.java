package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.ads.nv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nv.class */
public final class C12783nv implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {

    /* renamed from: a */
    NativeAdMapper f49603a;

    /* renamed from: b */
    UnifiedNativeAdMapper f49604b;

    /* renamed from: c */
    NativeCustomTemplateAd f49605c;

    /* renamed from: d */
    private final AbstractC12752ms f49606d;

    public C12783nv(AbstractC12752ms abstractC12752ms) {
        this.f49606d = abstractC12752ms;
    }

    /* renamed from: a */
    private static void m14411a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper, NativeAdMapper nativeAdMapper) {
        if (mediationNativeAdapter instanceof AdMobAdapter) {
            return;
        }
        VideoController videoController = new VideoController();
        videoController.zza(new BinderC12770ni());
        if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
            unifiedNativeAdMapper.zza(videoController);
        }
        if (nativeAdMapper == null || !nativeAdMapper.hasVideoContent()) {
            return;
        }
        nativeAdMapper.zza(videoController);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClicked.");
        try {
            this.f49606d.mo14435a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClicked.");
        try {
            this.f49606d.mo14435a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f49603a;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f49604b;
        if (this.f49605c == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                C13088za.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                C13088za.zzdz("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                C13088za.zzdz("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        C13088za.zzdz("Adapter called onAdClicked.");
        try {
            this.f49606d.mo14435a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClosed.");
        try {
            this.f49606d.mo14424b();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClosed.");
        try {
            this.f49606d.mo14424b();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClosed.");
        try {
            this.f49606d.mo14424b();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        C13088za.zzdz(sb.toString());
        try {
            this.f49606d.mo14434a(i);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 97 + String.valueOf(domain).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        C13088za.zzdz(sb.toString());
        try {
            this.f49606d.mo14427a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        C13088za.zzdz(sb.toString());
        try {
            this.f49606d.mo14434a(i);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 97 + String.valueOf(domain).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        C13088za.zzdz(sb.toString());
        try {
            this.f49606d.mo14427a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        C13088za.zzdz(sb.toString());
        try {
            this.f49606d.mo14434a(i);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 97 + String.valueOf(domain).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        C13088za.zzdz(sb.toString());
        try {
            this.f49606d.mo14427a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f49603a;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f49604b;
        if (this.f49605c == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                C13088za.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                C13088za.zzdz("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                C13088za.zzdz("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        C13088za.zzdz("Adapter called onAdImpression.");
        try {
            this.f49606d.mo14417f();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f49606d.mo14420c();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f49606d.mo14420c();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f49606d.mo14420c();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLoaded.");
        try {
            this.f49606d.mo14418e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLoaded.");
        try {
            this.f49606d.mo14418e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLoaded.");
        this.f49603a = nativeAdMapper;
        this.f49604b = null;
        m14411a(mediationNativeAdapter, null, nativeAdMapper);
        try {
            this.f49606d.mo14418e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLoaded.");
        this.f49604b = unifiedNativeAdMapper;
        this.f49603a = null;
        m14411a(mediationNativeAdapter, unifiedNativeAdMapper, null);
        try {
            this.f49606d.mo14418e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49606d.mo14419d();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49606d.mo14419d();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49606d.mo14419d();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoEnd.");
        try {
            this.f49606d.mo14416g();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAppEvent.");
        try {
            this.f49606d.mo14425a(str, str2);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        C13088za.zzdz(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f49605c = nativeCustomTemplateAd;
        try {
            this.f49606d.mo14418e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (!(nativeCustomTemplateAd instanceof C12537et)) {
            C13088za.zzez("Unexpected native custom template ad type.");
            return;
        }
        try {
            this.f49606d.mo14431a(((C12537et) nativeCustomTemplateAd).f49275a, str);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
