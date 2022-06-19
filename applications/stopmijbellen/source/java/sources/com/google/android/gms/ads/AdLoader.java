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
import com.google.android.gms.internal.ads.zzbey;
import com.google.android.gms.internal.ads.zzbfh;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzbjz;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbnw;
import com.google.android.gms.internal.ads.zzbqn;
import com.google.android.gms.internal.ads.zzbqp;
import com.google.android.gms.internal.ads.zzbqq;
import com.google.android.gms.internal.ads.zzbxe;
import com.google.android.gms.internal.ads.zzcba;
import com.google.android.gms.internal.ads.zzcbc;
import com.google.android.gms.internal.ads.zzciz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {
    private final zzbfh zza;
    private final Context zzb;
    private final zzbhd zzc;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {
        private final Context zza;
        private final zzbhg zzb;

        public Builder(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
            Context context2 = (Context) Preconditions.checkNotNull(context, "context cannot be null");
            zzbhg zzc = zzbgo.zza().zzc(context, str, new zzbxe());
            this.zza = context2;
            this.zzb = zzc;
        }

        @RecentlyNonNull
        public AdLoader build() {
            try {
                return new AdLoader(this.zza, this.zzb.zze(), zzbfh.zza);
            } catch (RemoteException e) {
                zzciz.zzh("Failed to build AdLoader.", e);
                return new AdLoader(this.zza, new zzbjz().zzc(), zzbfh.zza);
            }
        }

        @RecentlyNonNull
        public Builder forAdManagerAdView(@RecentlyNonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @RecentlyNonNull AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzb.zzj(new zzbqp(onAdManagerAdViewLoadedListener), new zzbfi(this.zza, adSizeArr));
            } catch (RemoteException e) {
                zzciz.zzk("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder forCustomFormatAd(@RecentlyNonNull String str, @RecentlyNonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzcba zzcbaVar = new zzcba(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzh(str, zzcbaVar.zzb(), zzcbaVar.zza());
            } catch (RemoteException e) {
                zzciz.zzk("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder forCustomTemplateAd(@RecentlyNonNull String str, @RecentlyNonNull NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            zzbqn zzbqnVar = new zzbqn(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzh(str, zzbqnVar.zze(), zzbqnVar.zzd());
            } catch (RemoteException e) {
                zzciz.zzk("Failed to add custom template ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder forNativeAd(@RecentlyNonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzb.zzk(new zzcbc(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzciz.zzk("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder forUnifiedNativeAd(@RecentlyNonNull UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzb.zzk(new zzbqq(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzciz.zzk("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder withAdListener(@RecentlyNonNull AdListener adListener) {
            try {
                this.zzb.zzl(new zzbey(adListener));
            } catch (RemoteException e) {
                zzciz.zzk("Failed to set AdListener.", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder withAdManagerAdViewOptions(@RecentlyNonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzb.zzm(adManagerAdViewOptions);
            } catch (RemoteException e) {
                zzciz.zzk("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder withNativeAdOptions(@RecentlyNonNull NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzo(new zzbnw(nativeAdOptions));
            } catch (RemoteException e) {
                zzciz.zzk("Failed to specify native ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        public Builder withNativeAdOptions(@RecentlyNonNull com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzo(new zzbnw(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzbkq(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio()));
            } catch (RemoteException e) {
                zzciz.zzk("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    public AdLoader(Context context, zzbhd zzbhdVar, zzbfh zzbfhVar) {
        this.zzb = context;
        this.zzc = zzbhdVar;
        this.zza = zzbfhVar;
    }

    private final void zza(zzbjg zzbjgVar) {
        try {
            this.zzc.zzg(this.zza.zza(this.zzb, zzbjgVar));
        } catch (RemoteException e) {
            zzciz.zzh("Failed to load ad.", e);
        }
    }

    public boolean isLoading() {
        try {
            return this.zzc.zzi();
        } catch (RemoteException e) {
            zzciz.zzk("Failed to check if ad is loading.", e);
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
            this.zzc.zzh(this.zza.zza(this.zzb, adRequest.zza()), i);
        } catch (RemoteException e) {
            zzciz.zzh("Failed to load ads.", e);
        }
    }
}
