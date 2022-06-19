package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddq.class */
public final class zzddq implements Runnable {
    private final WeakReference<zzddr> zza;

    public /* synthetic */ zzddq(zzddr zzddrVar, zzddp zzddpVar) {
        this.zza = new WeakReference<>(zzddrVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzddr zzddrVar = this.zza.get();
        if (zzddrVar != null) {
            zzddrVar.zzk(zzddo.zza);
        }
    }
}
