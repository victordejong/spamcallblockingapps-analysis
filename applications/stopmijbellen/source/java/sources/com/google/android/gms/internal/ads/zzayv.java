package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayv.class */
final class zzayv implements Runnable {
    public final /* synthetic */ View zza;
    public final /* synthetic */ zzayz zzb;

    public zzayv(zzayz zzayzVar, View view) {
        this.zzb = zzayzVar;
        this.zza = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc(this.zza);
    }
}
