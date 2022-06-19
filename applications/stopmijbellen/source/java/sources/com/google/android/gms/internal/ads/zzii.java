package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzii.class */
public final class zzii {
    private final zzih zza;
    private final zzig zzb;
    private final zzdz zzc;
    private final zzcd zzd;
    private int zze;
    private Object zzf;
    private final Looper zzg;
    private final int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    public zzii(zzig zzigVar, zzih zzihVar, zzcd zzcdVar, int i, zzdz zzdzVar, Looper looper) {
        this.zzb = zzigVar;
        this.zza = zzihVar;
        this.zzd = zzcdVar;
        this.zzg = looper;
        this.zzc = zzdzVar;
        this.zzh = i;
    }

    public final int zza() {
        return this.zze;
    }

    public final Looper zzb() {
        return this.zzg;
    }

    public final zzih zzc() {
        return this.zza;
    }

    public final zzii zzd() {
        zzdy.zzf(!this.zzi);
        this.zzi = true;
        this.zzb.zzm(this);
        return this;
    }

    public final zzii zze(Object obj) {
        zzdy.zzf(!this.zzi);
        this.zzf = obj;
        return this;
    }

    public final zzii zzf(int i) {
        zzdy.zzf(!this.zzi);
        this.zze = i;
        return this;
    }

    public final Object zzg() {
        return this.zzf;
    }

    public final void zzh(boolean z) {
        synchronized (this) {
            this.zzj = z | this.zzj;
            this.zzk = true;
            notifyAll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    public final boolean zzi(long j) throws InterruptedException, TimeoutException {
        boolean z;
        synchronized (this) {
            zzdy.zzf(this.zzi);
            zzdy.zzf(this.zzg.getThread() != Thread.currentThread());
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

    public final boolean zzj() {
        synchronized (this) {
        }
        return false;
    }
}
