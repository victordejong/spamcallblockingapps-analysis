package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.BinderC12896s;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.emt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public class BaseAdView extends ViewGroup {
    protected final emt zzadm;

    public BaseAdView(Context context, int i) {
        super(context);
        this.zzadm = new emt(this, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.zzadm = new emt(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.zzadm = new emt(this, attributeSet, false, i2);
    }

    public void destroy() {
        this.zzadm.m14774a();
    }

    public AdListener getAdListener() {
        return this.zzadm.f49199b;
    }

    public AdSize getAdSize() {
        return this.zzadm.m14762b();
    }

    public String getAdUnitId() {
        return this.zzadm.m14760c();
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        return this.zzadm.m14756g();
    }

    public ResponseInfo getResponseInfo() {
        return this.zzadm.m14754i();
    }

    public boolean isLoading() {
        return this.zzadm.m14755h();
    }

    public void loadAd(AdRequest adRequest) {
        this.zzadm.m14766a(adRequest.zzdt());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    protected void onMeasure(int i, int i2) {
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

    public void pause() {
        this.zzadm.m14759d();
    }

    public void resume() {
        this.zzadm.m14757f();
    }

    public void setAdListener(AdListener adListener) {
        this.zzadm.m14771a(adListener);
        if (adListener == null) {
            this.zzadm.m14768a((eir) null);
            this.zzadm.m14769a((AppEventListener) null);
            return;
        }
        if (adListener instanceof eir) {
            this.zzadm.m14768a((eir) adListener);
        }
        if (!(adListener instanceof AppEventListener)) {
            return;
        }
        this.zzadm.m14769a((AppEventListener) adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.zzadm.m14763a(adSize);
    }

    public void setAdUnitId(String str) {
        this.zzadm.m14765a(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        emt emtVar = this.zzadm;
        try {
            emtVar.f49206i = onPaidEventListener;
            if (emtVar.f49203f == null) {
                return;
            }
            emtVar.f49203f.zza(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zze("#008 Must be called on the main UI thread.", e);
        }
    }
}
