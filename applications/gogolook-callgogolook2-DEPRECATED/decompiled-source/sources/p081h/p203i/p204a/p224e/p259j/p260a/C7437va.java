package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import com.google.ads.mediation.admob.AdMobAdapter;
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
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.va */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/va.class */
public final class C7437va implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {

    /* renamed from: a */
    public final AbstractC7291ja f17503a;

    /* renamed from: b */
    public NativeAdMapper f17504b;

    /* renamed from: c */
    public UnifiedNativeAdMapper f17505c;

    /* renamed from: d */
    public NativeCustomTemplateAd f17506d;

    public C7437va(AbstractC7291ja jaVar) {
        this.f17503a = jaVar;
    }

    /* renamed from: a */
    public static void m20629a(MediationNativeAdapter mediationNativeAdapter, @Nullable UnifiedNativeAdMapper unifiedNativeAdMapper, @Nullable NativeAdMapper nativeAdMapper) {
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.zza(new BinderC7401sa());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zza(videoController);
            }
            if (nativeAdMapper != null && nativeAdMapper.hasVideoContent()) {
                nativeAdMapper.zza(videoController);
            }
        }
    }

    /* renamed from: a */
    public final NativeAdMapper m20630a() {
        return this.f17504b;
    }

    /* renamed from: b */
    public final UnifiedNativeAdMapper m20628b() {
        return this.f17505c;
    }

    /* renamed from: c */
    public final NativeCustomTemplateAd m20627c() {
        return this.f17506d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClicked.");
        try {
            this.f17503a.onAdClicked();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClicked.");
        try {
            this.f17503a.onAdClicked();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f17504b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f17505c;
        if (this.f17506d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                C7452x1.m20567d("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                C7452x1.m20572b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                C7452x1.m20572b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        C7452x1.m20572b("Adapter called onAdClicked.");
        try {
            this.f17503a.onAdClicked();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClosed.");
        try {
            this.f17503a.onAdClosed();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClosed.");
        try {
            this.f17503a.onAdClosed();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClosed.");
        try {
            this.f17503a.onAdClosed();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        C7452x1.m20572b(sb.toString());
        try {
            this.f17503a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        C7452x1.m20572b(sb.toString());
        try {
            this.f17503a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        C7452x1.m20572b(sb.toString());
        try {
            this.f17503a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f17504b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f17505c;
        if (this.f17506d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                C7452x1.m20567d("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                C7452x1.m20572b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                C7452x1.m20572b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        C7452x1.m20572b("Adapter called onAdImpression.");
        try {
            this.f17503a.onAdImpression();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLeftApplication.");
        try {
            this.f17503a.onAdLeftApplication();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLeftApplication.");
        try {
            this.f17503a.onAdLeftApplication();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLeftApplication.");
        try {
            this.f17503a.onAdLeftApplication();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLoaded.");
        try {
            this.f17503a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLoaded.");
        try {
            this.f17503a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLoaded.");
        this.f17504b = nativeAdMapper;
        this.f17505c = null;
        m20629a(mediationNativeAdapter, this.f17505c, this.f17504b);
        try {
            this.f17503a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLoaded.");
        this.f17505c = unifiedNativeAdMapper;
        this.f17504b = null;
        m20629a(mediationNativeAdapter, this.f17505c, this.f17504b);
        try {
            this.f17503a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdOpened.");
        try {
            this.f17503a.onAdOpened();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdOpened.");
        try {
            this.f17503a.onAdOpened();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdOpened.");
        try {
            this.f17503a.onAdOpened();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onVideoEnd.");
        try {
            this.f17503a.mo20805E();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAppEvent.");
        try {
            this.f17503a.onAppEvent(str, str2);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        C7452x1.m20572b(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f17506d = nativeCustomTemplateAd;
        try {
            this.f17503a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof C7350o8) {
            try {
                this.f17503a.mo20804a(((C7350o8) nativeCustomTemplateAd).m20740a(), str);
            } catch (RemoteException e) {
                C7452x1.m20567d("#007 Could not call remote method.", e);
            }
        } else {
            C7452x1.m20568d("Unexpected native custom template ad type.");
        }
    }
}
