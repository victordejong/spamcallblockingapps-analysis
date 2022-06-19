package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaun.class */
public final class zzaun {
    private final ExecutorService zza = zzave.zzb("Loader:ExtractorMediaPeriod");
    private zzauk<? extends zzaul> zzb;
    private IOException zzc;

    public zzaun(String str) {
    }

    public final <T extends zzaul> long zze(T t, zzauj<T> zzaujVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzaup.zzd(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzauk(this, myLooper, t, zzaujVar, i, elapsedRealtime).zzb(0L);
        return elapsedRealtime;
    }

    public final boolean zzf() {
        return this.zzb != null;
    }

    public final void zzg() {
        this.zzb.zzc(false);
    }

    public final void zzh(Runnable runnable) {
        zzauk<? extends zzaul> zzaukVar = this.zzb;
        if (zzaukVar != null) {
            zzaukVar.zzc(true);
        }
        this.zza.execute(runnable);
        this.zza.shutdown();
    }

    public final void zzi(int i) throws IOException {
        IOException iOException = this.zzc;
        if (iOException == null) {
            zzauk<? extends zzaul> zzaukVar = this.zzb;
            if (zzaukVar == null) {
                return;
            }
            zzaukVar.zza(zzaukVar.zza);
            return;
        }
        throw iOException;
    }
}
