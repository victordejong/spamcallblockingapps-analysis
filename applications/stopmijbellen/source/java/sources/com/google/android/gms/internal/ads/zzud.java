package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzud.class */
public final class zzud {
    public static final zztx zza = new zztx(0, -9223372036854775807L, null);
    public static final zztx zzb = new zztx(1, -9223372036854775807L, null);
    public static final zztx zzc = new zztx(2, -9223372036854775807L, null);
    public static final zztx zzd = new zztx(3, -9223372036854775807L, null);
    private final ExecutorService zze = zzfn.zzL("ExoPlayer:Loader:ProgressiveMediaPeriod");
    private zzty<? extends zztz> zzf;
    private IOException zzg;

    public zzud(String str) {
    }

    public static zztx zzb(boolean z, long j) {
        return new zztx(z ? 1 : 0, j, null);
    }

    public final <T extends zztz> long zza(T t, zztv<T> zztvVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzdy.zzb(myLooper);
        this.zzg = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzty(this, myLooper, t, zztvVar, i, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzg() {
        zzty<? extends zztz> zztyVar = this.zzf;
        zzdy.zzb(zztyVar);
        zztyVar.zza(false);
    }

    public final void zzh() {
        this.zzg = null;
    }

    public final void zzi(int i) throws IOException {
        IOException iOException = this.zzg;
        if (iOException == null) {
            zzty<? extends zztz> zztyVar = this.zzf;
            if (zztyVar == null) {
                return;
            }
            zztyVar.zzb(i);
            return;
        }
        throw iOException;
    }

    public final void zzj(zzua zzuaVar) {
        zzty<? extends zztz> zztyVar = this.zzf;
        if (zztyVar != null) {
            zztyVar.zza(true);
        }
        this.zze.execute(new zzub(zzuaVar));
        this.zze.shutdown();
    }

    public final boolean zzk() {
        return this.zzg != null;
    }

    public final boolean zzl() {
        return this.zzf != null;
    }
}
