package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeab.class */
final class zzeab extends zzdyk.zzh<Void> implements Runnable {
    private final Runnable zziax;

    public zzeab(Runnable runnable) {
        this.zziax = (Runnable) zzdwl.checkNotNull(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zziax.run();
        } catch (Throwable th) {
            setException(th);
            throw zzdwv.zzj(th);
        }
    }
}
