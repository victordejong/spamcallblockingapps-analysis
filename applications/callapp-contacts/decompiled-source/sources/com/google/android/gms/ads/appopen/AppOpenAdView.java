package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.efw;
import com.google.android.gms.internal.ads.ekw;
import com.google.android.gms.internal.ads.za;
import com.google.android.gms.internal.ads.zzvt;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAdView.class */
public final class AppOpenAdView extends ViewGroup {
    private AppOpenAd zzaei;
    private AppOpenAdPresentationCallback zzaej;

    public AppOpenAdView(Context context) {
        super(context);
        o.a(context, "Context cannot be null");
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private final AdSize getAdSize() {
        ekw zzea = this.zzaei.zzea();
        if (zzea == null) {
            return null;
        }
        try {
            zzvt zzkk = zzea.zzkk();
            if (zzkk != null) {
                return zzkk.zzqo();
            }
            return null;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    private final void zzeb() {
        AppOpenAd appOpenAd = this.zzaei;
        if (appOpenAd != null && this.zzaej != null) {
            appOpenAd.zza(new efw(this.zzaej));
        }
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

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        b zzki;
        try {
            ekw zzea = appOpenAd.zzea();
            if (zzea != null && (zzki = zzea.zzki()) != null) {
                View view = (View) d.a(zzki);
                if (view.getParent() == null) {
                    removeAllViews();
                    addView(view);
                    this.zzaei = appOpenAd;
                    zzeb();
                    return;
                }
                za.zzex("Trying to set AppOpenAd which is already in use.");
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.zzaej = appOpenAdPresentationCallback;
        zzeb();
    }
}
