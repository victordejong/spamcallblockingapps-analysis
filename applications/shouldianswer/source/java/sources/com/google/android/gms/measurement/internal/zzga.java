package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzv;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzga.class */
public class zzga implements zzgt {
    private static volatile zzga zza;
    private long zzaa;
    private volatile Boolean zzab;
    private Boolean zzac;
    private Boolean zzad;
    private int zzae;
    private final long zzag;
    private final Context zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final boolean zzf;
    private final zzw zzg;
    private final zzx zzh;
    private final zzff zzi;
    private final zzew zzj;
    private final zzft zzk;
    private final zzjo zzl;
    private final zzkm zzm;
    private final zzeu zzn;
    private final Clock zzo;
    private final zzii zzp;
    private final zzhb zzq;
    private final zzb zzr;
    private final zzhz zzs;
    private zzes zzt;
    private zzij zzu;
    private zzah zzv;
    private zzep zzw;
    private zzfl zzx;
    private Boolean zzz;
    private boolean zzy = false;
    private AtomicInteger zzaf = new AtomicInteger(0);

    private zzga(zzhc zzhcVar) {
        Preconditions.checkNotNull(zzhcVar);
        this.zzg = new zzw(zzhcVar.zza);
        zzem.zza = this.zzg;
        this.zzb = zzhcVar.zza;
        this.zzc = zzhcVar.zzb;
        this.zzd = zzhcVar.zzc;
        this.zze = zzhcVar.zzd;
        this.zzf = zzhcVar.zzh;
        this.zzab = zzhcVar.zze;
        zzv zzvVar = zzhcVar.zzg;
        if (zzvVar != null && zzvVar.zzg != null) {
            Object obj = zzvVar.zzg.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzac = (Boolean) obj;
            }
            Object obj2 = zzvVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzad = (Boolean) obj2;
            }
        }
        zzcl.zza(this.zzb);
        this.zzo = DefaultClock.getInstance();
        this.zzag = this.zzo.currentTimeMillis();
        this.zzh = new zzx(this);
        zzff zzffVar = new zzff(this);
        zzffVar.zzab();
        this.zzi = zzffVar;
        zzew zzewVar = new zzew(this);
        zzewVar.zzab();
        this.zzj = zzewVar;
        zzkm zzkmVar = new zzkm(this);
        zzkmVar.zzab();
        this.zzm = zzkmVar;
        zzeu zzeuVar = new zzeu(this);
        zzeuVar.zzab();
        this.zzn = zzeuVar;
        this.zzr = new zzb(this);
        zzii zziiVar = new zzii(this);
        zziiVar.zzx();
        this.zzp = zziiVar;
        zzhb zzhbVar = new zzhb(this);
        zzhbVar.zzx();
        this.zzq = zzhbVar;
        zzjo zzjoVar = new zzjo(this);
        zzjoVar.zzx();
        this.zzl = zzjoVar;
        zzhz zzhzVar = new zzhz(this);
        zzhzVar.zzab();
        this.zzs = zzhzVar;
        zzft zzftVar = new zzft(this);
        zzftVar.zzab();
        this.zzk = zzftVar;
        boolean z = false;
        if (zzhcVar.zzg != null) {
            z = false;
            if (zzhcVar.zzg.zzb != 0) {
                z = true;
            }
        }
        zzw zzwVar = this.zzg;
        if (this.zzb.getApplicationContext() instanceof Application) {
            zzhb zzh = zzh();
            if (zzh.zzn().getApplicationContext() instanceof Application) {
                Application application = (Application) zzh.zzn().getApplicationContext();
                if (zzh.zza == null) {
                    zzh.zza = new zzhy(zzh, null);
                }
                if (!z) {
                    application.unregisterActivityLifecycleCallbacks(zzh.zza);
                    application.registerActivityLifecycleCallbacks(zzh.zza);
                    zzh.zzr().zzx().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzr().zzi().zza("Application context is not an Application");
        }
        this.zzk.zza(new zzgc(this, zzhcVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.zzf == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.zzga zza(android.content.Context r12, com.google.android.gms.internal.measurement.zzv r13) {
        /*
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L34
            r0 = r13
            java.lang.String r0 = r0.zze
            if (r0 == 0) goto L16
            r0 = r13
            r14 = r0
            r0 = r13
            java.lang.String r0 = r0.zzf
            if (r0 != 0) goto L34
        L16:
            com.google.android.gms.internal.measurement.zzv r0 = new com.google.android.gms.internal.measurement.zzv
            r1 = r0
            r2 = r13
            long r2 = r2.zza
            r3 = r13
            long r3 = r3.zzb
            r4 = r13
            boolean r4 = r4.zzc
            r5 = r13
            java.lang.String r5 = r5.zzd
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.zzg
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r14 = r0
        L34:
            r0 = r12
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.zza
            if (r0 != 0) goto L73
            java.lang.Class<com.google.android.gms.measurement.internal.zzga> r0 = com.google.android.gms.measurement.internal.zzga.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.zza     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L67
            com.google.android.gms.measurement.internal.zzhc r0 = new com.google.android.gms.measurement.internal.zzhc     // Catch: java.lang.Throwable -> L6d
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r14
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.measurement.internal.zzga r0 = new com.google.android.gms.measurement.internal.zzga     // Catch: java.lang.Throwable -> L6d
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6d
            r0 = r12
            com.google.android.gms.measurement.internal.zzga.zza = r0     // Catch: java.lang.Throwable -> L6d
        L67:
            java.lang.Class<com.google.android.gms.measurement.internal.zzga> r0 = com.google.android.gms.measurement.internal.zzga.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            goto L9b
        L6d:
            r12 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.zzga> r0 = com.google.android.gms.measurement.internal.zzga.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            r0 = r12
            throw r0
        L73:
            r0 = r14
            if (r0 == 0) goto L9b
            r0 = r14
            android.os.Bundle r0 = r0.zzg
            if (r0 == 0) goto L9b
            r0 = r14
            android.os.Bundle r0 = r0.zzg
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L9b
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.zza
            r1 = r14
            android.os.Bundle r1 = r1.zzg
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.zza(r1)
        L9b:
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.zza
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzga.zza(android.content.Context, com.google.android.gms.internal.measurement.zzv):com.google.android.gms.measurement.internal.zzga");
    }

    public static zzga zza(Context context, String str, String str2, Bundle bundle) {
        return zza(context, new zzv(0L, 0L, true, null, null, null, bundle));
    }

    private static void zza(zzgr zzgrVar) {
        if (zzgrVar != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    public final void zza(zzhc zzhcVar) {
        zzey zzeyVar;
        String str;
        zzq().zzd();
        zzah zzahVar = new zzah(this);
        zzahVar.zzab();
        this.zzv = zzahVar;
        zzep zzepVar = new zzep(this, zzhcVar.zzf);
        zzepVar.zzx();
        this.zzw = zzepVar;
        zzes zzesVar = new zzes(this);
        zzesVar.zzx();
        this.zzt = zzesVar;
        zzij zzijVar = new zzij(this);
        zzijVar.zzx();
        this.zzu = zzijVar;
        this.zzm.zzac();
        this.zzi.zzac();
        this.zzx = new zzfl(this);
        this.zzw.zzy();
        zzr().zzv().zza("App measurement is starting up, version", Long.valueOf(this.zzh.zze()));
        zzw zzwVar = this.zzg;
        zzr().zzv().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        zzw zzwVar2 = this.zzg;
        String zzab = zzepVar.zzab();
        if (TextUtils.isEmpty(this.zzc)) {
            if (zzi().zzf(zzab)) {
                zzeyVar = zzr().zzv();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzeyVar = zzr().zzv();
                String valueOf = String.valueOf(zzab);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzeyVar.zza(str);
        }
        zzr().zzw().zza("Debug-level message logging enabled");
        if (this.zzae != this.zzaf.get()) {
            zzr().zzf().zza("Not all components initialized", Integer.valueOf(this.zzae), Integer.valueOf(this.zzaf.get()));
        }
        this.zzy = true;
    }

    private final zzhz zzai() {
        zzb(this.zzs);
        return this.zzs;
    }

    private final void zzaj() {
        if (this.zzy) {
            return;
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    private static void zzb(zze zzeVar) {
        if (zzeVar != null) {
            if (zzeVar.zzv()) {
                return;
            }
            String valueOf = String.valueOf(zzeVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    private static void zzb(zzgu zzguVar) {
        if (zzguVar != null) {
            if (zzguVar.zzz()) {
                return;
            }
            String valueOf = String.valueOf(zzguVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    public final void zza() {
        zzq().zzd();
        if (zzc().zzc.zza() == 0) {
            zzc().zzc.zza(this.zzo.currentTimeMillis());
        }
        if (Long.valueOf(zzc().zzh.zza()).longValue() == 0) {
            zzr().zzx().zza("Persisting first open", Long.valueOf(this.zzag));
            zzc().zzh.zza(this.zzag);
        }
        if (zzag()) {
            zzw zzwVar = this.zzg;
            if (!TextUtils.isEmpty(zzy().zzac()) || !TextUtils.isEmpty(zzy().zzad())) {
                zzi();
                if (zzkm.zza(zzy().zzac(), zzc().zzh(), zzy().zzad(), zzc().zzi())) {
                    zzr().zzv().zza("Rechecking which service to use due to a GMP App Id change");
                    zzc().zzk();
                    zzk().zzab();
                    this.zzu.zzah();
                    this.zzu.zzaf();
                    zzc().zzh.zza(this.zzag);
                    zzc().zzj.zza(null);
                }
                zzc().zzc(zzy().zzac());
                zzc().zzd(zzy().zzad());
            }
            zzh().zza(zzc().zzj.zza());
            zzw zzwVar2 = this.zzg;
            if (zzkb.zzb() && this.zzh.zza(zzap.zzcl) && !zzi().zzv() && !TextUtils.isEmpty(zzc().zzw.zza())) {
                zzr().zzi().zza("Remote config removed with active feature rollouts");
                zzc().zzw.zza(null);
            }
            if (!TextUtils.isEmpty(zzy().zzac()) || !TextUtils.isEmpty(zzy().zzad())) {
                boolean zzab = zzab();
                if (!zzc().zzx() && !this.zzh.zzg()) {
                    zzc().zzc(!zzab);
                }
                if (zzab) {
                    zzh().zzai();
                }
                zze().zza.zza();
                zzw().zza(new AtomicReference<>());
            }
        } else if (zzab()) {
            if (!zzi().zzd("android.permission.INTERNET")) {
                zzr().zzf().zza("App is missing INTERNET permission");
            }
            if (!zzi().zzd("android.permission.ACCESS_NETWORK_STATE")) {
                zzr().zzf().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            zzw zzwVar3 = this.zzg;
            if (!Wrappers.packageManager(this.zzb).isCallerInstantApp() && !this.zzh.zzx()) {
                if (!zzfq.zza(this.zzb)) {
                    zzr().zzf().zza("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzkm.zza(this.zzb, false)) {
                    zzr().zzf().zza("AppMeasurementService not registered/enabled");
                }
            }
            zzr().zzf().zza("Uploading is not possible. App measurement disabled");
        }
        zzc().zzo.zza(this.zzh.zza(zzap.zzbh));
        zzc().zzp.zza(this.zzh.zza(zzap.zzbi));
    }

    public final void zza(zze zzeVar) {
        this.zzae++;
    }

    public final void zza(zzgu zzguVar) {
        this.zzae++;
    }

    public final /* synthetic */ void zza(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        if (!((i == 200 || i == 204 || i == 304) && th == null)) {
            zzr().zzi().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        zzc().zzu.zza(true);
        if (bArr.length == 0) {
            zzr().zzw().zza("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            double optDouble = jSONObject.optDouble("timestamp", FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            if (TextUtils.isEmpty(optString)) {
                zzr().zzw().zza("Deferred Deep Link is empty.");
                return;
            }
            zzkm zzi = zzi();
            zzi.zzb();
            if (!(!TextUtils.isEmpty(optString) && (queryIntentActivities = zzi.zzn().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty())) {
                zzr().zzi().zza("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.zzq.zza("auto", "_cmp", bundle);
            zzkm zzi2 = zzi();
            if (TextUtils.isEmpty(optString) || !zzi2.zza(optString, optDouble)) {
                return;
            }
            zzi2.zzn().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
        } catch (JSONException e) {
            zzr().zzf().zza("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    public final void zza(boolean z) {
        this.zzab = Boolean.valueOf(z);
    }

    public final boolean zzaa() {
        return this.zzab != null && this.zzab.booleanValue();
    }

    public final boolean zzab() {
        zzq().zzd();
        zzaj();
        if (this.zzh.zzg()) {
            return false;
        }
        Boolean bool = this.zzad;
        if (bool != null && bool.booleanValue()) {
            return false;
        }
        Boolean zzv = zzc().zzv();
        if (zzv != null) {
            return zzv.booleanValue();
        }
        Boolean zzh = this.zzh.zzh();
        if (zzh != null) {
            return zzh.booleanValue();
        }
        Boolean bool2 = this.zzac;
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        if (GoogleServices.isMeasurementExplicitlyDisabled()) {
            return false;
        }
        if (this.zzh.zza(zzap.zzax) && this.zzab != null) {
            return this.zzab.booleanValue();
        }
        return true;
    }

    public final long zzac() {
        Long valueOf = Long.valueOf(zzc().zzh.zza());
        return valueOf.longValue() == 0 ? this.zzag : Math.min(this.zzag, valueOf.longValue());
    }

    public final void zzad() {
        zzw zzwVar = this.zzg;
    }

    public final void zzae() {
        zzw zzwVar = this.zzg;
        throw new IllegalStateException("Unexpected call on client side");
    }

    public final void zzaf() {
        this.zzaf.incrementAndGet();
    }

    public final boolean zzag() {
        zzaj();
        zzq().zzd();
        Boolean bool = this.zzz;
        if (bool == null || this.zzaa == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.zzo.elapsedRealtime() - this.zzaa) > 1000)) {
            this.zzaa = this.zzo.elapsedRealtime();
            zzw zzwVar = this.zzg;
            this.zzz = Boolean.valueOf(zzi().zzd("android.permission.INTERNET") && zzi().zzd("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzb).isCallerInstantApp() || this.zzh.zzx() || (zzfq.zza(this.zzb) && zzkm.zza(this.zzb, false))));
            if (this.zzz.booleanValue()) {
                boolean z = true;
                if (!zzi().zza(zzy().zzac(), zzy().zzad(), zzy().zzae())) {
                    z = !TextUtils.isEmpty(zzy().zzad());
                }
                this.zzz = Boolean.valueOf(z);
            }
        }
        return this.zzz.booleanValue();
    }

    public final void zzah() {
        zzq().zzd();
        zzb(zzai());
        String zzab = zzy().zzab();
        Pair<String, Boolean> zza2 = zzc().zza(zzab);
        if (!this.zzh.zzi().booleanValue() || ((Boolean) zza2.second).booleanValue() || TextUtils.isEmpty((CharSequence) zza2.first)) {
            zzr().zzw().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        } else if (!zzai().zzg()) {
            zzr().zzi().zza("Network is not available for Deferred Deep Link request. Skipping");
        } else {
            URL zza3 = zzi().zza(zzy().zzt().zze(), zzab, (String) zza2.first, zzc().zzv.zza() - 1);
            zzhz zzai = zzai();
            zzic zzicVar = new zzic(this) { // from class: com.google.android.gms.measurement.internal.zzfz
                private final zzga zza;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.measurement.internal.zzic
                public final void zza(String str, int i, Throwable th, byte[] bArr, Map map) {
                    this.zza.zza(str, i, th, bArr, map);
                }
            };
            zzai.zzd();
            zzai.zzaa();
            Preconditions.checkNotNull(zza3);
            Preconditions.checkNotNull(zzicVar);
            zzai.zzq().zzb(new zzib(zzai, zzab, zza3, null, null, zzicVar));
        }
    }

    public final zzx zzb() {
        return this.zzh;
    }

    public final zzff zzc() {
        zza((zzgr) this.zzi);
        return this.zzi;
    }

    public final zzew zzd() {
        zzew zzewVar = this.zzj;
        if (zzewVar == null || !zzewVar.zzz()) {
            return null;
        }
        return this.zzj;
    }

    public final zzjo zze() {
        zzb(this.zzl);
        return this.zzl;
    }

    public final zzfl zzf() {
        return this.zzx;
    }

    public final zzft zzg() {
        return this.zzk;
    }

    public final zzhb zzh() {
        zzb(this.zzq);
        return this.zzq;
    }

    public final zzkm zzi() {
        zza((zzgr) this.zzm);
        return this.zzm;
    }

    public final zzeu zzj() {
        zza((zzgr) this.zzn);
        return this.zzn;
    }

    public final zzes zzk() {
        zzb(this.zzt);
        return this.zzt;
    }

    public final boolean zzl() {
        return TextUtils.isEmpty(this.zzc);
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Clock zzm() {
        return this.zzo;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Context zzn() {
        return this.zzb;
    }

    public final String zzo() {
        return this.zzc;
    }

    public final String zzp() {
        return this.zzd;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzft zzq() {
        zzb(this.zzk);
        return this.zzk;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzew zzr() {
        zzb(this.zzj);
        return this.zzj;
    }

    public final String zzs() {
        return this.zze;
    }

    public final boolean zzt() {
        return this.zzf;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzw zzu() {
        return this.zzg;
    }

    public final zzii zzv() {
        zzb(this.zzp);
        return this.zzp;
    }

    public final zzij zzw() {
        zzb(this.zzu);
        return this.zzu;
    }

    public final zzah zzx() {
        zzb(this.zzv);
        return this.zzv;
    }

    public final zzep zzy() {
        zzb(this.zzw);
        return this.zzw;
    }

    public final zzb zzz() {
        zzb zzbVar = this.zzr;
        if (zzbVar != null) {
            return zzbVar;
        }
        throw new IllegalStateException("Component not created");
    }
}
