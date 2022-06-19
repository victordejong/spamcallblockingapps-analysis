package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawy.class */
public final class zzawy implements Runnable {
    public final /* synthetic */ View zza;
    public final /* synthetic */ zzaxc zzb;

    public zzawy(zzaxc zzaxcVar, View view) {
        this.zzb = zzaxcVar;
        this.zza = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb(this.zza);
    }
}
