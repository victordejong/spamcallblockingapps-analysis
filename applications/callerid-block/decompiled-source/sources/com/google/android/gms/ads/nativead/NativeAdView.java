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
import com.google.android.gms.ads.AbstractC1458k;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.ads.AbstractC1813k6;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.d2;
import com.google.android.gms.internal.ads.m03;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdView.class */
public final class NativeAdView extends FrameLayout {
    @NotOnlyInitialized

    /* renamed from: b */
    private final FrameLayout f5681b;
    @NotOnlyInitialized

    /* renamed from: c */
    private final AbstractC1813k6 f5682c = m8616f();

    public NativeAdView(@RecentlyNonNull Context context) {
        super(context);
        this.f5681b = m8617e(context);
    }

    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5681b = m8617e(context);
    }

    public NativeAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5681b = m8617e(context);
    }

    /* renamed from: d */
    private final void m8618d(String str, View view) {
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var != null) {
            try {
                k6Var.m6862o4(str, b.g3(view));
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call setAssetView on delegate", e);
            }
        }
    }

    /* renamed from: e */
    private final FrameLayout m8617e(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @RequiresNonNull({"overlayFrame"})
    /* renamed from: f */
    private final AbstractC1813k6 m8616f() {
        if (isInEditMode()) {
            return null;
        }
        return m03.m6635b().m6890d(this.f5681b.getContext(), this, this.f5681b);
    }

    @RecentlyNullable
    /* renamed from: a */
    protected final View m8621a(@RecentlyNonNull String str) {
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var == null) {
            return null;
        }
        try {
            AbstractC1632a x = k6Var.m6860x(str);
            if (x != null) {
                return (View) b.M1(x);
            }
            return null;
        } catch (RemoteException e) {
            C1894po.m6182d("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(@RecentlyNonNull View view, int i, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f5681b);
    }

    /* renamed from: b */
    final /* synthetic */ void m8620b(ImageView.ScaleType scaleType) {
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var != null && scaleType != null) {
            try {
                k6Var.m6861u6(b.g3(scaleType));
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(@RecentlyNonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f5681b;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    /* renamed from: c */
    final /* synthetic */ void m8619c(AbstractC1458k kVar) {
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var != null) {
            try {
                if (kVar instanceof d2) {
                    k6Var.m6867N2(((d2) kVar).a());
                } else if (kVar == null) {
                    k6Var.m6867N2(null);
                } else {
                    C1894po.m6185a("Use MediaContent provided by NativeAd.getMediaContent");
                }
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call setMediaContent on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(@RecentlyNonNull MotionEvent motionEvent) {
        AbstractC1813k6 k6Var;
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7258H1)).booleanValue() && (k6Var = this.f5682c) != null) {
            try {
                k6Var.m6863k2(b.g3(motionEvent));
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @RecentlyNullable
    public AdChoicesView getAdChoicesView() {
        View a = m8621a("3011");
        if (a instanceof AdChoicesView) {
            return (AdChoicesView) a;
        }
        return null;
    }

    @RecentlyNullable
    public final View getAdvertiserView() {
        return m8621a("3005");
    }

    @RecentlyNullable
    public final View getBodyView() {
        return m8621a("3004");
    }

    @RecentlyNullable
    public final View getCallToActionView() {
        return m8621a("3002");
    }

    @RecentlyNullable
    public final View getHeadlineView() {
        return m8621a("3001");
    }

    @RecentlyNullable
    public final View getIconView() {
        return m8621a("3003");
    }

    @RecentlyNullable
    public final View getImageView() {
        return m8621a("3008");
    }

    @RecentlyNullable
    public final MediaView getMediaView() {
        View a = m8621a("3010");
        if (a instanceof MediaView) {
            return (MediaView) a;
        }
        if (a == null) {
            return null;
        }
        C1894po.m6185a("View is not an instance of MediaView");
        return null;
    }

    @RecentlyNullable
    public final View getPriceView() {
        return m8621a("3007");
    }

    @RecentlyNullable
    public final View getStarRatingView() {
        return m8621a("3009");
    }

    @RecentlyNullable
    public final View getStoreView() {
        return m8621a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@RecentlyNonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var != null) {
            try {
                k6Var.m6868F0(b.g3(view), i);
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f5681b);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(@RecentlyNonNull View view) {
        if (this.f5681b != view) {
            super.removeView(view);
        }
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        m8618d("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        m8618d("3005", view);
    }

    public final void setBodyView(View view) {
        m8618d("3004", view);
    }

    public final void setCallToActionView(View view) {
        m8618d("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var != null) {
            try {
                k6Var.m6864c0(b.g3(view));
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call setClickConfirmingView on delegate", e);
            }
        }
    }

    public final void setHeadlineView(View view) {
        m8618d("3001", view);
    }

    public final void setIconView(View view) {
        m8618d("3003", view);
    }

    public final void setImageView(View view) {
        m8618d("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        m8618d("3010", mediaView);
        if (mediaView != null) {
            mediaView.m8623a(new d(this));
            mediaView.m8622b(new e(this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.dynamic.a, java.lang.Object] */
    public void setNativeAd(@RecentlyNonNull AbstractC1487a aVar) {
        AbstractC1813k6 k6Var = this.f5682c;
        if (k6Var != 0) {
            try {
                k6Var.m6866X(aVar.m8606j());
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void setPriceView(View view) {
        m8618d("3007", view);
    }

    public final void setStarRatingView(View view) {
        m8618d("3009", view);
    }

    public final void setStoreView(View view) {
        m8618d("3006", view);
    }
}
