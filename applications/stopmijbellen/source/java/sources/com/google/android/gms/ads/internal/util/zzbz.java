package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzfpj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbz.class */
public final class zzbz {
    private HandlerThread zza = null;
    private Handler zzb = null;
    private int zzc = 0;
    private final Object zzd = new Object();

    public final Handler zza() {
        return this.zzb;
    }

    public final Looper zzb() {
        Looper looper;
        synchronized (this.zzd) {
            if (this.zzc != 0) {
                Preconditions.checkNotNull(this.zza, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zza == null) {
                zze.zza("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.zza = handlerThread;
                handlerThread.start();
                this.zzb = new zzfpj(this.zza.getLooper());
                zze.zza("Looper thread started.");
            } else {
                zze.zza("Resuming the looper thread");
                this.zzd.notifyAll();
            }
            this.zzc++;
            looper = this.zza.getLooper();
        }
        return looper;
    }
}
