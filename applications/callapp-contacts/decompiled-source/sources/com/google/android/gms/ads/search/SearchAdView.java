package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ads.emt;
import com.google.android.gms.internal.ads.za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/search/SearchAdView.class */
public final class SearchAdView extends ViewGroup {
    private final emt zzaeh;

    public SearchAdView(Context context) {
        super(context);
        this.zzaeh = new emt(this);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzaeh = new emt(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzaeh = new emt(this, attributeSet, false);
    }

    public final void destroy() {
        this.zzaeh.a();
    }

    public final AdListener getAdListener() {
        return this.zzaeh.f27957b;
    }

    public final AdSize getAdSize() {
        return this.zzaeh.b();
    }

    public final String getAdUnitId() {
        return this.zzaeh.c();
    }

    public final void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
        if (AdSize.SEARCH.equals(getAdSize())) {
            this.zzaeh.a(dynamicHeightSearchAdRequest.zzdt());
            return;
        }
        throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
    }

    public final void loadAd(SearchAdRequest searchAdRequest) {
        this.zzaeh.a(searchAdRequest.zzdt());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    protected final void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                za.zzc("Unable to retrieve ad size.", e);
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
        this.zzaeh.d();
    }

    public final void resume() {
        this.zzaeh.f();
    }

    public final void setAdListener(AdListener adListener) {
        this.zzaeh.a(adListener);
    }

    public final void setAdSize(AdSize adSize) {
        this.zzaeh.a(adSize);
    }

    public final void setAdUnitId(String str) {
        this.zzaeh.a(str);
    }
}
