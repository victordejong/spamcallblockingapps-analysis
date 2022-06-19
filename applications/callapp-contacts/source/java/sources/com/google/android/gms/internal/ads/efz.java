package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efz.class */
public final class efz extends AppOpenAd {

    /* renamed from: a */
    private final egb f48990a;

    /* renamed from: b */
    private final String f48991b;

    /* renamed from: c */
    private final efy f48992c = new efy();

    /* renamed from: d */
    private FullScreenContentCallback f48993d;

    /* renamed from: e */
    private OnPaidEventListener f48994e;

    public efz(egb egbVar, String str) {
        this.f48990a = egbVar;
        this.f48991b = str;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final String getAdUnitId() {
        return this.f48991b;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.f48993d;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f48994e;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f48990a.mo15075b();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.f48993d = fullScreenContentCallback;
        this.f48992c.f48989a = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f48990a.mo15076a(z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.f48994e = onPaidEventListener;
        try {
            this.f48990a.mo15077a(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity) {
        try {
            this.f48990a.mo15079a(BinderC12129d.m18979a(activity), this.f48992c);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity, FullScreenContentCallback fullScreenContentCallback) {
        this.f48993d = fullScreenContentCallback;
        this.f48992c.f48989a = fullScreenContentCallback;
        if (activity == null) {
            C13088za.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.f48990a.mo15079a(BinderC12129d.m18979a(activity), this.f48992c);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void zza(egh eghVar) {
        try {
            this.f48990a.mo15078a(eghVar);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ekw zzea() {
        try {
            return this.f48990a.mo15080a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
