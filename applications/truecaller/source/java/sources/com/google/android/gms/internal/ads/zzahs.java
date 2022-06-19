package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahs.class */
public final class zzahs {
    private final zzahr zza;
    private final zzahq zzb;
    private final zzaku zzc;
    private final zzaiq zzd;
    private int zze;
    private Object zzf;
    private final Looper zzg;
    private final int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    public zzahs(zzahq zzahqVar, zzahr zzahrVar, zzaiq zzaiqVar, int i, zzaku zzakuVar, Looper looper) {
        this.zzb = zzahqVar;
        this.zza = zzahrVar;
        this.zzd = zzaiqVar;
        this.zzg = looper;
        this.zzc = zzakuVar;
        this.zzh = i;
    }

    public final zzahr zza() {
        return this.zza;
    }

    public final zzahs zzb(int i) {
        zzakt.zzd(!this.zzi);
        this.zze = i;
        return this;
    }

    public final int zzc() {
        return this.zze;
    }

    public final zzahs zzd(Object obj) {
        zzakt.zzd(!this.zzi);
        this.zzf = obj;
        return this;
    }

    public final Object zze() {
        return this.zzf;
    }

    public final Looper zzf() {
        return this.zzg;
    }

    public final zzahs zzg() {
        zzakt.zzd(!this.zzi);
        this.zzi = true;
        this.zzb.zzi(this);
        return this;
    }

    public final boolean zzh() {
        synchronized (this) {
        }
        return false;
    }

    public final void zzi(boolean z) {
        synchronized (this) {
            this.zzj = z | this.zzj;
            this.zzk = true;
            notifyAll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    public final boolean zzj(long j) throws InterruptedException, TimeoutException {
        boolean z;
        synchronized (this) {
            zzakt.zzd(this.zzi);
            zzakt.zzd(this.zzg.getThread() != Thread.currentThread());
            long elapsedRealtime = SystemClock.elapsedRealtime();
            char c = 2000;
            while (!this.zzk) {
                if (c <= 0) {
                    throw new TimeoutException("Message delivery timed out.");
                }
                wait(c);
                c = (elapsedRealtime + 2000) - SystemClock.elapsedRealtime();
            }
            z = this.zzj;
        }
        return z;
    }
}
