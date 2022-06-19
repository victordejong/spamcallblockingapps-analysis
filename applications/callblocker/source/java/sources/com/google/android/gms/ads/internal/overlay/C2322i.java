package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.act;
/* renamed from: com.google.android.gms.ads.internal.overlay.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/i.class */
public final class C2322i {

    /* renamed from: a */
    public final int f6720a;

    /* renamed from: b */
    public final ViewGroup.LayoutParams f6721b;

    /* renamed from: c */
    public final ViewGroup f6722c;

    /* renamed from: d */
    public final Context f6723d;

    public C2322i(act actVar) {
        this.f6721b = actVar.getLayoutParams();
        ViewParent parent = actVar.getParent();
        this.f6723d = actVar.mo13431q();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new C2320g("Could not get the parent of the WebView for an overlay.");
        }
        this.f6722c = (ViewGroup) parent;
        this.f6720a = this.f6722c.indexOfChild(actVar.getView());
        this.f6722c.removeView(actVar.getView());
        actVar.mo13452b(true);
    }
}
