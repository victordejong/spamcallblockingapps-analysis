package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.wn0;
/* renamed from: com.google.android.gms.ads.internal.overlay.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/h.class */
public final class C5646h {

    /* renamed from: a */
    public final int f18342a;

    /* renamed from: b */
    public final ViewGroup.LayoutParams f18343b;

    /* renamed from: c */
    public final ViewGroup f18344c;

    /* renamed from: d */
    public final Context f18345d;

    public C5646h(wn0 wn0Var) {
        this.f18343b = wn0Var.getLayoutParams();
        ViewParent parent = wn0Var.getParent();
        this.f18345d = wn0Var.mo7883v0();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzf("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.f18344c = viewGroup;
        this.f18342a = viewGroup.indexOfChild(wn0Var.mo7960D());
        viewGroup.removeView(wn0Var.mo7960D());
        wn0Var.mo7923Y0(true);
    }
}
