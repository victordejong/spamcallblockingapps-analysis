package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
import p081h.p203i.p204a.p224e.p259j.p260a.C7468y5;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdView.class */
public final class PublisherAdView extends ViewGroup {
    public final C7468y5 zzve;

    public PublisherAdView(Context context) {
        super(context);
        this.zzve = new C7468y5(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzve = new C7468y5(this, attributeSet, true);
        C7021t.m21289a(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzve = new C7468y5(this, attributeSet, true);
    }

    public final void destroy() {
        this.zzve.m20503a();
    }

    public final AdListener getAdListener() {
        return this.zzve.m20488b();
    }

    public final AdSize getAdSize() {
        return this.zzve.m20486c();
    }

    public final AdSize[] getAdSizes() {
        return this.zzve.m20485d();
    }

    public final String getAdUnitId() {
        return this.zzve.m20484e();
    }

    public final AppEventListener getAppEventListener() {
        return this.zzve.m20483f();
    }

    public final String getMediationAdapterClassName() {
        return this.zzve.m20482g();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzve.m20481h();
    }

    public final VideoController getVideoController() {
        return this.zzve.m20480i();
    }

    public final VideoOptions getVideoOptions() {
        return this.zzve.m20479j();
    }

    public final boolean isLoading() {
        return this.zzve.m20478k();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzve.m20494a(publisherAdRequest.zzay());
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
                C7452x1.m20571b("Unable to retrieve ad size.", e);
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
        this.zzve.m20477l();
    }

    public final void recordManualImpression() {
        this.zzve.m20476m();
    }

    public final void resume() {
        this.zzve.m20475n();
    }

    public final void setAdListener(AdListener adListener) {
        this.zzve.m20500a(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.zzve.m20487b(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.zzve.m20491a(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.zzve.m20497a(appEventListener);
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzve.m20499a(correlator);
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzve.m20490a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzve.m20496a(onCustomRenderedAdLoadedListener);
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzve.m20498a(videoOptions);
    }

    public final boolean zza(AbstractC7322m4 m4Var) {
        return this.zzve.m20495a(m4Var);
    }
}
