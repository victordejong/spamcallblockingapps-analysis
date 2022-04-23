package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzse;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzxc;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAdView.class */
public final class AppOpenAdView extends ViewGroup {

    /* renamed from: a */
    public AppOpenAd f22687a;

    /* renamed from: b */
    public AppOpenAdPresentationCallback f22688b;

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private final AdSize getAdSize() {
        zzxc a = this.f22687a.mo11469a();
        if (a == null) {
            return null;
        }
        try {
            zzvn f2 = a.mo10943f2();
            if (f2 != null) {
                return f2.m11196f();
            }
            return null;
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final void m18079a() {
        AppOpenAd appOpenAd = this.f22687a;
        if (appOpenAd != null && this.f22688b != null) {
            appOpenAd.mo11467a(new zzse(this.f22688b));
        }
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

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        IObjectWrapper Q0;
        try {
            zzxc a = appOpenAd.mo11469a();
            if (a != null && (Q0 = a.mo10968Q0()) != null) {
                View view = (View) ObjectWrapper.m17021Q(Q0);
                if (view.getParent() == null) {
                    removeAllViews();
                    addView(view);
                    this.f22687a = appOpenAd;
                    m18079a();
                    return;
                }
                zzbbq.m15856b("Trying to set AppOpenAd which is already in use.");
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.f22688b = appOpenAdPresentationCallback;
        m18079a();
    }
}
