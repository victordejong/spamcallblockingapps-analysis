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
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nv.class */
public final class nv implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {

    /* renamed from: a  reason: collision with root package name */
    NativeAdMapper f28239a;

    /* renamed from: b  reason: collision with root package name */
    UnifiedNativeAdMapper f28240b;

    /* renamed from: c  reason: collision with root package name */
    NativeCustomTemplateAd f28241c;

    /* renamed from: d  reason: collision with root package name */
    private final ms f28242d;

    public nv(ms msVar) {
        this.f28242d = msVar;
    }

    private static void a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper, NativeAdMapper nativeAdMapper) {
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.zza(new ni());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zza(videoController);
            }
            if (nativeAdMapper != null && nativeAdMapper.hasVideoContent()) {
                nativeAdMapper.zza(videoController);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClicked.");
        try {
            this.f28242d.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClicked.");
        try {
            this.f28242d.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f28239a;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f28240b;
        if (this.f28241c == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                za.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                za.zzdz("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                za.zzdz("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        za.zzdz("Adapter called onAdClicked.");
        try {
            this.f28242d.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClosed.");
        try {
            this.f28242d.b();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClosed.");
        try {
            this.f28242d.b();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClosed.");
        try {
            this.f28242d.b();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        o.b("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        za.zzdz(sb.toString());
        try {
            this.f28242d.a(i);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        o.b("#008 Must be called on the main UI thread.");
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
        za.zzdz(sb.toString());
        try {
            this.f28242d.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        o.b("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        za.zzdz(sb.toString());
        try {
            this.f28242d.a(i);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        o.b("#008 Must be called on the main UI thread.");
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
        za.zzdz(sb.toString());
        try {
            this.f28242d.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        o.b("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        za.zzdz(sb.toString());
        try {
            this.f28242d.a(i);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        o.b("#008 Must be called on the main UI thread.");
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
        za.zzdz(sb.toString());
        try {
            this.f28242d.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f28239a;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f28240b;
        if (this.f28241c == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                za.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                za.zzdz("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                za.zzdz("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        za.zzdz("Adapter called onAdImpression.");
        try {
            this.f28242d.f();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f28242d.c();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f28242d.c();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f28242d.c();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLoaded.");
        try {
            this.f28242d.e();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLoaded.");
        try {
            this.f28242d.e();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLoaded.");
        this.f28239a = nativeAdMapper;
        this.f28240b = null;
        a(mediationNativeAdapter, null, nativeAdMapper);
        try {
            this.f28242d.e();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLoaded.");
        this.f28240b = unifiedNativeAdMapper;
        this.f28239a = null;
        a(mediationNativeAdapter, unifiedNativeAdMapper, null);
        try {
            this.f28242d.e();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28242d.d();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28242d.d();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28242d.d();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoEnd.");
        try {
            this.f28242d.g();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAppEvent.");
        try {
            this.f28242d.a(str, str2);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        o.b("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        za.zzdz(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f28241c = nativeCustomTemplateAd;
        try {
            this.f28242d.e();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof et) {
            try {
                this.f28242d.a(((et) nativeCustomTemplateAd).f27987a, str);
            } catch (RemoteException e) {
                za.zze("#007 Could not call remote method.", e);
            }
        } else {
            za.zzez("Unexpected native custom template ad type.");
        }
    }
}
