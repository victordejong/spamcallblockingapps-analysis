package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwm;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdView.class */
public class NativeAdView extends FrameLayout {

    /* renamed from: a */
    public final FrameLayout f22712a;

    /* renamed from: b */
    public final zzaei f22713b = m18050a();

    public NativeAdView(Context context) {
        super(context);
        this.f22712a = m18049a(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22712a = m18049a(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f22712a = m18049a(context);
    }

    /* renamed from: a */
    public final View m18048a(String str) {
        try {
            IObjectWrapper j = this.f22713b.mo10913j(str);
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
    public final FrameLayout m18049a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    /* renamed from: a */
    public final zzaei m18050a() {
        Preconditions.m17287a(this.f22712a, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzwm.m11169b().m11185a(this.f22712a.getContext(), this, this.f22712a);
    }

    /* renamed from: a */
    public final void m18047a(String str, View view) {
        try {
            this.f22713b.mo10917a(str, ObjectWrapper.m17020a(view));
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f22712a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f22712a;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzaei zzaeiVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23886s1)).booleanValue() && (zzaeiVar = this.f22713b) != null) {
            try {
                zzaeiVar.mo10914h(ObjectWrapper.m17020a(motionEvent));
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View a = m18048a("1098");
        if (a instanceof AdChoicesView) {
            return (AdChoicesView) a;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzaei zzaeiVar = this.f22713b;
        if (zzaeiVar != null) {
            try {
                zzaeiVar.mo10919a(ObjectWrapper.m17020a(view), i);
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f22712a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f22712a != view) {
            super.removeView(view);
        }
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        m18047a("1098", adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.f22713b.mo10916b((IObjectWrapper) nativeAd.mo16818a());
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to call setNativeAd on delegate", e);
        }
    }
}
