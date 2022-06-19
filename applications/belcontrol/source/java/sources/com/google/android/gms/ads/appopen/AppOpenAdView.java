package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzsj;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzxl;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAdView.class */
public final class AppOpenAdView extends ViewGroup {
    private AppOpenAd zzaeb;
    private AppOpenAdPresentationCallback zzaec;

    public AppOpenAdView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private final AdSize getAdSize() {
        zzxl zzdx = this.zzaeb.zzdx();
        if (zzdx != null) {
            try {
                zzvs zzkg = zzdx.zzkg();
                if (zzkg == null) {
                    return null;
                }
                return zzkg.zzqi();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
        return null;
    }

    private final void zzdy() {
        AppOpenAd appOpenAd = this.zzaeb;
        if (appOpenAd == null || this.zzaec == null) {
            return;
        }
        appOpenAd.zza(new zzsj(this.zzaec));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public final void onMeasure(int i, int i2) {
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

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        IObjectWrapper zzke;
        try {
            zzxl zzdx = appOpenAd.zzdx();
            if (zzdx == null || (zzke = zzdx.zzke()) == null) {
                return;
            }
            View view = (View) ObjectWrapper.unwrap(zzke);
            if (view.getParent() != null) {
                zzazk.zzev("Trying to set AppOpenAd which is already in use.");
                return;
            }
            removeAllViews();
            addView(view);
            this.zzaeb = appOpenAd;
            zzdy();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.zzaec = appOpenAdPresentationCallback;
        zzdy();
    }
}
