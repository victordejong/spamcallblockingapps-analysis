package com.google.firebase.perf.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzah;
import com.google.android.gms.internal.firebase-perf.zzai;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzbt;
import com.google.android.gms.internal.firebase_perf.zzbs;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/GaugeManager.class */
public class GaugeManager {
    private static GaugeManager zzda = new GaugeManager();
    private final FeatureControl zzcr;
    private final ScheduledExecutorService zzdb;
    private final zzah zzdc;
    private final zzai zzdd;
    private zzf zzde;
    private zzr zzdf;
    private zzbj zzdg;
    private String zzdh;
    private ScheduledFuture zzdi;
    private final ConcurrentLinkedQueue<zza> zzdj;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/GaugeManager$zza.class */
    public final class zza {
        private final zzbt zzcz;
        private final zzbj zzdg;

        zza(GaugeManager gaugeManager, zzbt zzbtVar, zzbj zzbjVar) {
            this.zzcz = zzbtVar;
            this.zzdg = zzbjVar;
        }
    }

    private GaugeManager() {
        this(Executors.newSingleThreadScheduledExecutor(), null, FeatureControl.zzad(), null, com.google.android.gms.internal.firebase_perf.zzah.zzn(), com.google.android.gms.internal.firebase_perf.zzai.zzp());
    }

    private GaugeManager(ScheduledExecutorService scheduledExecutorService, zzf zzfVar, FeatureControl featureControl, zzr zzrVar, zzah zzahVar, zzai zzaiVar) {
        this.zzdg = com.google.android.gms.internal.firebase_perf.zzbj.zzii;
        this.zzdh = null;
        this.zzdi = null;
        this.zzdj = new ConcurrentLinkedQueue<>();
        this.zzdb = scheduledExecutorService;
        this.zzde = null;
        this.zzcr = featureControl;
        this.zzdf = null;
        this.zzdc = zzahVar;
        this.zzdd = zzaiVar;
    }

    /* renamed from: zza */
    public final void zzd(String str, zzbj zzbjVar) {
        zzbt.zza zzde = com.google.android.gms.internal.firebase_perf.zzbt.zzde();
        while (!this.zzdc.zzao.isEmpty()) {
            zzde.zzb(this.zzdc.zzao.poll());
        }
        while (!this.zzdd.zzar.isEmpty()) {
            zzde.zzb(this.zzdd.zzar.poll());
        }
        zzde.zzy(str);
        zzc((zzbt) ((com.google.android.gms.internal.firebase_perf.zzbt) zzde.zzgm()), zzbjVar);
    }

