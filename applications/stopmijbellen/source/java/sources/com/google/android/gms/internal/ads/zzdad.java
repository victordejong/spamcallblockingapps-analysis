package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdad.class */
public final /* synthetic */ class zzdad implements Runnable {
    public final /* synthetic */ AtomicReference zza;

    public /* synthetic */ zzdad(AtomicReference atomicReference) {
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdae.zzi(this.zza);
    }
}
