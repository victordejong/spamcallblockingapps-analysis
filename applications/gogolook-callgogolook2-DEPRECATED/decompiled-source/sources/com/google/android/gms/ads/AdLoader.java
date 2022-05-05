package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7193c3;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7213da;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7351o9;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7363p9;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7376q9;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7388r9;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7400s9;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7424u9;
import p081h.p203i.p204a.p224e.p259j.p260a.C7258h3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7444w5;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {
    public final Context mContext;
    public final C7258h3 zzuv;
    public final AbstractC7220e4 zzuw;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {
        public final Context mContext;
        public final AbstractC7259h4 zzux;

        public Builder(Context context, AbstractC7259h4 h4Var) {
            this.mContext = context;
            this.zzux = h4Var;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Context context, String str) {
            this(context, C7430v3.m20639b().m20866a(context, str, new BinderC7213da()));
            C7021t.m21289a(context, "context cannot be null");
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.mContext, this.zzux.mo20882F());
            } catch (RemoteException e) {
                C7452x1.m20571b("Failed to build AdLoader.", e);
                return null;
            }
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zzux.mo20875a(new BinderC7351o9(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zzux.mo20874a(new BinderC7363p9(onContentAdLoadedListener));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            try {
                this.zzux.mo20873a(str, new BinderC7388r9(onCustomTemplateAdLoadedListener), onCustomClickListener == null ? null : new BinderC7376q9(onCustomClickListener));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzux.mo20877a(new BinderC7400s9(onPublisherAdViewLoadedListener), new zzjo(this.mContext, adSizeArr));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzux.mo20876a(new BinderC7424u9(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzux.mo20878a(new BinderC7193c3(adListener));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withCorrelator(@NonNull Correlator correlator) {
            C7021t.m21290a(correlator);
            try {
                this.zzux.mo20879a(correlator.zzvf);
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to set correlator.", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zzux.mo20880a(new zzpy(nativeAdOptions));
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to specify native ad options", e);
            }
            return this;
        }

        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.zzux.mo20881a(publisherAdViewOptions);
            } catch (RemoteException e) {
                C7452x1.m20569c("Failed to specify DFP banner ad options", e);
            }
            return this;
        }
    }

    public AdLoader(Context context, AbstractC7220e4 e4Var) {
        this(context, e4Var, C7258h3.f17345a);
    }

    public AdLoader(Context context, AbstractC7220e4 e4Var, C7258h3 h3Var) {
        this.mContext = context;
        this.zzuw = e4Var;
        this.zzuv = h3Var;
    }

    private final void zza(C7444w5 w5Var) {
        try {
            this.zzuw.mo20916a(C7258h3.m20921a(this.mContext, w5Var));
        } catch (RemoteException e) {
            C7452x1.m20571b("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.zzuw.mo20917H();
        } catch (RemoteException e) {
            C7452x1.m20569c("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.zzuw.isLoading();
        } catch (RemoteException e) {
            C7452x1.m20569c("Failed to check if ad is loading.", e);
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(AdRequest adRequest) {
        zza(adRequest.zzay());
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzay());
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAds(AdRequest adRequest, int i) {
        try {
            this.zzuw.mo20915a(C7258h3.m20921a(this.mContext, adRequest.zzay()), i);
        } catch (RemoteException e) {
            C7452x1.m20571b("Failed to load ads.", e);
        }
    }
}
