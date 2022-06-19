package com.google.firebase.perf.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.internal.firebase-perf.zzbh;
import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzbt;
import com.google.android.gms.internal.firebase-perf.zzca;
import com.google.android.gms.internal.firebase-perf.zzcg;
import com.google.android.gms.internal.firebase-perf.zzcp;
import com.google.android.gms.internal.firebase_perf.zzap;
import com.google.android.gms.internal.firebase_perf.zzbc;
import com.google.android.gms.internal.firebase_perf.zzbd;
import com.google.android.gms.internal.firebase_perf.zzbh;
import com.google.android.gms.internal.firebase_perf.zzeh;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.perf.FirebasePerformance;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzf.class */
public class zzf {
    private static volatile zzf zzcg;
    private FirebaseApp zzci;
    private FirebasePerformance zzcj;
    private Context zzcl;
    private String zzcn;
    private boolean zzcs;
    private final zzbh.zza zzco = com.google.android.gms.internal.firebase_perf.zzbh.zzcn();
    private final ExecutorService zzch = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private ClearcutLogger zzcm = null;
    private zzv zzcp = null;
    private zza zzcq = null;
    private FirebaseInstanceId zzck = null;
    private FeatureControl zzcr = null;

    private zzf(ExecutorService executorService, ClearcutLogger clearcutLogger, zzv zzvVar, zza zzaVar, FirebaseInstanceId firebaseInstanceId, FeatureControl featureControl) {
        this.zzch.execute(new zze(this));
    }

    private final boolean isPerformanceCollectionEnabled() {
        zzao();
        if (this.zzcr == null) {
            this.zzcr = FeatureControl.zzad();
        }
        FirebasePerformance firebasePerformance = this.zzcj;
        return firebasePerformance != null && firebasePerformance.isPerformanceCollectionEnabled() && this.zzcr.zzae();
    }

