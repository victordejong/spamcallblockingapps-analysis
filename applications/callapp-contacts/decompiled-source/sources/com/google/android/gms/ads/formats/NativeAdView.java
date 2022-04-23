package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.dv;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.za;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdView.class */
public class NativeAdView extends FrameLayout {
    private final FrameLayout zzboi;
    private final dv zzboj = zzjy();

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

    private final dv zzjy() {
        o.a(this.zzboi, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return ekb.b().a(this.zzboi.getContext(), this, this.zzboi);
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
            this.zzboj.a();
        } catch (RemoteException e) {
            za.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        dv dvVar;
        if (((Boolean) ekb.e().a(aq.bL)).booleanValue() && (dvVar = this.zzboj) != null) {
            try {
                dvVar.c(d.a(motionEvent));
            } catch (RemoteException e) {
                za.zzc("Unable to call handleTouchEvent on delegate", e);
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
        dv dvVar = this.zzboj;
        if (dvVar != null) {
            try {
                dvVar.a(d.a(view), i);
            } catch (RemoteException e) {
                za.zzc("Unable to call onVisibilityChanged on delegate", e);
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
        if (this.zzboi != view) {
            super.removeView(view);
        }
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzboj.a((b) nativeAd.zzjw());
        } catch (RemoteException e) {
            za.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(String str, View view) {
        try {
            this.zzboj.a(str, d.a(view));
        } catch (RemoteException e) {
            za.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View zzbj(String str) {
        try {
            b a2 = this.zzboj.a(str);
            if (a2 != null) {
                return (View) d.a(a2);
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }
}
