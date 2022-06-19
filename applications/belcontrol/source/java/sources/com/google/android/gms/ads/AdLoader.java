package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd$OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd$OnContentAdLoadedListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzaeh;
import com.google.android.gms.internal.ads.zzagx;
import com.google.android.gms.internal.ads.zzahb;
import com.google.android.gms.internal.ads.zzahc;
import com.google.android.gms.internal.ads.zzahd;
import com.google.android.gms.internal.ads.zzahf;
import com.google.android.gms.internal.ads.zzahh;
import com.google.android.gms.internal.ads.zzanf;
import com.google.android.gms.internal.ads.zzaqw;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzvi;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzxd;
import com.google.android.gms.internal.ads.zzxi;
import com.google.android.gms.internal.ads.zzzk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {
    private final Context context;
    private final zzvq zzact;
    private final zzxd zzacu;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {
        private final Context context;
        private final zzxi zzacs;

        private Builder(Context context, zzxi zzxiVar) {
            this.context = context;
            this.zzacs = zzxiVar;
        }

        public Builder(Context context, String str) {
            this((Context) Preconditions.checkNotNull(context, "context cannot be null"), zzwr.zzqo().zzb(context, str, new zzanf()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.context, this.zzacs.zzqz());
            } catch (RemoteException e) {
                zzazk.zzc("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAdManagerAdView(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzacs.zza(new zzahb(onAdManagerAdViewLoadedListener), new zzvs(this.context, adSizeArr));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd$OnAppInstallAdLoadedListener nativeAppInstallAd$OnAppInstallAdLoadedListener) {
            try {
                this.zzacs.zza(new zzahd(nativeAppInstallAd$OnAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd$OnContentAdLoadedListener nativeContentAd$OnContentAdLoadedListener) {
            try {
                this.zzacs.zza(new zzahc(nativeContentAd$OnContentAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomFormatAd(String str, NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzaqw zzaqwVar = new zzaqw(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.zzacs.zza(str, zzaqwVar.zzvs(), zzaqwVar.zzua());
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            zzagx zzagxVar = new zzagx(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                this.zzacs.zza(str, zzagxVar.zztz(), zzagxVar.zzua());
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forNativeAd(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzacs.zza(new zzard(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzacs.zza(new zzahf(onPublisherAdViewLoadedListener), new zzvs(this.context, adSizeArr));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzacs.zza(new zzahh(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzacs.zzb(new zzvi(adListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withAdManagerAdViewOptions(AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzacs.zza(adManagerAdViewOptions);
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @KeepForSdk
        @Deprecated
        public Builder withCorrelator(Correlator correlator) {
            return this;
        }

        @Deprecated
        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zzacs.zza(new zzaeh(nativeAdOptions));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.zzacs.zza(new zzaeh(nativeAdOptions));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.zzacs.zza(publisherAdViewOptions);
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }
    }

    public AdLoader(Context context, zzxd zzxdVar) {
        this(context, zzxdVar, zzvq.zzcif);
    }

    private AdLoader(Context context, zzxd zzxdVar, zzvq zzvqVar) {
        this.context = context;
        this.zzacu = zzxdVar;
        this.zzact = zzvqVar;
    }

    private final void zza(zzzk zzzkVar) {
        try {
            this.zzacu.zzb(zzvq.zza(this.context, zzzkVar));
        } catch (RemoteException e) {
            zzazk.zzc("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.zzacu.zzkh();
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.zzacu.isLoading();
        } catch (RemoteException e) {
            zzazk.zzd("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(AdRequest adRequest) {
        zza(adRequest.zzds());
    }

    public void loadAd(AdManagerAdRequest adManagerAdRequest) {
        zza(adManagerAdRequest.zzds());
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzds());
    }

    public void loadAds(AdRequest adRequest, int i) {
        try {
            this.zzacu.zza(zzvq.zza(this.context, adRequest.zzds()), i);
        } catch (RemoteException e) {
            zzazk.zzc("Failed to load ads.", e);
        }
    }
}
