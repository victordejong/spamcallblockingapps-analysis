package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC12428dv;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.ekb;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdView.class */
public class NativeAdView extends FrameLayout {
    private final FrameLayout zzboi;
    private final AbstractC12428dv zzboj = zzjy();

    public NativeAdView(Context context) {
        super(context);
        this.zzboi = zzd(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzboi = zzd(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzboi = zzd(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zzboi = zzd(context);
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final AbstractC12428dv zzjy() {
        C12045o.m19161a(this.zzboi, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return ekb.m14834b().m14860a(this.zzboi.getContext(), this, this.zzboi);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzboi);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzboi;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        try {
            this.zzboj.mo14475a();
        } catch (RemoteException e) {
            C13088za.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        AbstractC12428dv abstractC12428dv;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42702bL)).booleanValue() && (abstractC12428dv = this.zzboj) != null) {
            try {
                abstractC12428dv.mo14468c(BinderC12129d.m18979a(motionEvent));
            } catch (RemoteException e) {
                C13088za.zzc("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View zzbj = zzbj(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (zzbj instanceof AdChoicesView) {
            return (AdChoicesView) zzbj;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        AbstractC12428dv abstractC12428dv = this.zzboj;
        if (abstractC12428dv != null) {
            try {
                abstractC12428dv.mo14473a(BinderC12129d.m18979a(view), i);
            } catch (RemoteException e) {
                C13088za.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzboi);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.zzboi == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzboj.mo14474a((AbstractC12126b) nativeAd.zzjw());
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void zza(String str, View view) {
        try {
            this.zzboj.mo14470a(str, BinderC12129d.m18979a(view));
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    public final View zzbj(String str) {
        try {
            AbstractC12126b mo14471a = this.zzboj.mo14471a(str);
            if (mo14471a == null) {
                return null;
            }
            return (View) BinderC12129d.m18980a(mo14471a);
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }
}
