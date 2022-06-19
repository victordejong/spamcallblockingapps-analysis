package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.BinderC12251bs;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.ekw;
import com.google.android.gms.internal.ads.emt;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdView.class */
public final class PublisherAdView extends ViewGroup {
    private final emt zzaeh;

    public PublisherAdView(Context context) {
        super(context);
        this.zzaeh = new emt(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzaeh = new emt(this, attributeSet, true);
        C12045o.m19161a(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzaeh = new emt(this, attributeSet, true);
    }

    public final void destroy() {
        this.zzaeh.m14774a();
    }

    public final AdListener getAdListener() {
        return this.zzaeh.f49199b;
    }

    public final AdSize getAdSize() {
        return this.zzaeh.m14762b();
    }

    public final AdSize[] getAdSizes() {
        return this.zzaeh.f49200c;
    }

    public final String getAdUnitId() {
        return this.zzaeh.m14760c();
    }

    public final AppEventListener getAppEventListener() {
        return this.zzaeh.f49202e;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzaeh.m14756g();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzaeh.f49204g;
    }

    public final ResponseInfo getResponseInfo() {
        return this.zzaeh.m14754i();
    }

    public final VideoController getVideoController() {
        return this.zzaeh.f49198a;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzaeh.f49205h;
    }

    public final boolean isLoading() {
        return this.zzaeh.m14755h();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzaeh.m14766a(publisherAdRequest.zzdt());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                C13088za.zzc("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                i4 = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public final void pause() {
        this.zzaeh.m14759d();
    }

    public final void recordManualImpression() {
        this.zzaeh.m14758e();
    }

    public final void resume() {
        this.zzaeh.m14757f();
    }

    public final void setAdListener(AdListener adListener) {
        this.zzaeh.m14771a(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.zzaeh.m14761b(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.zzaeh.m14765a(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.zzaeh.m14769a(appEventListener);
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzaeh.m14764a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        emt emtVar = this.zzaeh;
        emtVar.f49204g = onCustomRenderedAdLoadedListener;
        try {
            if (emtVar.f49203f == null) {
                return;
            }
            emtVar.f49203f.zza(onCustomRenderedAdLoadedListener != null ? new BinderC12251bs(onCustomRenderedAdLoadedListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzaeh.m14770a(videoOptions);
    }

    public final boolean zza(ekw ekwVar) {
        return this.zzaeh.m14767a(ekwVar);
    }
}
