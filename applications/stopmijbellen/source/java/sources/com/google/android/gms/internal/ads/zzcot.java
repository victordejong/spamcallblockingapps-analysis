package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcot.class */
final class zzcot implements View.OnAttachStateChangeListener {
    public final /* synthetic */ zzcgf zza;
    public final /* synthetic */ zzcow zzb;

    public zzcot(zzcow zzcowVar, zzcgf zzcgfVar) {
        this.zzb = zzcowVar;
        this.zza = zzcgfVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzb.zzQ(view, this.zza, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
