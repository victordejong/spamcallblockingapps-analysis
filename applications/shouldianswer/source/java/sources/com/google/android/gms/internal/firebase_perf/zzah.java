package com.google.android.gms.internal.firebase_perf;

import android.os.Build;
import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzah;
import com.google.android.gms.internal.firebase-perf.zzaz;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzah.class */
public final class zzah {
    private static final long zzah = TimeUnit.SECONDS.toMicros(1);
    private static com.google.android.gms.internal.firebase-perf.zzah zzai = null;
    private final long zzam;
    private final String zzan;
    private ScheduledFuture zzaj = null;
    private long zzal = -1;
    public final ConcurrentLinkedQueue<zzbn> zzao = new ConcurrentLinkedQueue<>();
    private final ScheduledExecutorService zzak = Executors.newSingleThreadScheduledExecutor();

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    private zzah() {
        char c = 65535;
        String num = Integer.toString(Process.myPid());
        StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 11);
        sb.append("/proc/");
        sb.append(num);
        sb.append("/stat");
        this.zzan = sb.toString();
        this.zzam = Build.VERSION.SDK_INT >= 21 ? Os.sysconf(OsConstants._SC_CLK_TCK) : c;
    }

    private final long zzb(long j) {
        return Math.round((j / this.zzam) * zzah);
    }

    private final void zzb(long j, zzaz zzazVar) {
        synchronized (this) {
            this.zzal = j;
            try {
                this.zzaj = this.zzak.scheduleAtFixedRate(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.firebase_perf.zzag
                    private final zzah zzaf;
                    private final zzaz zzag;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzaf = this;
                        this.zzag = zzazVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzaf.zze(this.zzag);
                    }
                }, 0L, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("FirebasePerformance", valueOf.length() != 0 ? "Unable to start collecting Cpu Metrics: ".concat(valueOf) : new String("Unable to start collecting Cpu Metrics: "));
            }
        }
    }

    private final void zzb(zzaz zzazVar) {
        synchronized (this) {
            try {
                this.zzak.schedule(new Runnable(this, zzazVar) { // from class: com.google.android.gms.internal.firebase_perf.zzaj
                    private final zzah zzaf;
                    private final zzaz zzag;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzaf = this;
                        this.zzag = zzazVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzaf.zzd(this.zzag);
                    }
                }, 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("FirebasePerformance", valueOf.length() != 0 ? "Unable to collect Cpu Metric: ".concat(valueOf) : new String("Unable to collect Cpu Metric: "));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.firebase-perf.zzbn zzc(com.google.android.gms.internal.firebase-perf.zzaz r8) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzah.zzc(com.google.android.gms.internal.firebase-perf.zzaz):com.google.android.gms.internal.firebase-perf.zzbn");
    }

    public static boolean zzc(long j) {
        return j <= 0;
    }

    public static com.google.android.gms.internal.firebase-perf.zzah zzn() {
        if (zzai == null) {
            zzai = new zzah();
        }
        return zzai;
    }

    public final void zza(long j, zzaz zzazVar) {
        long j2 = this.zzam;
        if (j2 == -1 || j2 == 0 || zzc(j)) {
            return;
        }
        if (this.zzaj == null) {
            zzb(j, zzazVar);
        } else if (this.zzal == j) {
        } else {
            zzo();
            zzb(j, zzazVar);
        }
    }

    public final void zza(zzaz zzazVar) {
        zzb(zzazVar);
    }

    public final /* synthetic */ void zzd(zzaz zzazVar) {
        zzbn zzc = zzc(zzazVar);
        if (zzc != null) {
            this.zzao.add(zzc);
        }
    }

    public final /* synthetic */ void zze(zzaz zzazVar) {
        zzbn zzc = zzc(zzazVar);
        if (zzc != null) {
            this.zzao.add(zzc);
        }
    }

    public final void zzo() {
        ScheduledFuture scheduledFuture = this.zzaj;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.zzaj = null;
        this.zzal = -1L;
    }
}
