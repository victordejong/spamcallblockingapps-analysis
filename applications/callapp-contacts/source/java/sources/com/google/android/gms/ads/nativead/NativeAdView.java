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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC12344dh;
import com.google.android.gms.internal.ads.AbstractC12355di;
import com.google.android.gms.internal.ads.AbstractC12389dq;
import com.google.android.gms.internal.ads.AbstractC12428dv;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C12297d;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.ekb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdView.class */
public final class NativeAdView extends FrameLayout {
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

    private final void zza(String str, View view) {
        try {
            this.zzboj.mo14470a(str, BinderC12129d.m18979a(view));
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    private final View zzbj(String str) {
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

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final AbstractC12428dv zzjy() {
        C12045o.m19161a(this.zzboi, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return ekb.m14834b().m14860a(this.zzboi.getContext(), this, this.zzboi);
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
            this.zzboj.mo14475a();
        } catch (RemoteException e) {
            C13088za.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
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
        C13088za.zzdz("View is not an instance of MediaView");
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
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzboi);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.zzboi == view) {
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
            this.zzboj.mo14469b(BinderC12129d.m18979a(view));
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setClickConfirmingView on delegate", e);
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
            mediaView.zza(new AbstractC12344dh(this) { // from class: com.google.android.gms.ads.nativead.zzb
                private final NativeAdView zzeyf;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeyf = this;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC12344dh
                public final void setMediaContent(MediaContent mediaContent) {
                    this.zzeyf.zzb(mediaContent);
                }
            });
            mediaView.zza(new AbstractC12355di(this) { // from class: com.google.android.gms.ads.nativead.zzc
                private final NativeAdView zzeyf;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeyf = this;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC12355di
                public final void setImageScaleType(ImageView.ScaleType scaleType) {
                    this.zzeyf.zzb(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzboj.mo14474a((AbstractC12126b) nativeAd.zzjw());
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setNativeAd on delegate", e);
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

    public final /* synthetic */ void zzb(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            try {
                this.zzboj.mo14467d(BinderC12129d.m18979a(scaleType));
            } catch (RemoteException e) {
                C13088za.zzc("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    public final /* synthetic */ void zzb(MediaContent mediaContent) {
        try {
            if (mediaContent instanceof C12297d) {
                this.zzboj.mo14472a(((C12297d) mediaContent).f46842a);
            } else if (mediaContent == null) {
                this.zzboj.mo14472a((AbstractC12389dq) null);
            } else {
                C13088za.zzdz("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setMediaContent on delegate", e);
        }
    }
}