    public static GaugeManager zzap() {
        GaugeManager gaugeManager;
        synchronized (GaugeManager.class) {
            try {
                gaugeManager = zzda;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gaugeManager;
    }

    private final void zzc(zzbt zzbtVar, zzbj zzbjVar) {
        zzf zzfVar = this.zzde;
        zzf zzfVar2 = zzfVar;
        if (zzfVar == null) {
            zzfVar2 = zzf.zzal();
        }
        this.zzde = zzfVar2;
        zzf zzfVar3 = this.zzde;
        if (zzfVar3 == null) {
            this.zzdj.add(new zza(this, zzbtVar, zzbjVar));
            return;
        }
        zzfVar3.zza(zzbtVar, zzbjVar);
        while (!this.zzdj.isEmpty()) {
            zza poll = this.zzdj.poll();
            this.zzde.zza(poll.zzcz, poll.zzdg);
        }
    }

    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    public final void zza(zzt zztVar, zzbj zzbjVar) {
        boolean z;
        boolean z2;
        if (this.zzdh != null) {
            zzaq();
        }
        zzaz zzaw = zztVar.zzaw();
        int i = zzp.zzdo[zzbjVar.ordinal()];
        char zzag = i != 1 ? i != 2 ? (char) 65535 : this.zzcr.zzag() : this.zzcr.zzai();
        char c = zzag;
        if (com.google.android.gms.internal.firebase_perf.zzah.zzc(zzag)) {
            c = 65535;
        }
        if (c == -1) {
            Log.d("FirebasePerformance", "Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics.");
            z = false;
        } else {
            this.zzdc.zza(c, zzaw);
            z = true;
        }
        if (!z) {
            c = 65535;
        }
        int i2 = zzp.zzdo[zzbjVar.ordinal()];
        char zzah = i2 != 1 ? i2 != 2 ? (char) 65535 : this.zzcr.zzah() : this.zzcr.zzaj();
        char c2 = zzah;
        if (com.google.android.gms.internal.firebase_perf.zzai.zzc(zzah)) {
            c2 = 65535;
        }
        if (c2 == -1) {
            Log.d("FirebasePerformance", "Invalid Memory Metrics collection frequency. Did not collect Memory Metrics.");
            z2 = false;
        } else {
            this.zzdd.zza(c2, zzaw);
            z2 = true;
        }
        char c3 = c;
        if (z2) {
            c3 = c == -1 ? c2 : Math.min((long) c, (long) c2);
        }
        if (c3 == -1) {
            Log.w("FirebasePerformance", "Invalid gauge collection frequency. Unable to start collecting Gauges.");
            return;
        }
        this.zzdh = zztVar.zzav();
        this.zzdg = zzbjVar;
        String str = this.zzdh;
        try {
            ScheduledExecutorService scheduledExecutorService = this.zzdb;
            Runnable runnable = new Runnable(this, str, zzbjVar) { // from class: com.google.firebase.perf.internal.zzo
                private final GaugeManager zzdl;
                private final String zzdm;
                private final zzbj zzdn;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdl = this;
                    this.zzdm = str;
                    this.zzdn = zzbjVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdl.zzd(this.zzdm, this.zzdn);
                }
            };
            long j = c3 * 20;
            this.zzdi = scheduledExecutorService.scheduleAtFixedRate(runnable, j, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("FirebasePerformance", valueOf.length() != 0 ? "Unable to start collecting Gauges: ".concat(valueOf) : new String("Unable to start collecting Gauges: "));
        }
    }

    public final void zzaq() {
        String str = this.zzdh;
        if (str == null) {
            return;
        }
        zzbj zzbjVar = this.zzdg;
        this.zzdc.zzo();
        this.zzdd.zzo();
        ScheduledFuture scheduledFuture = this.zzdi;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zzdb.schedule(new Runnable(this, str, zzbjVar) { // from class: com.google.firebase.perf.internal.zzn
            private final GaugeManager zzdl;
            private final String zzdm;
            private final zzbj zzdn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdl = this;
                this.zzdm = str;
                this.zzdn = zzbjVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdl.zzc(this.zzdm, this.zzdn);
            }
        }, 20L, TimeUnit.MILLISECONDS);
        this.zzdh = null;
        this.zzdg = com.google.android.gms.internal.firebase_perf.zzbj.zzii;
    }

    public final boolean zzb(String str, zzbj zzbjVar) {
        if (this.zzdf != null) {
            zzc((zzbt) ((com.google.android.gms.internal.firebase_perf.zzbt) com.google.android.gms.internal.firebase_perf.zzbt.zzde().zzy(str).zzb((zzbs) zzbs.zzcv().zzx(this.zzdf.getProcessName()).zzi(this.zzdf.zzat()).zzj(this.zzdf.zzar()).zzk(this.zzdf.zzas()).zzgm()).zzgm()), zzbjVar);
            return true;
        }
        return false;
    }

    public final void zzf(Context context) {
        this.zzdf = new zzr(context);
    }

    public final void zzj(zzaz zzazVar) {
        zzah zzahVar = this.zzdc;
        zzai zzaiVar = this.zzdd;
        zzahVar.zza(zzazVar);
        zzaiVar.zza(zzazVar);
    }
}
