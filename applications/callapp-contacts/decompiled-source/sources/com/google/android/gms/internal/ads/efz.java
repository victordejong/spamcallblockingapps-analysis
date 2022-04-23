package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efz.class */
public final class efz extends AppOpenAd {

    /* renamed from: a  reason: collision with root package name */
    private final egb f27806a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27807b;

    /* renamed from: c  reason: collision with root package name */
    private final efy f27808c = new efy();

    /* renamed from: d  reason: collision with root package name */
    private FullScreenContentCallback f27809d;
    private OnPaidEventListener e;

    public efz(egb egbVar, String str) {
        this.f27806a = egbVar;
        this.f27807b = str;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final String getAdUnitId() {
        return this.f27807b;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.f27809d;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f27806a.b();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.f27809d = fullScreenContentCallback;
        this.f27808c.f27805a = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f27806a.a(z);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.e = onPaidEventListener;
        try {
            this.f27806a.a(new s(onPaidEventListener));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity) {
        try {
            this.f27806a.a(d.a(activity), this.f27808c);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity, FullScreenContentCallback fullScreenContentCallback) {
        this.f27809d = fullScreenContentCallback;
        this.f27808c.f27805a = fullScreenContentCallback;
        if (activity == null) {
            za.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.f27806a.a(d.a(activity), this.f27808c);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void zza(egh eghVar) {
        try {
            this.f27806a.a(eghVar);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ekw zzea() {
        try {
            return this.f27806a.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
