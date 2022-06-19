package com.google.android.gms.ads.p119b;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractC2849by;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.edi;
@Deprecated
/* renamed from: com.google.android.gms.ads.b.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/b/e.class */
public class C2257e extends FrameLayout {

    /* renamed from: a */
    private final FrameLayout f6557a;

    /* renamed from: b */
    private final AbstractC2849by f6558b;

    /* renamed from: a */
    protected final View m14886a(String str) {
        View view;
        AbstractC2731a mo11519a;
        try {
            mo11519a = this.f6558b.mo11519a(str);
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
    protected final void m14885a(String str, View view) {
        try {
            this.f6558b.mo11518a(str, BinderC2734b.m13794a(view));
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f6557a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.f6557a != view) {
            super.bringChildToFront(this.f6557a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16435bo)).booleanValue() && this.f6558b != null) {
            try {
                this.f6558b.mo11516c(BinderC2734b.m13794a(motionEvent));
            } catch (RemoteException e) {
                C3645yb.m6748c("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public C2250a getAdChoicesView() {
        View m14886a = m14886a("1098");
        return m14886a instanceof C2250a ? (C2250a) m14886a : null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f6558b != null) {
            try {
                this.f6558b.mo11521a(BinderC2734b.m13794a(view), i);
            } catch (RemoteException e) {
                C3645yb.m6748c("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f6557a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f6557a == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(C2250a c2250a) {
        m14885a("1098", c2250a);
    }

    public void setNativeAd(AbstractC2252c abstractC2252c) {
        try {
            this.f6558b.mo11522a((AbstractC2731a) abstractC2252c.mo10763a());
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setNativeAd on delegate", e);
        }
    }
}
