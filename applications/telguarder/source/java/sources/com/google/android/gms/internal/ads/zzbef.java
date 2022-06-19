package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbef.class */
public final class zzbef implements Runnable {
    private final /* synthetic */ View val$view;
    private final /* synthetic */ zzawz zzerl;
    private final /* synthetic */ int zzerm;
    private final /* synthetic */ zzbee zzern;

    public zzbef(zzbee zzbeeVar, View view, zzawz zzawzVar, int i) {
        this.zzern = zzbeeVar;
        this.val$view = view;
        this.zzerl = zzawzVar;
        this.zzerm = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzern.zza(this.val$view, this.zzerl, this.zzerm - 1);
    }
}
