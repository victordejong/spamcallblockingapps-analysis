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
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzadp;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzzm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAdView.class */
public final class UnifiedNativeAdView extends FrameLayout {

    /* renamed from: a */
    public final FrameLayout f22720a;

    /* renamed from: b */
    public final zzaei f22721b = m18027b();

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.f22720a = m18032a(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22720a = m18032a(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f22720a = m18032a(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f22720a = m18032a(context);
    }

    /* renamed from: a */
    public final View m18029a(String str) {
        try {
            IObjectWrapper j = this.f22721b.mo10913j(str);
            if (j != null) {
                return (View) ObjectWrapper.m17021Q(j);
            }
            return null;
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    /* renamed from: a */
    public final FrameLayout m18032a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    /* renamed from: a */
    public final void m18033a() {
        try {
            this.f22721b.destroy();
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to destroy native ad view", e);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m18031a(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            try {
                this.f22721b.mo10912u(ObjectWrapper.m17020a(scaleType));
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m18030a(MediaContent mediaContent) {
        try {
            if (mediaContent instanceof zzzm) {
                this.f22721b.mo10918a(((zzzm) mediaContent).m10984a());
            } else if (mediaContent == null) {
                this.f22721b.mo10918a(null);
            } else {
                zzbbq.m15858a("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call setMediaContent on delegate", e);
        }
    }

    /* renamed from: a */
    public final void m18028a(String str, View view) {
        try {
            this.f22721b.mo10917a(str, ObjectWrapper.m17020a(view));
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f22720a);
    }

    /* renamed from: b */
    public final zzaei m18027b() {
        Preconditions.m17287a(this.f22720a, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzwm.m11169b().m11185a(this.f22720a.getContext(), this, this.f22720a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f22720a;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzaei zzaeiVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23886s1)).booleanValue() && (zzaeiVar = this.f22721b) != null) {
            try {
                zzaeiVar.mo10914h(ObjectWrapper.m17020a(motionEvent));
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final AdChoicesView getAdChoicesView() {
        View a = m18029a("3011");
        if (a instanceof AdChoicesView) {
            return (AdChoicesView) a;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return m18029a("3005");
    }

    public final View getBodyView() {
        return m18029a("3004");
    }

    public final View getCallToActionView() {
        return m18029a("3002");
    }

    public final View getHeadlineView() {
        return m18029a("3001");
    }

    public final View getIconView() {
        return m18029a("3003");
    }

    public final View getImageView() {
        return m18029a("3008");
    }

    public final MediaView getMediaView() {
        View a = m18029a("3010");
        if (a instanceof MediaView) {
            return (MediaView) a;
        }
        if (a == null) {
            return null;
        }
        zzbbq.m15858a("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return m18029a("3007");
    }

    public final View getStarRatingView() {
        return m18029a("3009");
    }

    public final View getStoreView() {
        return m18029a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzaei zzaeiVar = this.f22721b;
        if (zzaeiVar != null) {
            try {
                zzaeiVar.mo10919a(ObjectWrapper.m17020a(view), i);
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f22720a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f22720a != view) {
            super.removeView(view);
        }
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        m18028a("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        m18028a("3005", view);
    }

    public final void setBodyView(View view) {
        m18028a("3004", view);
    }

    public final void setCallToActionView(View view) {
        m18028a("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f22721b.mo10915d(ObjectWrapper.m17020a(view));
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        m18028a("3001", view);
    }

    public final void setIconView(View view) {
        m18028a("3003", view);
    }

    public final void setImageView(View view) {
        m18028a("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        m18028a("3010", mediaView);
        if (mediaView != null) {
            mediaView.m18072a(new zzadp(this) { // from class: c.d.b.d.a.b.b

                /* renamed from: a */
                public final UnifiedNativeAdView f11910a;

                {
                    this.f11910a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzadp
                /* renamed from: a */
                public final void mo16847a(MediaContent mediaContent) {
                    this.f11910a.m18030a(mediaContent);
                }
            });
            mediaView.m18071a(new zzadr(this) { // from class: c.d.b.d.a.b.c

                /* renamed from: a */
                public final UnifiedNativeAdView f11911a;

                {
                    this.f11911a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzadr
                /* renamed from: a */
                public final void mo16846a(ImageView.ScaleType scaleType) {
                    this.f11911a.m18031a(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.f22721b.mo10916b((IObjectWrapper) unifiedNativeAd.mo16783l());
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        m18028a("3007", view);
    }

    public final void setStarRatingView(View view) {
        m18028a("3009", view);
    }

    public final void setStoreView(View view) {
        m18028a("3006", view);
    }
}
