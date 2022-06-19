package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzvc;
import com.google.android.gms.internal.ads.zzzm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public class BaseAdView extends ViewGroup {
    public final zzzm zzadf;

    public BaseAdView(Context context, int i) {
        super(context);
        this.zzadf = new zzzm(this, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.zzadf = new zzzm(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.zzadf = new zzzm(this, attributeSet, false, i2);
    }

    public void destroy() {
        this.zzadf.destroy();
    }

    public AdListener getAdListener() {
        return this.zzadf.getAdListener();
    }

    public AdSize getAdSize() {
        return this.zzadf.getAdSize();
    }

    public String getAdUnitId() {
        return this.zzadf.getAdUnitId();
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        return this.zzadf.getMediationAdapterClassName();
    }

    public ResponseInfo getResponseInfo() {
        return this.zzadf.getResponseInfo();
    }

    public boolean isLoading() {
        return this.zzadf.isLoading();
    }

    public void loadAd(AdRequest adRequest) {
        this.zzadf.zza(adRequest.zzds());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzazk.zzc("Unable to retrieve ad size.", e);
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

    public void pause() {
        this.zzadf.pause();
    }

    public void resume() {
        this.zzadf.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.zzadf.setAdListener(adListener);
        if (adListener == null) {
            this.zzadf.zza((zzvc) null);
            this.zzadf.zza((AppEventListener) null);
            return;
        }
        if (adListener instanceof zzvc) {
            this.zzadf.zza((zzvc) adListener);
        }
        if (!(adListener instanceof AppEventListener)) {
            return;
        }
        this.zzadf.zza((AppEventListener) adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.zzadf.setAdSizes(new AdSize[]{adSize});
    }

    public void setAdUnitId(String str) {
        this.zzadf.setAdUnitId(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.zzadf.setOnPaidEventListener(onPaidEventListener);
    }
}
