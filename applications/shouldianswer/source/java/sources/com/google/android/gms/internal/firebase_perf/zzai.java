package com.google.android.gms.internal.firebase_perf;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzai;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase-perf.zzbg;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzai.class */
public final class zzai {
    private static final com.google.android.gms.internal.firebase-perf.zzai zzap = new zzai();
    private final ScheduledExecutorService zzaq;
    public final ConcurrentLinkedQueue<zzbg> zzar;
    private final Runtime zzas;
    private ScheduledFuture zzat;
    private long zzau;

    private zzai() {
        this(Executors.newSingleThreadScheduledExecutor(), Runtime.getRuntime());
    }

    private zzai(ScheduledExecutorService scheduledExecutorService, Runtime runtime) {
        this.zzat = null;
        this.zzau = -1L;
        this.zzaq = scheduledExecutorService;
        this.zzar = new ConcurrentLinkedQueue<>();
        this.zzas = runtime;
    }

    private final void zzc(long j, zzaz zzazVar) {
        synchronized (this) {
            this.zzau = j;
            try {
                this.zzat = this.zzaq.scheduleAtFixedRate(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.firebase_perf.zzal
                    private final zzaz zzag;
                    private final zzai zzav;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzav = this;
                        this.zzag = zzazVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzav.zzi(this.zzag);
                    }
                }, 0L, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("FirebasePerformance", valueOf.length() != 0 ? "Unable to start collecting Memory Metrics: ".concat(valueOf) : new String("Unable to start collecting Memory Metrics: "));
            }
        }
    }

    public static boolean zzc(long j) {
        return j <= 0;
    }

    private final void zzf(zzaz zzazVar) {
        synchronized (this) {
            try {
                this.zzaq.schedule(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.firebase_perf.zzak
                    private final zzaz zzag;
                    private final zzai zzav;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzav = this;
                        this.zzag = zzazVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzav.zzh(this.zzag);
                    }
                }, 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("FirebasePerformance", valueOf.length() != 0 ? "Unable to collect Memory Metric: ".concat(valueOf) : new String("Unable to collect Memory Metric: "));
            }
        }
    }

    private final zzbg zzg(zzaz zzazVar) {
        if (zzazVar == null) {
            return null;
        }
        return (zzbg) zzbg.zzcf().zzp(zzazVar.zzbz()).zze(zzaa.zza(zzat.zzhi.zzn(this.zzas.totalMemory() - this.zzas.freeMemory()))).zzgm();
    }

    public static com.google.android.gms.internal.firebase-perf.zzai zzp() {
        return zzap;
    }

    public final void zza(long j, zzaz zzazVar) {
        if (zzc(j)) {
            return;
        }
        if (this.zzat == null) {
            zzc(j, zzazVar);
        } else if (this.zzau == j) {
        } else {
            zzo();
            zzc(j, zzazVar);
        }
    }

    public final void zza(zzaz zzazVar) {
        zzf(zzazVar);
    }

    public final /* synthetic */ void zzh(zzaz zzazVar) {
        zzbg zzg = zzg(zzazVar);
        if (zzg != null) {
            this.zzar.add(zzg);
        }
    }

    public final /* synthetic */ void zzi(zzaz zzazVar) {
        zzbg zzg = zzg(zzazVar);
        if (zzg != null) {
            this.zzar.add(zzg);
        }
    }

    public final void zzo() {
        ScheduledFuture scheduledFuture = this.zzat;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.zzat = null;
        this.zzau = -1L;
    }
}
