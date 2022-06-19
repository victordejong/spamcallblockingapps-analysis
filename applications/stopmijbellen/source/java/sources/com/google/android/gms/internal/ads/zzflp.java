package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflp.class */
final class zzflp implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        handler = zzfls.zzc;
        if (handler != null) {
            handler2 = zzfls.zzc;
            runnable = zzfls.zzd;
            handler2.post(runnable);
            handler3 = zzfls.zzc;
            runnable2 = zzfls.zze;
            handler3.postDelayed(runnable2, 200L);
        }
    }
}
