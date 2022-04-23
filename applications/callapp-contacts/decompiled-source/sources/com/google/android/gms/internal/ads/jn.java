package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jn.class */
public final class jn<AdT> extends AdManagerInterstitialAd {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28081a;

    /* renamed from: b  reason: collision with root package name */
    private final ejb f28082b = ejb.f27877a;

    /* renamed from: c  reason: collision with root package name */
    private final ekw f28083c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28084d;
    private AppEventListener e;
    private FullScreenContentCallback f;
    private OnPaidEventListener g;

    public jn(Context context, String str) {
        this.f28081a = context;
        this.f28084d = str;
        this.f28083c = ekb.b().b(context, new zzvt(), str, new mj());
    }

    public final void a(emr emrVar, AdLoadCallback<AdT> adLoadCallback) {
        try {
            this.f28083c.zza(ejb.a(this.f28081a, emrVar), new eix(adLoadCallback, this));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        return this.f28084d;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final AppEventListener getAppEventListener() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            ekw ekwVar = this.f28083c;
            emjVar = null;
            if (ekwVar != null) {
                emjVar = ekwVar.zzkm();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.e = appEventListener;
            this.f28083c.zza(appEventListener != null ? new eew(appEventListener) : null);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.f = fullScreenContentCallback;
            this.f28083c.zza(new ekd(fullScreenContentCallback));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f28083c.setImmersiveMode(z);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.g = onPaidEventListener;
            this.f28083c.zza(new s(onPaidEventListener));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            za.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.f28083c.zze(d.a(activity));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
