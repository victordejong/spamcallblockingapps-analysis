package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlh.class */
public final class zzlh {
    public static final zzla zza = new zzla(0, -9223372036854775807L, null);
    public static final zzla zzb = new zzla(1, -9223372036854775807L, null);
    public static final zzla zzc = new zzla(2, -9223372036854775807L, null);
    public static final zzla zzd = new zzla(3, -9223372036854775807L, null);
    private final ExecutorService zze = zzamq.zzl("ExoPlayer:Loader:ProgressiveMediaPeriod");
    private zzlb<? extends zzlc> zzf;
    private IOException zzg;

    public zzlh(String str) {
    }

    public static zzla zze(boolean z, long j) {
        return new zzla(z ? 1 : 0, j, null);
    }

    public final boolean zzf() {
        return this.zzg != null;
    }

    public final void zzg() {
        this.zzg = null;
    }

    public final <T extends zzlc> long zzh(T t, zzkz<T> zzkzVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzakt.zze(myLooper);
        this.zzg = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzlb(this, myLooper, t, zzkzVar, i, elapsedRealtime).zzb(0L);
        return elapsedRealtime;
    }

    public final boolean zzi() {
        return this.zzf != null;
    }

    public final void zzj() {
        zzlb<? extends zzlc> zzlbVar = this.zzf;
        zzakt.zze(zzlbVar);
        zzlbVar.zzc(false);
    }

    public final void zzk(zzle zzleVar) {
        zzlb<? extends zzlc> zzlbVar = this.zzf;
        if (zzlbVar != null) {
            zzlbVar.zzc(true);
        }
        this.zze.execute(new zzlf(zzleVar));
        this.zze.shutdown();
    }

    public final void zzl(int i) throws IOException {
        IOException iOException = this.zzg;
        if (iOException == null) {
            zzlb<? extends zzlc> zzlbVar = this.zzf;
            if (zzlbVar == null) {
                return;
            }
            zzlbVar.zza(i);
            return;
        }
        throw iOException;
    }
}
