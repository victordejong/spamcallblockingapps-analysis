package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmp.class */
public final class zzcmp implements View.OnAttachStateChangeListener {
    public final /* synthetic */ zzcdy zza;
    public final /* synthetic */ zzcms zzb;

    public zzcmp(zzcms zzcmsVar, zzcdy zzcdyVar) {
        this.zzb = zzcmsVar;
        this.zza = zzcdyVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzb.zzM(view, this.zza, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
