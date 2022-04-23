package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.eiu;
import com.google.android.gms.internal.ads.ejb;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.eko;
import com.google.android.gms.internal.ads.ekp;
import com.google.android.gms.internal.ads.emr;
import com.google.android.gms.internal.ads.fz;
import com.google.android.gms.internal.ads.gb;
import com.google.android.gms.internal.ads.gd;
import com.google.android.gms.internal.ads.ge;
import com.google.android.gms.internal.ads.gf;
import com.google.android.gms.internal.ads.gh;
import com.google.android.gms.internal.ads.gi;
import com.google.android.gms.internal.ads.gj;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.qg;
import com.google.android.gms.internal.ads.qh;
import com.google.android.gms.internal.ads.qi;
import com.google.android.gms.internal.ads.qj;
import com.google.android.gms.internal.ads.za;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzvt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {
    private final Context context;
    private final ejb zzacy;
    private final eko zzacz;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {
        private final Context context;
        private final ekp zzacx;

        private Builder(Context context, ekp ekpVar) {
            this.context = context;
            this.zzacx = ekpVar;
        }

        public Builder(Context context, String str) {
            this((Context) o.a(context, "context cannot be null"), ekb.b().a(context, str, new mj()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.context, this.zzacx.a());
            } catch (RemoteException e) {
                za.zzc("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAdManagerAdView(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzacx.a(new gd(onAdManagerAdViewLoadedListener), new zzvt(this.context, adSizeArr));
            } catch (RemoteException e) {
                za.zzd("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zzacx.a(new gf(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                za.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zzacx.a(new gi(onContentAdLoadedListener));
            } catch (RemoteException e) {
                za.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomFormatAd(String str, NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            qg qgVar = new qg(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                ekp ekpVar = this.zzacx;
                qi qiVar = null;
                qh qhVar = new qh(qgVar);
                if (qgVar.f28330b != null) {
                    qiVar = new qi(qgVar);
                }
                ekpVar.a(str, qhVar, qiVar);
            } catch (RemoteException e) {
                za.zzd("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            fz fzVar = new fz(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                ekp ekpVar = this.zzacx;
                gb gbVar = null;
                ge geVar = new ge(fzVar);
                if (fzVar.f28001b != null) {
                    gbVar = new gb(fzVar);
                }
                ekpVar.a(str, geVar, gbVar);
            } catch (RemoteException e) {
                za.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forNativeAd(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzacx.a(new qj(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                za.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzacx.a(new gh(onPublisherAdViewLoadedListener), new zzvt(this.context, adSizeArr));
            } catch (RemoteException e) {
                za.zzd("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzacx.a(new gj(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                za.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzacx.a(new eiu(adListener));
            } catch (RemoteException e) {
                za.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withAdManagerAdViewOptions(AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzacx.a(adManagerAdViewOptions);
            } catch (RemoteException e) {
                za.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withCorrelator(Correlator correlator) {
            return this;
        }

        @Deprecated
        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zzacx.a(new zzaei(nativeAdOptions));
            } catch (RemoteException e) {
                za.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.zzacx.a(new zzaei(nativeAdOptions));
            } catch (RemoteException e) {
                za.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.zzacx.a(publisherAdViewOptions);
            } catch (RemoteException e) {
                za.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }
    }

    AdLoader(Context context, eko ekoVar) {
        this(context, ekoVar, ejb.f27877a);
    }

    private AdLoader(Context context, eko ekoVar, ejb ejbVar) {
        this.context = context;
        this.zzacz = ekoVar;
        this.zzacy = ejbVar;
    }

    private final void zza(emr emrVar) {
        try {
            this.zzacz.a(ejb.a(this.context, emrVar));
        } catch (RemoteException e) {
            za.zzc("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.zzacz.c();
        } catch (RemoteException e) {
            za.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.zzacz.a();
        } catch (RemoteException e) {
            za.zzd("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(AdRequest adRequest) {
        zza(adRequest.zzdt());
    }

    public void loadAd(AdManagerAdRequest adManagerAdRequest) {
        zza(adManagerAdRequest.zzdt());
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzdt());
    }

    public void loadAds(AdRequest adRequest, int i) {
        try {
            this.zzacz.a(ejb.a(this.context, adRequest.zzdt()), i);
        } catch (RemoteException e) {
            za.zzc("Failed to load ads.", e);
        }
    }
}
