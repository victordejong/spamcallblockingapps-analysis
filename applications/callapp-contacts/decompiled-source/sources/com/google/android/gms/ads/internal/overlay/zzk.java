package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.adt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzk.class */
public final class zzk {
    public final Context context;
    public final int index;
    public final ViewGroup parent;
    public final ViewGroup.LayoutParams zzdtv;

    public zzk(adt adtVar) throws zzi {
        this.zzdtv = adtVar.getLayoutParams();
        ViewParent parent = adtVar.getParent();
        this.context = adtVar.w();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzi("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.parent = viewGroup;
        this.index = viewGroup.indexOfChild(adtVar.s());
        viewGroup.removeView(adtVar.s());
        adtVar.b(true);
    }
}
