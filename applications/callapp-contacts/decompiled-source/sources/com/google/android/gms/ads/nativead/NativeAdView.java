package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.dh;
import com.google.android.gms.internal.ads.di;
import com.google.android.gms.internal.ads.dq;
import com.google.android.gms.internal.ads.dv;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdView.class */
public final class NativeAdView extends FrameLayout {
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

    private final void zza(String str, View view) {
        try {
            this.zzboj.a(str, d.a(view));
        } catch (RemoteException e) {
            za.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    private final View zzbj(String str) {
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

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final dv zzjy() {
        o.a(this.zzboi, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return ekb.b().a(this.zzboi.getContext(), this, this.zzboi);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzboi);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzboi;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final void destroy() {
        try {
            this.zzboj.a();
        } catch (RemoteException e) {
            za.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
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

    public final AdChoicesView getAdChoicesView() {
        View zzbj = zzbj("3011");
        if (zzbj instanceof AdChoicesView) {
            return (AdChoicesView) zzbj;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return zzbj("3005");
    }

    public final View getBodyView() {
        return zzbj("3004");
    }

    public final View getCallToActionView() {
        return zzbj("3002");
    }

    public final View getHeadlineView() {
        return zzbj("3001");
    }

    public final View getIconView() {
        return zzbj("3003");
    }

    public final View getImageView() {
        return zzbj("3008");
    }

    public final MediaView getMediaView() {
        View zzbj = zzbj("3010");
        if (zzbj instanceof MediaView) {
            return (MediaView) zzbj;
        }
        if (zzbj == null) {
            return null;
        }
        za.zzdz("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return zzbj("3007");
    }

    public final View getStarRatingView() {
        return zzbj("3009");
    }

    public final View getStoreView() {
        return zzbj("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
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
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzboi);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.zzboi != view) {
            super.removeView(view);
        }
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        zza("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        zza("3005", view);
    }

    public final void setBodyView(View view) {
        zza("3004", view);
    }

    public final void setCallToActionView(View view) {
        zza("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzboj.b(d.a(view));
        } catch (RemoteException e) {
            za.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        zza("3001", view);
    }

    public final void setIconView(View view) {
        zza("3003", view);
    }

    public final void setImageView(View view) {
        zza("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        zza("3010", mediaView);
        if (mediaView != null) {
            mediaView.zza(new dh(this) { // from class: com.google.android.gms.ads.nativead.zzb
                private final NativeAdView zzeyf;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeyf = this;
                }

                @Override // com.google.android.gms.internal.ads.dh
                public final void setMediaContent(MediaContent mediaContent) {
                    this.zzeyf.zzb(mediaContent);
                }
            });
            mediaView.zza(new di(this) { // from class: com.google.android.gms.ads.nativead.zzc
                private final NativeAdView zzeyf;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeyf = this;
                }

                @Override // com.google.android.gms.internal.ads.di
                public final void setImageScaleType(ImageView.ScaleType scaleType) {
                    this.zzeyf.zzb(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzboj.a((b) nativeAd.zzjw());
        } catch (RemoteException e) {
            za.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        zza("3007", view);
    }

    public final void setStarRatingView(View view) {
        zza("3009", view);
    }

    public final void setStoreView(View view) {
        zza("3006", view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            try {
                this.zzboj.d(d.a(scaleType));
            } catch (RemoteException e) {
                za.zzc("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(MediaContent mediaContent) {
        try {
            if (mediaContent instanceof com.google.android.gms.internal.ads.d) {
                this.zzboj.a(((com.google.android.gms.internal.ads.d) mediaContent).f26630a);
            } else if (mediaContent == null) {
                this.zzboj.a((dq) null);
            } else {
                za.zzdz("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            za.zzc("Unable to call setMediaContent on delegate", e);
        }
    }
}
