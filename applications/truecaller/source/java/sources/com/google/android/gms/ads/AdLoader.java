package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbdb;
import com.google.android.gms.internal.ads.zzbdk;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbfg;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzbib;
import com.google.android.gms.internal.ads.zzbis;
import com.google.android.gms.internal.ads.zzblv;
import com.google.android.gms.internal.ads.zzbol;
import com.google.android.gms.internal.ads.zzbon;
import com.google.android.gms.internal.ads.zzboo;
import com.google.android.gms.internal.ads.zzbvd;
import com.google.android.gms.internal.ads.zzbyy;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzcgt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {
    private final zzbdk zza;
    private final Context zzb;
    private final zzbfg zzc;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {
        private final Context zza;
        private final zzbfj zzb;

        public Builder(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
            Preconditions.m38897k(context, "context cannot be null");
            zzbfj zzl = zzber.zzb().zzl(context, str, new zzbvd());
            this.zza = context;
            this.zzb = zzl;
        }

        @RecentlyNonNull
        public AdLoader build() {
            try {
                return new AdLoader(this.zza, this.zzb.zze(), zzbdk.zza);
            } catch (RemoteException e) {
                zzcgt.zzg("Failed to build AdLoader.", e);
                return new AdLoader(this.zza, new zzbib().zzc(), zzbdk.zza);
            }
        }

        @RecentlyNonNull
        public Builder forAdManagerAdView(@RecentlyNonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @RecentlyNonNull AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzb.zzk(new zzbon(onAdManagerAdViewLoadedListener), new zzbdl(this.zza, adSizeArr));
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder forCustomFormatAd(@RecentlyNonNull String str, @RecentlyNonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzbyy zzbyyVar = new zzbyy(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzi(str, zzbyyVar.zzc(), zzbyyVar.zzd());
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder forCustomTemplateAd(@RecentlyNonNull String str, @RecentlyNonNull NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            zzbol zzbolVar = new zzbol(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzi(str, zzbolVar.zzc(), zzbolVar.zzd());
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to add custom template ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder forNativeAd(@RecentlyNonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzb.zzm(new zzbza(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder forUnifiedNativeAd(@RecentlyNonNull UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzb.zzm(new zzboo(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder withAdListener(@RecentlyNonNull AdListener adListener) {
            try {
                this.zzb.zzf(new zzbdb(adListener));
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to set AdListener.", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder withAdManagerAdViewOptions(@RecentlyNonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzb.zzp(adManagerAdViewOptions);
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder withNativeAdOptions(@RecentlyNonNull NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzj(new zzblv(nativeAdOptions));
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to specify native ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder withNativeAdOptions(@RecentlyNonNull com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzj(new zzblv(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzbis(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio()));
            } catch (RemoteException e) {
                zzcgt.zzj("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    public AdLoader(Context context, zzbfg zzbfgVar, zzbdk zzbdkVar) {
        this.zzb = context;
        this.zzc = zzbfgVar;
        this.zza = zzbdkVar;
    }

    private final void zza(zzbhj zzbhjVar) {
        try {
            this.zzc.zze(this.zza.zza(this.zzb, zzbhjVar));
        } catch (RemoteException e) {
            zzcgt.zzg("Failed to load ad.", e);
        }
    }

    public boolean isLoading() {
        try {
            return this.zzc.zzg();
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(@RecentlyNonNull AdRequest adRequest) {
        zza(adRequest.zza());
    }

    public void loadAd(@RecentlyNonNull AdManagerAdRequest adManagerAdRequest) {
        zza(adManagerAdRequest.zza);
    }

    public void loadAds(@RecentlyNonNull AdRequest adRequest, int i) {
        try {
            this.zzc.zzi(this.zza.zza(this.zzb, adRequest.zza()), i);
        } catch (RemoteException e) {
            zzcgt.zzg("Failed to load ads.", e);
        }
    }
}
