package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    public View zzhu;
    public CustomEventBanner zzhv;
    public CustomEventInterstitial zzhw;

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$zza.class */
    public static final class zza implements CustomEventBannerListener {
        public final CustomEventAdapter zzhx;
        public final MediationBannerListener zzhy;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzhx = customEventAdapter;
            this.zzhy = mediationBannerListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onClick() {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhy.onClick(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhy.onDismissScreen(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhy.onFailedToReceiveAd(this.zzhx, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhy.onLeaveApplication(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhy.onPresentScreen(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onReceivedAd(View view) {
            C7452x1.m20572b("Custom event adapter called onReceivedAd.");
            this.zzhx.zza(view);
            this.zzhy.onReceivedAd(this.zzhx);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$zzb.class */
    public final class zzb implements CustomEventInterstitialListener {
        public final CustomEventAdapter zzhx;
        public final MediationInterstitialListener zzhz;

        public zzb(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzhx = customEventAdapter;
            this.zzhz = mediationInterstitialListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            C7452x1.m20572b("Custom event adapter called onDismissScreen.");
            this.zzhz.onDismissScreen(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhz.onFailedToReceiveAd(this.zzhx, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            C7452x1.m20572b("Custom event adapter called onLeaveApplication.");
            this.zzhz.onLeaveApplication(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            C7452x1.m20572b("Custom event adapter called onPresentScreen.");
            this.zzhz.onPresentScreen(this.zzhx);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onReceivedAd() {
            C7452x1.m20572b("Custom event adapter called onReceivedAd.");
            this.zzhz.onReceivedAd(CustomEventAdapter.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view) {
        this.zzhu = view;
    }

    public static <T> T zzi(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            C7452x1.m20568d(sb.toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final void destroy() {
        CustomEventBanner customEventBanner = this.zzhv;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzhw;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zzhu;
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    public final void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.zzhv = (CustomEventBanner) zzi(customEventServerParameters.className);
        if (this.zzhv == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.zzhv.requestBannerAd(new zza(this, mediationBannerListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, adSize, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    public final void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.zzhw = (CustomEventInterstitial) zzi(customEventServerParameters.className);
        if (this.zzhw == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.zzhw.requestInterstitialAd(new zzb(this, mediationInterstitialListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzhw.showInterstitial();
    }
}
