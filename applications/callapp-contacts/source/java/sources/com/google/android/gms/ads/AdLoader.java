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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.BinderC12573gb;
import com.google.android.gms.internal.ads.BinderC12575gd;
import com.google.android.gms.internal.ads.BinderC12576ge;
import com.google.android.gms.internal.ads.BinderC12577gf;
import com.google.android.gms.internal.ads.BinderC12579gh;
import com.google.android.gms.internal.ads.BinderC12580gi;
import com.google.android.gms.internal.ads.BinderC12581gj;
import com.google.android.gms.internal.ads.BinderC12743mj;
import com.google.android.gms.internal.ads.BinderC12850qh;
import com.google.android.gms.internal.ads.BinderC12851qi;
import com.google.android.gms.internal.ads.BinderC12852qj;
import com.google.android.gms.internal.ads.C12570fz;
import com.google.android.gms.internal.ads.C12849qg;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.eiu;
import com.google.android.gms.internal.ads.ejb;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.eko;
import com.google.android.gms.internal.ads.ekp;
import com.google.android.gms.internal.ads.emr;
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
            this((Context) C12045o.m19161a(context, "context cannot be null"), ekb.m14834b().m14856a(context, str, new BinderC12743mj()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.context, this.zzacx.mo14695a());
            } catch (RemoteException e) {
                C13088za.zzc("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAdManagerAdView(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzacx.mo14687a(new BinderC12575gd(onAdManagerAdViewLoadedListener), new zzvt(this.context, adSizeArr));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zzacx.mo14690a(new BinderC12577gf(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zzacx.mo14689a(new BinderC12580gi(onContentAdLoadedListener));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomFormatAd(String str, NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            C12849qg c12849qg = new C12849qg(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                ekp ekpVar = this.zzacx;
                BinderC12851qi binderC12851qi = null;
                BinderC12850qh binderC12850qh = new BinderC12850qh(c12849qg);
                if (c12849qg.f49735b != null) {
                    binderC12851qi = new BinderC12851qi(c12849qg);
                }
                ekpVar.mo14682a(str, binderC12850qh, binderC12851qi);
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            C12570fz c12570fz = new C12570fz(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                ekp ekpVar = this.zzacx;
                BinderC12573gb binderC12573gb = null;
                BinderC12576ge binderC12576ge = new BinderC12576ge(c12570fz);
                if (c12570fz.f49291b != null) {
                    binderC12573gb = new BinderC12573gb(c12570fz);
                }
                ekpVar.mo14682a(str, binderC12576ge, binderC12573gb);
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forNativeAd(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzacx.mo14686a(new BinderC12852qj(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzacx.mo14687a(new BinderC12579gh(onPublisherAdViewLoadedListener), new zzvt(this.context, adSizeArr));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzacx.mo14686a(new BinderC12581gj(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzacx.mo14692a(new eiu(adListener));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withAdManagerAdViewOptions(AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzacx.mo14694a(adManagerAdViewOptions);
            } catch (RemoteException e) {
                C13088za.zzd("Failed to specify Ad Manager banner ad options", e);
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
                this.zzacx.mo14684a(new zzaei(nativeAdOptions));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.zzacx.mo14684a(new zzaei(nativeAdOptions));
            } catch (RemoteException e) {
                C13088za.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.zzacx.mo14693a(publisherAdViewOptions);
            } catch (RemoteException e) {
                C13088za.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }
    }

    AdLoader(Context context, eko ekoVar) {
        this(context, ekoVar, ejb.f49085a);
    }

    private AdLoader(Context context, eko ekoVar, ejb ejbVar) {
        this.context = context;
        this.zzacz = ekoVar;
        this.zzacy = ejbVar;
    }

    private final void zza(emr emrVar) {
        try {
            this.zzacz.mo14627a(ejb.m14863a(this.context, emrVar));
        } catch (RemoteException e) {
            C13088za.zzc("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.zzacz.mo14624c();
        } catch (RemoteException e) {
            C13088za.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.zzacz.mo14628a();
        } catch (RemoteException e) {
            C13088za.zzd("Failed to check if ad is loading.", e);
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
            this.zzacz.mo14626a(ejb.m14863a(this.context, adRequest.zzdt()), i);
        } catch (RemoteException e) {
            C13088za.zzc("Failed to load ads.", e);
        }
    }
}
