package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaec;
import com.google.android.gms.internal.ads.zzaee;
import com.google.android.gms.internal.ads.zzaem;
import com.google.android.gms.internal.ads.zzaev;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzzw;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAdView.class */
public final class UnifiedNativeAdView extends FrameLayout {
    private final FrameLayout zzbny;
    private final zzaev zzbnz = zzju();

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.zzbny = zzd(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzbny = zzd(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzbny = zzd(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zzbny = zzd(context);
    }

    private final void zza(String str, View view) {
        try {
            this.zzbnz.zzb(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    private final View zzbj(String str) {
        try {
            IObjectWrapper zzco = this.zzbnz.zzco(str);
            if (zzco == null) {
                return null;
            }
            return (View) ObjectWrapper.unwrap(zzco);
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzaev zzju() {
        Preconditions.checkNotNull(this.zzbny, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzwr.zzqo().zza(this.zzbny.getContext(), this, this.zzbny);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzbny);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzbny;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final void destroy() {
        try {
            this.zzbnz.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzaev zzaevVar;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcso)).booleanValue() && (zzaevVar = this.zzbnz) != null) {
            try {
                zzaevVar.zzg(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call handleTouchEvent on delegate", e);
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
        zzazk.zzdy("View is not an instance of MediaView");
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
        zzaev zzaevVar = this.zzbnz;
        if (zzaevVar != null) {
            try {
                zzaevVar.zzc(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzbny);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.zzbny == view) {
            return;
        }
        super.removeView(view);
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
            this.zzbnz.zzf(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setClickConfirmingView on delegate", e);
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
            mediaView.zza(new zzaec(this) { // from class: com.google.android.gms.ads.formats.zzf
                private final UnifiedNativeAdView zzbof;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbof = this;
                }

                @Override // com.google.android.gms.internal.ads.zzaec
                public final void setMediaContent(MediaContent mediaContent) {
                    this.zzbof.zza(mediaContent);
                }
            });
            mediaView.zza(new zzaee(this) { // from class: com.google.android.gms.ads.formats.zzg
                private final UnifiedNativeAdView zzbof;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbof = this;
                }

                @Override // com.google.android.gms.internal.ads.zzaee
                public final void setImageScaleType(ImageView.ScaleType scaleType) {
                    this.zzbof.zza(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.zzbnz.zza((IObjectWrapper) unifiedNativeAd.zzjs());
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setNativeAd on delegate", e);
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

    public final /* synthetic */ void zza(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            try {
                this.zzbnz.zzh(ObjectWrapper.wrap(scaleType));
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    public final /* synthetic */ void zza(MediaContent mediaContent) {
        try {
            if (mediaContent instanceof zzzw) {
                this.zzbnz.zza(((zzzw) mediaContent).zzrt());
            } else if (mediaContent == null) {
                this.zzbnz.zza((zzaem) null);
            } else {
                zzazk.zzdy("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setMediaContent on delegate", e);
        }
    }
}
