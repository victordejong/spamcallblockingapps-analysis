package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbei.class */
final class zzbei implements View.OnAttachStateChangeListener {
    private final /* synthetic */ zzawz zzerl;
    private final /* synthetic */ zzbee zzern;

    public zzbei(zzbee zzbeeVar, zzawz zzawzVar) {
        this.zzern = zzbeeVar;
        this.zzerl = zzawzVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzern.zza(view, this.zzerl, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