    private final void zza(zzcg zzcgVar) {
        boolean z;
        if (this.zzcm != null && isPerformanceCollectionEnabled()) {
            if (!zzcgVar.zzeg().zzci()) {
                Log.w("FirebasePerformance", "App Instance ID is null or empty, dropping the log");
                return;
            }
            Context context = this.zzcl;
            ArrayList arrayList = new ArrayList();
            if (zzcgVar.zzeh()) {
                arrayList.add(new zzm(zzcgVar.zzei()));
            }
            if (zzcgVar.zzej()) {
                arrayList.add(new zzk(zzcgVar.zzek(), context));
            }
            if (zzcgVar.zzef()) {
                arrayList.add(new zzd(zzcgVar.zzeg()));
            }
            if (zzcgVar.zzel()) {
                arrayList.add(new zzl(zzcgVar.zzem()));
            }
            if (!arrayList.isEmpty()) {
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        z = true;
                        break;
                    }
                    i++;
                    if (!((zzq) arrayList2.get(i)).zzac()) {
                        z = false;
                        break;
                    }
                }
            } else {
                Log.d("FirebasePerformance", "No validators found for PerfMetric.");
                z = false;
            }
            if (!z) {
                Log.w("FirebasePerformance", "Unable to process the PerfMetric due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.");
            } else if (this.zzcp.zzb(zzcgVar)) {
                try {
                    this.zzcm.newEvent(zzcgVar.toByteArray()).log();
                } catch (SecurityException e) {
                }
            } else {
                if (zzcgVar.zzej()) {
                    this.zzcq.zza(zzap.zzgw.toString(), 1L);
                } else if (zzcgVar.zzeh()) {
                    this.zzcq.zza(zzap.zzgv.toString(), 1L);
                }
                if (!this.zzcs) {
                    return;
                }
                if (zzcgVar.zzej()) {
                    String valueOf = String.valueOf(zzcgVar.zzek().getUrl());
                    Log.i("FirebasePerformance", valueOf.length() != 0 ? "Rate Limited NetworkRequestMetric - ".concat(valueOf) : new String("Rate Limited NetworkRequestMetric - "));
                } else if (!zzcgVar.zzeh()) {
                } else {
                    String valueOf2 = String.valueOf(zzcgVar.zzei().getName());
                    Log.i("FirebasePerformance", valueOf2.length() != 0 ? "Rate Limited TraceMetric - ".concat(valueOf2) : new String("Rate Limited TraceMetric - "));
                }
            }
        }
    }

    public static zzf zzal() {
        if (zzcg == null) {
            synchronized (zzf.class) {
                try {
                    if (zzcg == null) {
                        try {
                            FirebaseApp.getInstance();
                            zzcg = new zzf(null, null, null, null, null, null);
                        } catch (IllegalStateException e) {
                            return null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzcg;
    }

    public final void zzam() {
        this.zzci = FirebaseApp.getInstance();
        this.zzcj = FirebasePerformance.getInstance();
        this.zzcl = this.zzci.getApplicationContext();
        this.zzcn = this.zzci.getOptions().getApplicationId();
        this.zzco.zzt(this.zzcn).zza(zzbc.zzcc().zzo(this.zzcl.getPackageName()).zzp(zzc.VERSION_NAME).zzq(zze(this.zzcl)));
        zzan();
        zzv zzvVar = this.zzcp;
        zzv zzvVar2 = zzvVar;
        if (zzvVar == null) {
            zzvVar2 = new zzv(this.zzcl, 100L, 500L);
        }
        this.zzcp = zzvVar2;
        zza zzaVar = this.zzcq;
        zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = zza.zzq();
        }
        this.zzcq = zzaVar2;
        FeatureControl featureControl = this.zzcr;
        FeatureControl featureControl2 = featureControl;
        if (featureControl == null) {
            featureControl2 = FeatureControl.zzad();
        }
        this.zzcr = featureControl2;
        this.zzcs = zzbd.zzg(this.zzcl);
        if (this.zzcm == null) {
            try {
                this.zzcm = ClearcutLogger.anonymousLogger(this.zzcl, this.zzcr.zzd(this.zzcl));
            } catch (SecurityException e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("FirebasePerformance", valueOf.length() != 0 ? "Caught SecurityException while init ClearcutLogger: ".concat(valueOf) : new String("Caught SecurityException while init ClearcutLogger: "));
                this.zzcm = null;
            }
        }
    }

    private final void zzan() {
        if (!this.zzco.zzci() && isPerformanceCollectionEnabled()) {
            if (this.zzck == null) {
                this.zzck = FirebaseInstanceId.getInstance();
            }
            String id = this.zzck.getId();
            if (id == null || id.isEmpty()) {
                return;
            }
            this.zzco.zzu(id);
        }
    }

    private final void zzao() {
        if (this.zzcj == null) {
            this.zzcj = this.zzci != null ? FirebasePerformance.getInstance() : null;
        }
    }

    public final void zzb(zzbt zzbtVar, zzbj zzbjVar) {
        if (isPerformanceCollectionEnabled()) {
            if (this.zzcs) {
                Log.d("FirebasePerformance", String.format("Logging GaugeMetric. Cpu Metrics: %d, Memory Metrics: %d, Has Metadata: %b, Session ID: %s", Integer.valueOf(zzbtVar.zzdc()), Integer.valueOf(zzbtVar.zzdd()), Boolean.valueOf(zzbtVar.zzda()), zzbtVar.zzcz()));
            }
            zzcg.zza zzen = com.google.android.gms.internal.firebase_perf.zzcg.zzen();
            zzan();
            zzen.zza(this.zzco.zzf(zzbjVar)).zzb(zzbtVar);
            zza((com.google.android.gms.internal.firebase_perf.zzcg) zzen.zzgm());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [long] */
    public final void zzb(zzca zzcaVar, zzbj zzbjVar) {
        if (isPerformanceCollectionEnabled()) {
            if (this.zzcs) {
                ?? r14 = false;
                ?? zzdy = !zzcaVar.zzdx() ? (char) 0 : zzcaVar.zzdy();
                if (zzcaVar.zzdn()) {
                    r14 = zzcaVar.zzdo();
                }
                Log.d("FirebasePerformance", String.format("Logging NetworkRequestMetric - %s %db %dms,", zzcaVar.getUrl(), Long.valueOf(r14 == true ? 1L : 0L), Long.valueOf(zzdy / 1000)));
            }
            zzan();
            zza((com.google.android.gms.internal.firebase_perf.zzcg) com.google.android.gms.internal.firebase_perf.zzcg.zzen().zza(this.zzco.zzf(zzbjVar)).zzd(zzcaVar).zzgm());
        }
    }

    public final void zzb(zzcp zzcpVar, zzbj zzbjVar) {
        if (isPerformanceCollectionEnabled()) {
            if (this.zzcs) {
                Log.d("FirebasePerformance", String.format("Logging TraceMetric - %s %dms", zzcpVar.getName(), Long.valueOf(zzcpVar.getDurationUs() / 1000)));
            }
            zzan();
            zzcg.zza zzen = com.google.android.gms.internal.firebase_perf.zzcg.zzen();
            zzbh.zza zzf = ((zzbh.zza) ((zzeh.zza) this.zzco.clone())).zzf(zzbjVar);
            zzao();
            FirebasePerformance firebasePerformance = this.zzcj;
            zza((com.google.android.gms.internal.firebase_perf.zzcg) zzen.zza(zzf.zzb(firebasePerformance != null ? firebasePerformance.getAttributes() : Collections.emptyMap())).zzb(zzcpVar).zzgm());
        }
    }

    private static String zze(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    public final void zza(zzbt zzbtVar, zzbj zzbjVar) {
        this.zzch.execute(new zzj(this, zzbtVar, zzbjVar));
        SessionManager.zzbl().zzbn();
    }

    public final void zza(zzca zzcaVar, zzbj zzbjVar) {
        this.zzch.execute(new zzg(this, zzcaVar, zzbjVar));
        SessionManager.zzbl().zzbn();
    }

    public final void zza(zzcp zzcpVar, zzbj zzbjVar) {
        this.zzch.execute(new zzh(this, zzcpVar, zzbjVar));
        SessionManager.zzbl().zzbn();
    }

    public final void zzb(boolean z) {
        this.zzch.execute(new zzi(this, z));
    }

    public final void zzc(boolean z) {
        this.zzcp.zzb(z);
    }
}
