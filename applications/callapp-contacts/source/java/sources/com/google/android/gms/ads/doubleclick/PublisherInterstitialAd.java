package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.BinderC12251bs;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.ejg;
import com.google.android.gms.internal.ads.emv;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherInterstitialAd.class */
public final class PublisherInterstitialAd {
    private final emv zzadr;

    public PublisherInterstitialAd(Context context) {
        this.zzadr = new emv(context, this);
        C12045o.m19161a(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzadr.f49236a;
    }

    public final String getAdUnitId() {
        return this.zzadr.f49238c;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzadr.f49240e;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzadr.m14732d();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzadr.f49241f;
    }

    public final ResponseInfo getResponseInfo() {
        return this.zzadr.m14731e();
    }

    public final boolean isLoaded() {
        return this.zzadr.m14741a();
    }

    public final boolean isLoading() {
        return this.zzadr.m14735b();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzadr.m14738a(publisherAdRequest.zzdt());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzadr.m14740a(adListener);
    }

    public final void setAdUnitId(String str) {
        this.zzadr.m14737a(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f49240e = appEventListener;
            if (emvVar.f49237b == null) {
                return;
            }
            emvVar.f49237b.zza(appEventListener != null ? new ejg(appEventListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setImmersiveMode(boolean z) {
        this.zzadr.m14736a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f49241f = onCustomRenderedAdLoadedListener;
            if (emvVar.f49237b == null) {
                return;
            }
            emvVar.f49237b.zza(onCustomRenderedAdLoadedListener != null ? new BinderC12251bs(onCustomRenderedAdLoadedListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show() {
        this.zzadr.m14730f();
    }
}
