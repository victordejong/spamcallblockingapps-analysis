package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcml;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzh.class */
public final class zzh {
    public final int zza;
    public final ViewGroup.LayoutParams zzb;
    public final ViewGroup zzc;
    public final Context zzd;

    public zzh(zzcml zzcmlVar) throws zzf {
        this.zzb = zzcmlVar.getLayoutParams();
        ViewParent parent = zzcmlVar.getParent();
        this.zzd = zzcmlVar.zzM();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzf("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.zzc = viewGroup;
        this.zza = viewGroup.indexOfChild(zzcmlVar.zzH());
        viewGroup.removeView(zzcmlVar.zzH());
        zzcmlVar.zzag(true);
    }
}
