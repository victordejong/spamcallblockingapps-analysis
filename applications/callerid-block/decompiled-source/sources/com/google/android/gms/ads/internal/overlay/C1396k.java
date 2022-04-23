package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.jt;
/* renamed from: com.google.android.gms.ads.internal.overlay.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/k.class */
public final class C1396k {

    /* renamed from: a */
    public final int f5509a;

    /* renamed from: b */
    public final ViewGroup.LayoutParams f5510b;

    /* renamed from: c */
    public final ViewGroup f5511c;

    /* renamed from: d */
    public final Context f5512d;

    public C1396k(jt jtVar) {
        this.f5510b = jtVar.getLayoutParams();
        ViewParent parent = jtVar.getParent();
        this.f5512d = jtVar.G0();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzh("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.f5511c = viewGroup;
        this.f5509a = viewGroup.indexOfChild(jtVar.G());
        viewGroup.removeView(jtVar.G());
        jtVar.Q0(true);
    }
}
