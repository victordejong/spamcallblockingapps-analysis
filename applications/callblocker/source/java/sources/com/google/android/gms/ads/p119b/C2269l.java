package com.google.android.gms.ads.p119b;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.AbstractC2342j;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractC2834bk;
import com.google.android.gms.internal.ads.AbstractC2836bm;
import com.google.android.gms.internal.ads.AbstractC2843bt;
import com.google.android.gms.internal.ads.AbstractC2849by;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.ebv;
import com.google.android.gms.internal.ads.edi;
/* renamed from: com.google.android.gms.ads.b.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/b/l.class */
public final class C2269l extends FrameLayout {

    /* renamed from: a */
    private final FrameLayout f6565a;

    /* renamed from: b */
    private final AbstractC2849by f6566b;

    /* renamed from: a */
    private final View m14871a(String str) {
        View view;
        AbstractC2731a mo11519a;
        try {
            mo11519a = this.f6566b.mo11519a(str);
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call getAssetView on delegate", e);
        }
        if (mo11519a != null) {
            view = (View) BinderC2734b.m13795a(mo11519a);
            return view;
        }
        view = null;
        return view;
    }

    /* renamed from: a */
    private final void m14870a(String str, View view) {
        try {
            this.f6566b.mo11518a(str, BinderC2734b.m13794a(view));
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setAssetView on delegate", e);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14873a(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            try {
                this.f6566b.mo11515d(BinderC2734b.m13794a(scaleType));
            } catch (RemoteException e) {
                C3645yb.m6748c("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14872a(AbstractC2342j abstractC2342j) {
        try {
            if (abstractC2342j instanceof ebv) {
                this.f6566b.mo11520a(((ebv) abstractC2342j).m7988a());
            } else if (abstractC2342j == null) {
                this.f6566b.mo11520a((AbstractC2843bt) null);
            } else {
                C3645yb.m6751b("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setMediaContent on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f6565a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.f6565a != view) {
            super.bringChildToFront(this.f6565a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16435bo)).booleanValue() && this.f6566b != null) {
            try {
                this.f6566b.mo11516c(BinderC2734b.m13794a(motionEvent));
            } catch (RemoteException e) {
                C3645yb.m6748c("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final C2250a getAdChoicesView() {
        View m14871a = m14871a("3011");
        return m14871a instanceof C2250a ? (C2250a) m14871a : null;
    }

    public final View getAdvertiserView() {
        return m14871a("3005");
    }

    public final View getBodyView() {
        return m14871a("3004");
    }

    public final View getCallToActionView() {
        return m14871a("3002");
    }

    public final View getHeadlineView() {
        return m14871a("3001");
    }

    public final View getIconView() {
        return m14871a("3003");
    }

    public final View getImageView() {
        return m14871a("3008");
    }

    public final C2251b getMediaView() {
        C2251b c2251b;
        View m14871a = m14871a("3010");
        if (m14871a instanceof C2251b) {
            c2251b = (C2251b) m14871a;
        } else {
            if (m14871a != null) {
                C3645yb.m6751b("View is not an instance of MediaView");
            }
            c2251b = null;
        }
        return c2251b;
    }

    public final View getPriceView() {
        return m14871a("3007");
    }

    public final View getStarRatingView() {
        return m14871a("3009");
    }

    public final View getStoreView() {
        return m14871a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f6566b != null) {
            try {
                this.f6566b.mo11521a(BinderC2734b.m13794a(view), i);
            } catch (RemoteException e) {
                C3645yb.m6748c("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f6565a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f6565a == view) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(C2250a c2250a) {
        m14870a("3011", c2250a);
    }

    public final void setAdvertiserView(View view) {
        m14870a("3005", view);
    }

    public final void setBodyView(View view) {
        m14870a("3004", view);
    }

    public final void setCallToActionView(View view) {
        m14870a("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f6566b.mo11517b(BinderC2734b.m13794a(view));
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        m14870a("3001", view);
    }

    public final void setIconView(View view) {
        m14870a("3003", view);
    }

    public final void setImageView(View view) {
        m14870a("3008", view);
    }

    public final void setMediaView(C2251b c2251b) {
        m14870a("3010", c2251b);
        if (c2251b != null) {
            c2251b.m14908a(new AbstractC2834bk(this) { // from class: com.google.android.gms.ads.b.p

                /* renamed from: a */
                private final C2269l f6568a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6568a = this;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC2834bk
                /* renamed from: a */
                public final void mo11838a(AbstractC2342j abstractC2342j) {
                    this.f6568a.m14872a(abstractC2342j);
                }
            });
            c2251b.m14907a(new AbstractC2836bm(this) { // from class: com.google.android.gms.ads.b.o

                /* renamed from: a */
                private final C2269l f6567a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6567a = this;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC2836bm
                /* renamed from: a */
                public final void mo11801a(ImageView.ScaleType scaleType) {
                    this.f6567a.m14873a(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(AbstractC2267k abstractC2267k) {
        try {
            this.f6566b.mo11522a((AbstractC2731a) abstractC2267k.mo8143k());
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        m14870a("3007", view);
    }

    public final void setStarRatingView(View view) {
        m14870a("3009", view);
    }

    public final void setStoreView(View view) {
        m14870a("3006", view);
    }
}
