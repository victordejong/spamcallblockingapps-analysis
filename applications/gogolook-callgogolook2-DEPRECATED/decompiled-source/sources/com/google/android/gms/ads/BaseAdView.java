package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7477z2;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
import p081h.p203i.p204a.p224e.p259j.p260a.C7468y5;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public class BaseAdView extends ViewGroup {
    public final C7468y5 zzve;

    public BaseAdView(Context context, int i) {
        super(context);
        this.zzve = new C7468y5(this, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.zzve = new C7468y5(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.zzve = new C7468y5(this, attributeSet, false, i2);
    }

    public void destroy() {
        this.zzve.m20503a();
    }

    public AdListener getAdListener() {
        return this.zzve.m20488b();
    }

    public AdSize getAdSize() {
        return this.zzve.m20486c();
    }

    public String getAdUnitId() {
        return this.zzve.m20484e();
    }

    public String getMediationAdapterClassName() {
        return this.zzve.m20482g();
    }

    public boolean isLoading() {
        return this.zzve.m20478k();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(AdRequest adRequest) {
        this.zzve.m20494a(adRequest.zzay());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public void onMeasure(int i, int i2) {
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

    public void pause() {
        this.zzve.m20477l();
    }

    public void resume() {
        this.zzve.m20475n();
    }

    public void setAdListener(AdListener adListener) {
        this.zzve.m20500a(adListener);
        if (adListener == null) {
            this.zzve.m20492a((AbstractC7477z2) null);
            this.zzve.m20497a((AppEventListener) null);
            return;
        }
        if (adListener instanceof AbstractC7477z2) {
            this.zzve.m20492a((AbstractC7477z2) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.zzve.m20497a((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.zzve.m20489a(adSize);
    }

    public void setAdUnitId(String str) {
        this.zzve.m20491a(str);
    }
}
