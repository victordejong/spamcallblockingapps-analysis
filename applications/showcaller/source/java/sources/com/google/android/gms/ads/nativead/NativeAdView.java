package com.google.android.gms.ads.nativead;

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
import com.google.android.gms.ads.AbstractC5757k;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.AbstractC6682kz;
import com.google.android.gms.internal.ads.AbstractC6977sy;
import com.google.android.gms.internal.ads.AbstractC7051uy;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.C7232zu;
import com.google.android.gms.internal.ads.ei0;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdView.class */
public final class NativeAdView extends FrameLayout {
    @NotOnlyInitialized

    /* renamed from: d */
    private final FrameLayout f18674d;
    @NotOnlyInitialized

    /* renamed from: e */
    private final AbstractC6682kz f18675e = m17849f();

    public NativeAdView(@RecentlyNonNull Context context) {
        super(context);
        this.f18674d = m17850e(context);
    }

    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18674d = m17850e(context);
    }

    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18674d = m17850e(context);
    }

    /* renamed from: d */
    private final void m17851d(String str, View view) {
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz != null) {
            try {
                abstractC6682kz.mo12926o2(str, BinderC6255b.m16744m2(view));
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call setAssetView on delegate", e);
            }
        }
    }

    /* renamed from: e */
    private final FrameLayout m17850e(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @RequiresNonNull({"overlayFrame"})
    /* renamed from: f */
    private final AbstractC6682kz m17849f() {
        if (isInEditMode()) {
            return null;
        }
        return C7118wr.m9484b().m10188l(this.f18674d.getContext(), this, this.f18674d);
    }

    @RecentlyNullable
    /* renamed from: a */
    protected final View m17854a(@RecentlyNonNull String str) {
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz != null) {
            try {
                AbstractC6253a mo12923y = abstractC6682kz.mo12923y(str);
                if (mo12923y == null) {
                    return null;
                }
                return (View) BinderC6255b.m16745J0(mo12923y);
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call getAssetView on delegate", e);
                return null;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final void addView(@RecentlyNonNull View view, int i, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f18674d);
    }

    /* renamed from: b */
    public final /* synthetic */ void m17853b(ImageView.ScaleType scaleType) {
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz == null || scaleType == null) {
            return;
        }
        try {
            abstractC6682kz.mo12932J5(BinderC6255b.m16744m2(scaleType));
        } catch (RemoteException e) {
            ei0.m15466d("Unable to call setMediaViewImageScaleType on delegate", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(@RecentlyNonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f18674d;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    /* renamed from: c */
    public final /* synthetic */ void m17852c(AbstractC5757k abstractC5757k) {
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz == null) {
            return;
        }
        try {
            if (abstractC5757k instanceof C7232zu) {
                abstractC6682kz.mo12928d4(((C7232zu) abstractC5757k).m8181a());
            } else if (abstractC5757k == null) {
                abstractC6682kz.mo12928d4(null);
            } else {
                ei0.m15469a("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            ei0.m15466d("Unable to call setMediaContent on delegate", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(@RecentlyNonNull MotionEvent motionEvent) {
        AbstractC6682kz abstractC6682kz;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25629Y1)).booleanValue() && (abstractC6682kz = this.f18675e) != null) {
            try {
                abstractC6682kz.mo12934A6(BinderC6255b.m16744m2(motionEvent));
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @RecentlyNullable
    public AdChoicesView getAdChoicesView() {
        View m17854a = m17854a("3011");
        if (m17854a instanceof AdChoicesView) {
            return (AdChoicesView) m17854a;
        }
        return null;
    }

    @RecentlyNullable
    public final View getAdvertiserView() {
        return m17854a("3005");
    }

    @RecentlyNullable
    public final View getBodyView() {
        return m17854a("3004");
    }

    @RecentlyNullable
    public final View getCallToActionView() {
        return m17854a("3002");
    }

    @RecentlyNullable
    public final View getHeadlineView() {
        return m17854a("3001");
    }

    @RecentlyNullable
    public final View getIconView() {
        return m17854a("3003");
    }

    @RecentlyNullable
    public final View getImageView() {
        return m17854a("3008");
    }

    @RecentlyNullable
    public final MediaView getMediaView() {
        View m17854a = m17854a("3010");
        if (m17854a instanceof MediaView) {
            return (MediaView) m17854a;
        }
        if (m17854a == null) {
            return null;
        }
        ei0.m15469a("View is not an instance of MediaView");
        return null;
    }

    @RecentlyNullable
    public final View getPriceView() {
        return m17854a("3007");
    }

    @RecentlyNullable
    public final View getStarRatingView() {
        return m17854a("3009");
    }

    @RecentlyNullable
    public final View getStoreView() {
        return m17854a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@RecentlyNonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz != null) {
            try {
                abstractC6682kz.mo12924u0(BinderC6255b.m16744m2(view), i);
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f18674d);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(@RecentlyNonNull View view) {
        if (this.f18674d == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        m17851d("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        m17851d("3005", view);
    }

    public final void setBodyView(View view) {
        m17851d("3004", view);
    }

    public final void setCallToActionView(View view) {
        m17851d("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz != null) {
            try {
                abstractC6682kz.mo12931M(BinderC6255b.m16744m2(view));
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call setClickConfirmingView on delegate", e);
            }
        }
    }

    public final void setHeadlineView(View view) {
        m17851d("3001", view);
    }

    public final void setIconView(View view) {
        m17851d("3003", view);
    }

    public final void setImageView(View view) {
        m17851d("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        m17851d("3010", mediaView);
        if (mediaView == null) {
            return;
        }
        mediaView.m17856a(new AbstractC6977sy(this) { // from class: com.google.android.gms.ads.nativead.d

            /* renamed from: a */
            private final NativeAdView f18688a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18688a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6977sy
            /* renamed from: a */
            public final void mo10889a(AbstractC5757k abstractC5757k) {
                this.f18688a.m17852c(abstractC5757k);
            }
        });
        mediaView.m17855b(new AbstractC7051uy(this) { // from class: com.google.android.gms.ads.nativead.e

            /* renamed from: a */
            private final NativeAdView f18689a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18689a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC7051uy
            /* renamed from: a */
            public final void mo10151a(ImageView.ScaleType scaleType) {
                this.f18689a.m17853b(scaleType);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.dynamic.a, java.lang.Object] */
    public void setNativeAd(@RecentlyNonNull AbstractC5796a abstractC5796a) {
        AbstractC6682kz abstractC6682kz = this.f18675e;
        if (abstractC6682kz != 0) {
            try {
                abstractC6682kz.mo12930Y(abstractC5796a.mo10050j());
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void setPriceView(View view) {
        m17851d("3007", view);
    }

    public final void setStarRatingView(View view) {
        m17851d("3009", view);
    }

    public final void setStoreView(View view) {
        m17851d("3006", view);
    }
}
