package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.bs;
import com.google.android.gms.internal.ads.ejg;
import com.google.android.gms.internal.ads.emv;
import com.google.android.gms.internal.ads.za;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherInterstitialAd.class */
public final class PublisherInterstitialAd {
    private final emv zzadr;

    public PublisherInterstitialAd(Context context) {
        this.zzadr = new emv(context, this);
        o.a(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzadr.f27964a;
    }

    public final String getAdUnitId() {
        return this.zzadr.f27966c;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzadr.e;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzadr.d();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzadr.f;
    }

    public final ResponseInfo getResponseInfo() {
        return this.zzadr.e();
    }

    public final boolean isLoaded() {
        return this.zzadr.a();
    }

    public final boolean isLoading() {
        return this.zzadr.b();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzadr.a(publisherAdRequest.zzdt());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzadr.a(adListener);
    }

    public final void setAdUnitId(String str) {
        this.zzadr.a(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.e = appEventListener;
            if (emvVar.f27965b != null) {
                emvVar.f27965b.zza(appEventListener != null ? new ejg(appEventListener) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setImmersiveMode(boolean z) {
        this.zzadr.a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f = onCustomRenderedAdLoadedListener;
            if (emvVar.f27965b != null) {
                emvVar.f27965b.zza(onCustomRenderedAdLoadedListener != null ? new bs(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show() {
        this.zzadr.f();
    }
}
