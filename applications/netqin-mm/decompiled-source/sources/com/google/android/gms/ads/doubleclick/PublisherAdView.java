package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzyy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdView.class */
public final class PublisherAdView extends ViewGroup {

    /* renamed from: a */
    public final zzyy f22691a;

    public PublisherAdView(Context context) {
        super(context);
        this.f22691a = new zzyy(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22691a = new zzyy(this, attributeSet, true);
        Preconditions.m17287a(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f22691a = new zzyy(this, attributeSet, true);
    }

    /* renamed from: a */
    public final boolean m18073a(zzxc zzxcVar) {
        return this.f22691a.m11065a(zzxcVar);
    }

    public final AdListener getAdListener() {
        return this.f22691a.m11059b();
    }

    public final AdSize getAdSize() {
        return this.f22691a.m11057c();
    }

    public final AdSize[] getAdSizes() {
        return this.f22691a.m11056d();
    }

    public final String getAdUnitId() {
        return this.f22691a.m11055e();
    }

    public final AppEventListener getAppEventListener() {
        return this.f22691a.m11054f();
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.f22691a.m11053g();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.f22691a.m11052h();
    }

    public final ResponseInfo getResponseInfo() {
        return this.f22691a.m11051i();
    }

    public final VideoController getVideoController() {
        return this.f22691a.m11050j();
    }

    public final VideoOptions getVideoOptions() {
        return this.f22691a.m11049k();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzbbq.m15855b("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                i4 = adSize.m18132b(context);
                i3 = adSize.m18135a(context);
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

    public final void setAdListener(AdListener adListener) {
        this.f22691a.m11071a(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f22691a.m11058b(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.f22691a.m11062a(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.f22691a.m11068a(appEventListener);
    }

    @KeepForSdk
    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.f22691a.m11061a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f22691a.m11067a(onCustomRenderedAdLoadedListener);
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.f22691a.m11069a(videoOptions);
    }
}
