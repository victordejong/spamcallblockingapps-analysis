package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawk.class */
public final class zzawk {
    private final ExecutorService zza = zzaxb.zzl("Loader:ExtractorMediaPeriod");
    private zzawh<? extends zzawi> zzb;
    private IOException zzc;

    public zzawk(String str) {
    }

    public final <T extends zzawi> long zza(T t, zzawg<T> zzawgVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzawm.zze(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzawh(this, myLooper, t, zzawgVar, i, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzf() {
        this.zzb.zza(false);
    }

    public final void zzg(int i) throws IOException {
        IOException iOException = this.zzc;
        if (iOException == null) {
            zzawh<? extends zzawi> zzawhVar = this.zzb;
            if (zzawhVar == null) {
                return;
            }
            zzawhVar.zzb(zzawhVar.zza);
            return;
        }
        throw iOException;
    }

    public final void zzh(Runnable runnable) {
        zzawh<? extends zzawi> zzawhVar = this.zzb;
        if (zzawhVar != null) {
            zzawhVar.zza(true);
        }
        this.zza.execute(runnable);
        this.zza.shutdown();
    }

    public final boolean zzi() {
        return this.zzb != null;
    }
}
