package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbju;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbom;
import com.google.android.gms.internal.ads.zzciz;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdView.class */
public final class NativeAdView extends FrameLayout {
    @NotOnlyInitialized
    private final FrameLayout zza;
    @NotOnlyInitialized
    private final zzbom zzb = zze();

    public NativeAdView(@RecentlyNonNull Context context) {
        super(context);
        this.zza = zzd(context);
    }

    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zza = zzd(context);
    }

    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zza = zzd(context);
    }

    @TargetApi(21)
    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zza = zzd(context);
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @RequiresNonNull({"overlayFrame"})
    private final zzbom zze() {
        if (isInEditMode()) {
            return null;
        }
        return zzbgo.zza().zzg(this.zza.getContext(), this, this.zza);
    }

    private final void zzf(String str, View view) {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar != null) {
            try {
                zzbomVar.zzbE(str, ObjectWrapper.wrap(view));
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call setAssetView on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(@RecentlyNonNull View view, int i, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zza);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(@RecentlyNonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zza;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar != null) {
            try {
                zzbomVar.zzc();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to destroy native ad view", e);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(@RecentlyNonNull MotionEvent motionEvent) {
        zzbom zzbomVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcf)).booleanValue() && (zzbomVar = this.zzb) != null) {
            try {
                zzbomVar.zzd(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @RecentlyNullable
    public AdChoicesView getAdChoicesView() {
        View zza = zza("3011");
        if (zza instanceof AdChoicesView) {
            return (AdChoicesView) zza;
        }
        return null;
    }

    @RecentlyNullable
    public final View getAdvertiserView() {
        return zza("3005");
    }

    @RecentlyNullable
    public final View getBodyView() {
        return zza("3004");
    }

    @RecentlyNullable
    public final View getCallToActionView() {
        return zza("3002");
    }

    @RecentlyNullable
    public final View getHeadlineView() {
        return zza("3001");
    }

    @RecentlyNullable
    public final View getIconView() {
        return zza("3003");
    }

    @RecentlyNullable
    public final View getImageView() {
        return zza("3008");
    }

    @RecentlyNullable
    public final MediaView getMediaView() {
        View zza = zza("3010");
        if (zza instanceof MediaView) {
            return (MediaView) zza;
        }
        if (zza == null) {
            return null;
        }
        zzciz.zze("View is not an instance of MediaView");
        return null;
    }

    @RecentlyNullable
    public final View getPriceView() {
        return zza("3007");
    }

    @RecentlyNullable
    public final View getStarRatingView() {
        return zza("3009");
    }

    @RecentlyNullable
    public final View getStoreView() {
        return zza("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@RecentlyNonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        zzbom zzbomVar = this.zzb;
        if (zzbomVar != null) {
            try {
                zzbomVar.zze(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.zza);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(@RecentlyNonNull View view) {
        if (this.zza == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zzf("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        zzf("3005", view);
    }

    public final void setBodyView(View view) {
        zzf("3004", view);
    }

    public final void setCallToActionView(View view) {
        zzf("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar != null) {
            try {
                zzbomVar.zzbF(ObjectWrapper.wrap(view));
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call setClickConfirmingView on delegate", e);
            }
        }
    }

    public final void setHeadlineView(View view) {
        zzf("3001", view);
    }

    public final void setIconView(View view) {
        zzf("3003", view);
    }

    public final void setImageView(View view) {
        zzf("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        zzf("3010", mediaView);
        if (mediaView == null) {
            return;
        }
        mediaView.zza(new zzb(this));
        mediaView.zzb(new zzc(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.dynamic.IObjectWrapper, java.lang.Object] */
    public void setNativeAd(@RecentlyNonNull NativeAd nativeAd) {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar != 0) {
            try {
                zzbomVar.zzbI(nativeAd.zza());
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void setPriceView(View view) {
        zzf("3007", view);
    }

    public final void setStarRatingView(View view) {
        zzf("3009", view);
    }

    public final void setStoreView(View view) {
        zzf("3006", view);
    }

    @RecentlyNullable
    public final View zza(@RecentlyNonNull String str) {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar != null) {
            try {
                IObjectWrapper zzb = zzbomVar.zzb(str);
                if (zzb == null) {
                    return null;
                }
                return (View) ObjectWrapper.unwrap(zzb);
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call getAssetView on delegate", e);
                return null;
            }
        }
        return null;
    }

    public final /* synthetic */ void zzb(MediaContent mediaContent) {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar == null) {
            return;
        }
        try {
            if (mediaContent instanceof zzbju) {
                zzbomVar.zzbG(((zzbju) mediaContent).zza());
            } else if (mediaContent == null) {
                zzbomVar.zzbG(null);
            } else {
                zzciz.zze("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzciz.zzh("Unable to call setMediaContent on delegate", e);
        }
    }

    public final /* synthetic */ void zzc(ImageView.ScaleType scaleType) {
        zzbom zzbomVar = this.zzb;
        if (zzbomVar == null || scaleType == null) {
            return;
        }
        try {
            zzbomVar.zzbH(ObjectWrapper.wrap(scaleType));
        } catch (RemoteException e) {
            zzciz.zzh("Unable to call setMediaViewImageScaleType on delegate", e);
        }
    }
}
