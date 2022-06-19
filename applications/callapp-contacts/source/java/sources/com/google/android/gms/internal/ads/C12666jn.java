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
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.jn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jn.class */
public final class C12666jn<AdT> extends AdManagerInterstitialAd {

    /* renamed from: a */
    private final Context f49390a;

    /* renamed from: b */
    private final ejb f49391b = ejb.f49085a;

    /* renamed from: c */
    private final ekw f49392c;

    /* renamed from: d */
    private final String f49393d;

    /* renamed from: e */
    private AppEventListener f49394e;

    /* renamed from: f */
    private FullScreenContentCallback f49395f;

    /* renamed from: g */
    private OnPaidEventListener f49396g;

    public C12666jn(Context context, String str) {
        this.f49390a = context;
        this.f49393d = str;
        this.f49392c = ekb.m14834b().m14853b(context, new zzvt(), str, new BinderC12743mj());
    }

    /* renamed from: a */
    public final void m14577a(emr emrVar, AdLoadCallback<AdT> adLoadCallback) {
        try {
            this.f49392c.zza(ejb.m14863a(this.f49390a, emrVar), new eix(adLoadCallback, this));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        return this.f49393d;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final AppEventListener getAppEventListener() {
        return this.f49394e;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.f49395f;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f49396g;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            ekw ekwVar = this.f49392c;
            emjVar = null;
            if (ekwVar != null) {
                emjVar = ekwVar.zzkm();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.f49394e = appEventListener;
            this.f49392c.zza(appEventListener != null ? new eew(appEventListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.f49395f = fullScreenContentCallback;
            this.f49392c.zza(new ekd(fullScreenContentCallback));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f49392c.setImmersiveMode(z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f49396g = onPaidEventListener;
            this.f49392c.zza(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            C13088za.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.f49392c.zze(BinderC12129d.m18979a(activity));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
