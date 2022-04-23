package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzsl;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbt.class */
public class zzbt implements zzcq {
    private static volatile zzbt zzapl;
    private final boolean zzadv;
    private final String zzadx;
    private final zzk zzaiq;
    private final String zzapm;
    private final String zzapn;
    private final zzba zzapp;
    private final zzap zzapq;
    private final zzbo zzapr;
    private final zzeq zzaps;
    private final zzfk zzapu;
    private final zzan zzapv;
    private final zzdo zzapw;
    private final zzcs zzapx;
    private zzal zzapz;
    private zzdr zzaqa;
    private zzx zzaqb;
    private zzaj zzaqc;
    private zzbg zzaqd;
    private Boolean zzaqe;
    private long zzaqf;
    private volatile Boolean zzaqg;
    private int zzaqh;
    private int zzaqi;
    private final Context zzri;
    private boolean zzvz = false;
    private final Clock zzrz = DefaultClock.getInstance();
    private final long zzagx = this.zzrz.currentTimeMillis();
    private final zzn zzapo = new zzn(this);
    private final zza zzapy = new zza(this);
    private final AppMeasurement zzapt = new AppMeasurement(this);

    private zzbt(zzcr zzcrVar) {
        Preconditions.checkNotNull(zzcrVar);
        this.zzaiq = new zzk(zzcrVar.zzri);
        zzaf.zza(this.zzaiq);
        this.zzri = zzcrVar.zzri;
        this.zzadx = zzcrVar.zzadx;
        this.zzapm = zzcrVar.zzapm;
        this.zzapn = zzcrVar.zzapn;
        this.zzadv = zzcrVar.zzadv;
        this.zzaqg = zzcrVar.zzaqg;
        zzsl.init(this.zzri);
        zzba zzbaVar = new zzba(this);
        zzbaVar.zzq();
        this.zzapp = zzbaVar;
        zzap zzapVar = new zzap(this);
        zzapVar.zzq();
        this.zzapq = zzapVar;
        zzfk zzfkVar = new zzfk(this);
        zzfkVar.zzq();
        this.zzapu = zzfkVar;
        zzan zzanVar = new zzan(this);
        zzanVar.zzq();
        this.zzapv = zzanVar;
        zzdo zzdoVar = new zzdo(this);
        zzdoVar.zzq();
        this.zzapw = zzdoVar;
        zzcs zzcsVar = new zzcs(this);
        zzcsVar.zzq();
        this.zzapx = zzcsVar;
        zzeq zzeqVar = new zzeq(this);
        zzeqVar.zzq();
        this.zzaps = zzeqVar;
        zzbo zzboVar = new zzbo(this);
        zzboVar.zzq();
        this.zzapr = zzboVar;
        zzk zzkVar = this.zzaiq;
        if (this.zzri.getApplicationContext() instanceof Application) {
            zzcs zzge = zzge();
            if (zzge.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) zzge.getContext().getApplicationContext();
                if (zzge.zzaqv == null) {
                    zzge.zzaqv = new zzdm(zzge, null);
                }
                application.unregisterActivityLifecycleCallbacks(zzge.zzaqv);
                application.registerActivityLifecycleCallbacks(zzge.zzaqv);
                zzge.zzgo().zzjl().zzbx("Registered activity lifecycle callback");
            }
        } else {
            zzgo().zzjg().zzbx("Application context is not an Application");
        }
        this.zzapr.zzc(new zzbu(this, zzcrVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.zzadx == null) goto L_0x0016;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.zzbt zza(android.content.Context r12, com.google.android.gms.measurement.internal.zzak r13) {
        /*
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0034
            r0 = r13
            java.lang.String r0 = r0.origin
            if (r0 == 0) goto L_0x0016
            r0 = r13
            r14 = r0
            r0 = r13
            java.lang.String r0 = r0.zzadx
            if (r0 != 0) goto L_0x0034
        L_0x0016:
            com.google.android.gms.measurement.internal.zzak r0 = new com.google.android.gms.measurement.internal.zzak
            r1 = r0
            r2 = r13
            long r2 = r2.zzadt
            r3 = r13
            long r3 = r3.zzadu
            r4 = r13
            boolean r4 = r4.zzadv
            r5 = r13
            java.lang.String r5 = r5.zzadw
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.zzady
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r14 = r0
        L_0x0034:
            r0 = r12
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.measurement.internal.zzbt r0 = com.google.android.gms.measurement.internal.zzbt.zzapl
            if (r0 != 0) goto L_0x0073
            java.lang.Class<com.google.android.gms.measurement.internal.zzbt> r0 = com.google.android.gms.measurement.internal.zzbt.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.zzbt r0 = com.google.android.gms.measurement.internal.zzbt.zzapl     // Catch: all -> 0x006d
            if (r0 != 0) goto L_0x0067
            com.google.android.gms.measurement.internal.zzcr r0 = new com.google.android.gms.measurement.internal.zzcr     // Catch: all -> 0x006d
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r14
            r0.<init>(r1, r2)     // Catch: all -> 0x006d
            com.google.android.gms.measurement.internal.zzbt r0 = new com.google.android.gms.measurement.internal.zzbt     // Catch: all -> 0x006d
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: all -> 0x006d
            r0 = r12
            com.google.android.gms.measurement.internal.zzbt.zzapl = r0     // Catch: all -> 0x006d
        L_0x0067:
            java.lang.Class<com.google.android.gms.measurement.internal.zzbt> r0 = com.google.android.gms.measurement.internal.zzbt.class
            monitor-exit(r0)     // Catch: all -> 0x006d
            goto L_0x009b
        L_0x006d:
            r12 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.zzbt> r0 = com.google.android.gms.measurement.internal.zzbt.class
            monitor-exit(r0)     // Catch: all -> 0x006d
            r0 = r12
            throw r0
        L_0x0073:
            r0 = r14
            if (r0 == 0) goto L_0x009b
            r0 = r14
            android.os.Bundle r0 = r0.zzady
            if (r0 == 0) goto L_0x009b
            r0 = r14
            android.os.Bundle r0 = r0.zzady
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x009b
            com.google.android.gms.measurement.internal.zzbt r0 = com.google.android.gms.measurement.internal.zzbt.zzapl
            r1 = r14
            android.os.Bundle r1 = r1.zzady
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.zzd(r1)
        L_0x009b:
            com.google.android.gms.measurement.internal.zzbt r0 = com.google.android.gms.measurement.internal.zzbt.zzapl
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzbt.zza(android.content.Context, com.google.android.gms.measurement.internal.zzak):com.google.android.gms.measurement.internal.zzbt");
    }

    private static void zza(zzco zzcoVar) {
        if (zzcoVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void zza(zzcp zzcpVar) {
        if (zzcpVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zzcpVar.isInitialized()) {
            String valueOf = String.valueOf(zzcpVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(zzcr zzcrVar) {
        zzar zzarVar;
        String str;
        zzgn().zzaf();
        zzn.zzht();
        zzx zzxVar = new zzx(this);
        zzxVar.zzq();
        this.zzaqb = zzxVar;
        zzaj zzajVar = new zzaj(this);
        zzajVar.zzq();
        this.zzaqc = zzajVar;
        zzal zzalVar = new zzal(this);
        zzalVar.zzq();
        this.zzapz = zzalVar;
        zzdr zzdrVar = new zzdr(this);
        zzdrVar.zzq();
        this.zzaqa = zzdrVar;
        this.zzapu.zzgs();
        this.zzapp.zzgs();
        this.zzaqd = new zzbg(this);
        this.zzaqc.zzgs();
        zzgo().zzjj().zzg("App measurement is starting up, version", Long.valueOf(this.zzapo.zzhc()));
        zzk zzkVar = this.zzaiq;
        zzgo().zzjj().zzbx("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        zzk zzkVar2 = this.zzaiq;
        String zzal = zzajVar.zzal();
        if (TextUtils.isEmpty(this.zzadx)) {
            if (zzgm().zzcw(zzal)) {
                zzarVar = zzgo().zzjj();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzarVar = zzgo().zzjj();
                String valueOf = String.valueOf(zzal);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzarVar.zzbx(str);
        }
        zzgo().zzjk().zzbx("Debug-level message logging enabled");
        if (this.zzaqh != this.zzaqi) {
            zzgo().zzjd().zze("Not all components initialized", Integer.valueOf(this.zzaqh), Integer.valueOf(this.zzaqi));
        }
        this.zzvz = true;
    }

    private static void zza(zzf zzfVar) {
        if (zzfVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zzfVar.isInitialized()) {
            String valueOf = String.valueOf(zzfVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    private final void zzcl() {
        if (!this.zzvz) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final Context getContext() {
        return this.zzri;
    }

    @WorkerThread
    public final boolean isEnabled() {
        boolean z;
        zzgn().zzaf();
        zzcl();
        if (this.zzapo.zzhu()) {
            return false;
        }
        Boolean zzhv = this.zzapo.zzhv();
        if (zzhv != null) {
            z = zzhv.booleanValue();
        } else {
            boolean z2 = !GoogleServices.isMeasurementExplicitlyDisabled();
            z = z2;
            if (z2) {
                z = z2;
                if (this.zzaqg != null) {
                    z = z2;
                    if (zzaf.zzalh.get().booleanValue()) {
                        z = this.zzaqg.booleanValue();
                    }
                }
            }
        }
        return zzgp().zzh(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void start() {
        zzgn().zzaf();
        if (zzgp().zzane.get() == 0) {
            zzgp().zzane.set(this.zzrz.currentTimeMillis());
        }
        if (Long.valueOf(zzgp().zzanj.get()).longValue() == 0) {
            zzgo().zzjl().zzg("Persisting first open", Long.valueOf(this.zzagx));
            zzgp().zzanj.set(this.zzagx);
        }
        if (zzkr()) {
            zzk zzkVar = this.zzaiq;
            if (!TextUtils.isEmpty(zzgf().getGmpAppId()) || !TextUtils.isEmpty(zzgf().zzgw())) {
                zzgm();
                if (zzfk.zza(zzgf().getGmpAppId(), zzgp().zzjs(), zzgf().zzgw(), zzgp().zzjt())) {
                    zzgo().zzjj().zzbx("Rechecking which service to use due to a GMP App Id change");
                    zzgp().zzjv();
                    if (this.zzapo.zza(zzaf.zzalc)) {
                        zzgi().resetAnalyticsData();
                    }
                    this.zzaqa.disconnect();
                    this.zzaqa.zzdj();
                    zzgp().zzanj.set(this.zzagx);
                    zzgp().zzanl.zzcc(null);
                }
                zzgp().zzca(zzgf().getGmpAppId());
                zzgp().zzcb(zzgf().zzgw());
                if (this.zzapo.zzbj(zzgf().zzal())) {
                    this.zzaps.zzam(this.zzagx);
                }
            }
            zzge().zzcm(zzgp().zzanl.zzjz());
            zzk zzkVar2 = this.zzaiq;
            if (!TextUtils.isEmpty(zzgf().getGmpAppId()) || !TextUtils.isEmpty(zzgf().zzgw())) {
                boolean isEnabled = isEnabled();
                if (!zzgp().zzjy() && !this.zzapo.zzhu()) {
                    zzgp().zzi(!isEnabled);
                }
                if (this.zzapo.zze(zzgf().zzal(), zzaf.zzalj)) {
                    zzj(false);
                }
                if (!this.zzapo.zzbd(zzgf().zzal()) || isEnabled) {
                    zzge().zzkz();
                }
                zzgg().zza(new AtomicReference<>());
            }
        } else if (isEnabled()) {
            if (!zzgm().zzx("android.permission.INTERNET")) {
                zzgo().zzjd().zzbx("App is missing INTERNET permission");
            }
            if (!zzgm().zzx("android.permission.ACCESS_NETWORK_STATE")) {
                zzgo().zzjd().zzbx("App is missing ACCESS_NETWORK_STATE permission");
            }
            zzk zzkVar3 = this.zzaiq;
            if (!Wrappers.packageManager(this.zzri).isCallerInstantApp() && !this.zzapo.zzib()) {
                if (!zzbj.zza(this.zzri)) {
                    zzgo().zzjd().zzbx("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzfk.zza(this.zzri, false)) {
                    zzgo().zzjd().zzbx("AppMeasurementService not registered/enabled");
                }
            }
            zzgo().zzjd().zzbx("Uploading is not possible. App measurement disabled");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzcp zzcpVar) {
        this.zzaqh++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzf zzfVar) {
        this.zzaqh++;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final Clock zzbx() {
        return this.zzrz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzd(boolean z) {
        this.zzaqg = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzga() {
        zzk zzkVar = this.zzaiq;
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzgb() {
        zzk zzkVar = this.zzaiq;
    }

    public final zza zzgd() {
        if (this.zzapy != null) {
            return this.zzapy;
        }
        throw new IllegalStateException("Component not created");
    }

    public final zzcs zzge() {
        zza((zzf) this.zzapx);
        return this.zzapx;
    }

    public final zzaj zzgf() {
        zza((zzf) this.zzaqc);
        return this.zzaqc;
    }

    public final zzdr zzgg() {
        zza((zzf) this.zzaqa);
        return this.zzaqa;
    }

    public final zzdo zzgh() {
        zza((zzf) this.zzapw);
        return this.zzapw;
    }

    public final zzal zzgi() {
        zza((zzf) this.zzapz);
        return this.zzapz;
    }

    public final zzeq zzgj() {
        zza((zzf) this.zzaps);
        return this.zzaps;
    }

    public final zzx zzgk() {
        zza((zzcp) this.zzaqb);
        return this.zzaqb;
    }

    public final zzan zzgl() {
        zza((zzco) this.zzapv);
        return this.zzapv;
    }

    public final zzfk zzgm() {
        zza((zzco) this.zzapu);
        return this.zzapu;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzbo zzgn() {
        zza((zzcp) this.zzapr);
        return this.zzapr;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzap zzgo() {
        zza((zzcp) this.zzapq);
        return this.zzapq;
    }

    public final zzba zzgp() {
        zza((zzco) this.zzapp);
        return this.zzapp;
    }

    public final zzn zzgq() {
        return this.zzapo;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzk zzgr() {
        return this.zzaiq;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            com.google.android.gms.measurement.internal.zzbo r0 = r0.zzgn()
            r0.zzaf()
            r0 = r7
            com.google.android.gms.measurement.internal.zzba r0 = r0.zzgp()
            com.google.android.gms.measurement.internal.zzbf r0 = r0.zzans
            java.lang.String r0 = r0.zzjz()
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x005a
            r0 = r9
            if (r0 == 0) goto L_0x005a
            java.lang.String r0 = "unset"
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003e
            r0 = r7
            com.google.android.gms.measurement.internal.zzcs r0 = r0.zzge()
            java.lang.String r1 = "app"
            java.lang.String r2 = "_ap"
            r3 = 0
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.zzrz
            long r4 = r4.currentTimeMillis()
            r0.zza(r1, r2, r3, r4)
            goto L_0x005a
        L_0x003e:
            r0 = r7
            com.google.android.gms.measurement.internal.zzcs r0 = r0.zzge()
            java.lang.String r1 = "app"
            java.lang.String r2 = "_ap"
            r3 = r9
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.zzrz
            long r4 = r4.currentTimeMillis()
            r0.zza(r1, r2, r3, r4)
            r0 = 0
            r10 = r0
            goto L_0x005c
        L_0x005a:
            r0 = 1
            r10 = r0
        L_0x005c:
            r0 = r10
            if (r0 == 0) goto L_0x00b6
            r0 = r7
            com.google.android.gms.measurement.internal.zzn r0 = r0.zzapo
            java.lang.String r1 = "google_analytics_default_allow_ad_personalization_signals"
            java.lang.Boolean r0 = r0.zzau(r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x009f
            r0 = r7
            com.google.android.gms.measurement.internal.zzcs r0 = r0.zzge()
            r11 = r0
            r0 = r9
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0082
            r0 = 1
            r12 = r0
            goto L_0x0085
        L_0x0082:
            r0 = 0
            r12 = r0
        L_0x0085:
            r0 = r11
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_ap"
            r3 = r12
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.zzrz
            long r4 = r4.currentTimeMillis()
            r0.zza(r1, r2, r3, r4)
            return
        L_0x009f:
            r0 = r7
            com.google.android.gms.measurement.internal.zzcs r0 = r0.zzge()
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_ap"
            r3 = 0
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.zzrz
            long r4 = r4.currentTimeMillis()
            r0.zza(r1, r2, r3, r4)
        L_0x00b6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzbt.zzj(boolean):void");
    }

    public final zzap zzkf() {
        if (this.zzapq == null || !this.zzapq.isInitialized()) {
            return null;
        }
        return this.zzapq;
    }

    public final zzbg zzkg() {
        return this.zzaqd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbo zzkh() {
        return this.zzapr;
    }

    public final AppMeasurement zzki() {
        return this.zzapt;
    }

    public final boolean zzkj() {
        return TextUtils.isEmpty(this.zzadx);
    }

    public final String zzkk() {
        return this.zzadx;
    }

    public final String zzkl() {
        return this.zzapm;
    }

    public final String zzkm() {
        return this.zzapn;
    }

    public final boolean zzkn() {
        return this.zzadv;
    }

    @WorkerThread
    public final boolean zzko() {
        return this.zzaqg != null && this.zzaqg.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzkp() {
        Long valueOf = Long.valueOf(zzgp().zzanj.get());
        return valueOf.longValue() == 0 ? this.zzagx : Math.min(this.zzagx, valueOf.longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzkq() {
        this.zzaqi++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final boolean zzkr() {
        zzcl();
        zzgn().zzaf();
        if (this.zzaqe == null || this.zzaqf == 0 || (this.zzaqe != null && !this.zzaqe.booleanValue() && Math.abs(this.zzrz.elapsedRealtime() - this.zzaqf) > 1000)) {
            this.zzaqf = this.zzrz.elapsedRealtime();
            zzk zzkVar = this.zzaiq;
            this.zzaqe = Boolean.valueOf(zzgm().zzx("android.permission.INTERNET") && zzgm().zzx("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzri).isCallerInstantApp() || this.zzapo.zzib() || (zzbj.zza(this.zzri) && zzfk.zza(this.zzri, false))));
            if (this.zzaqe.booleanValue()) {
                boolean z = true;
                if (!zzgm().zzt(zzgf().getGmpAppId(), zzgf().zzgw())) {
                    z = !TextUtils.isEmpty(zzgf().zzgw());
                }
                this.zzaqe = Boolean.valueOf(z);
            }
        }
        return this.zzaqe.booleanValue();
    }
}
