package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzfg;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzll;
import com.google.android.gms.internal.measurement.zzy;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfl.class */
public final class zzfl implements zzgg {
    private static volatile zzfl zzd;
    private zzea zzA;
    private zzfa zzB;
    private Boolean zzD;
    private long zzE;
    private volatile Boolean zzF;
    private int zzH;
    protected Boolean zza;
    protected Boolean zzb;
    final long zzc;
    private final Context zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;
    private final boolean zzi;
    private final zzz zzj;
    private final zzae zzk;
    private final zzex zzl;
    private final zzei zzm;
    private final zzfi zzn;
    private final zzjq zzo;
    private final zzkk zzp;
    private final zzed zzq;
    private final Clock zzr;
    private final zzib zzs;
    private final zzhn zzt;
    private final zzd zzu;
    private final zzhr zzv;
    private final String zzw;
    private zzec zzx;
    private zzjb zzy;
    private zzam zzz;
    private boolean zzC = false;
    private final AtomicInteger zzI = new AtomicInteger(0);
    private volatile boolean zzG = true;

    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    zzfl(zzgn zzgnVar) {
        Bundle bundle;
        boolean z = false;
        Preconditions.checkNotNull(zzgnVar);
        zzz zzzVar = new zzz(zzgnVar.zza);
        this.zzj = zzzVar;
        zzdu.zza = zzzVar;
        Context context = zzgnVar.zza;
        this.zze = context;
        this.zzf = zzgnVar.zzb;
        this.zzg = zzgnVar.zzc;
        this.zzh = zzgnVar.zzd;
        this.zzi = zzgnVar.zzh;
        this.zzF = zzgnVar.zze;
        this.zzw = zzgnVar.zzj;
        zzy zzyVar = zzgnVar.zzg;
        if (zzyVar != null && (bundle = zzyVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zza = (Boolean) obj;
            }
            Object obj2 = zzyVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzb = (Boolean) obj2;
            }
        }
        zzfg.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzr = defaultClock;
        Long l = zzgnVar.zzi;
        this.zzc = l != null ? l.longValue() : defaultClock.currentTimeMillis();
        this.zzk = new zzae(this);
        zzex zzexVar = new zzex(this);
        zzexVar.zzx();
        this.zzl = zzexVar;
        zzei zzeiVar = new zzei(this);
        zzeiVar.zzx();
        this.zzm = zzeiVar;
        zzkk zzkkVar = new zzkk(this);
        zzkkVar.zzx();
        this.zzp = zzkkVar;
        zzed zzedVar = new zzed(this);
        zzedVar.zzx();
        this.zzq = zzedVar;
        this.zzu = new zzd(this);
        zzib zzibVar = new zzib(this);
        zzibVar.zzc();
        this.zzs = zzibVar;
        zzhn zzhnVar = new zzhn(this);
        zzhnVar.zzc();
        this.zzt = zzhnVar;
        zzjq zzjqVar = new zzjq(this);
        zzjqVar.zzc();
        this.zzo = zzjqVar;
        zzhr zzhrVar = new zzhr(this);
        zzhrVar.zzx();
        this.zzv = zzhrVar;
        zzfi zzfiVar = new zzfi(this);
        zzfiVar.zzx();
        this.zzn = zzfiVar;
        zzy zzyVar2 = zzgnVar.zzg;
        z = (zzyVar2 == null || zzyVar2.zzb == 0) ? true : z;
        if (context.getApplicationContext() instanceof Application) {
            zzhn zzk = zzk();
            if (zzk.zzx.zze.getApplicationContext() instanceof Application) {
                Application application = (Application) zzk.zzx.zze.getApplicationContext();
                if (zzk.zza == null) {
                    zzk.zza = new zzhm(zzk, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(zzk.zza);
                    application.registerActivityLifecycleCallbacks(zzk.zza);
                    zzk.zzx.zzat().zzk().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzat().zze().zza("Application context is not an Application");
        }
        zzfiVar.zzh(new zzfk(this, zzgnVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r14.zzf == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.zzfl zzC(android.content.Context r13, com.google.android.gms.internal.measurement.zzy r14, java.lang.Long r15) {
        /*
            r0 = r14
            r16 = r0
            r0 = r14
            if (r0 == 0) goto L35
            r0 = r14
            java.lang.String r0 = r0.zze
            if (r0 == 0) goto L16
            r0 = r14
            r16 = r0
            r0 = r14
            java.lang.String r0 = r0.zzf
            if (r0 != 0) goto L35
        L16:
            com.google.android.gms.internal.measurement.zzy r0 = new com.google.android.gms.internal.measurement.zzy
            r1 = r0
            r2 = r14
            long r2 = r2.zza
            r3 = r14
            long r3 = r3.zzb
            r4 = r14
            boolean r4 = r4.zzc
            r5 = r14
            java.lang.String r5 = r5.zzd
            r6 = 0
            r7 = 0
            r8 = r14
            android.os.Bundle r8 = r8.zzg
            r9 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r16 = r0
        L35:
            r0 = r13
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            r0 = r13
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.measurement.internal.zzfl r0 = com.google.android.gms.measurement.internal.zzfl.zzd
            if (r0 != 0) goto L75
            java.lang.Class<com.google.android.gms.measurement.internal.zzfl> r0 = com.google.android.gms.measurement.internal.zzfl.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.zzfl r0 = com.google.android.gms.measurement.internal.zzfl.zzd     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L69
            com.google.android.gms.measurement.internal.zzgn r0 = new com.google.android.gms.measurement.internal.zzgn     // Catch: java.lang.Throwable -> L6f
            r14 = r0
            r0 = r14
            r1 = r13
            r2 = r16
            r3 = r15
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L6f
            com.google.android.gms.measurement.internal.zzfl r0 = new com.google.android.gms.measurement.internal.zzfl     // Catch: java.lang.Throwable -> L6f
            r13 = r0
            r0 = r13
            r1 = r14
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6f
            r0 = r13
            com.google.android.gms.measurement.internal.zzfl.zzd = r0     // Catch: java.lang.Throwable -> L6f
        L69:
            java.lang.Class<com.google.android.gms.measurement.internal.zzfl> r0 = com.google.android.gms.measurement.internal.zzfl.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            goto La6
        L6f:
            r13 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.zzfl> r0 = com.google.android.gms.measurement.internal.zzfl.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            r0 = r13
            throw r0
        L75:
            r0 = r16
            if (r0 == 0) goto La6
            r0 = r16
            android.os.Bundle r0 = r0.zzg
            r13 = r0
            r0 = r13
            if (r0 == 0) goto La6
            r0 = r13
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto La6
            com.google.android.gms.measurement.internal.zzfl r0 = com.google.android.gms.measurement.internal.zzfl.zzd
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.measurement.internal.zzfl r0 = com.google.android.gms.measurement.internal.zzfl.zzd
            r1 = r16
            android.os.Bundle r1 = r1.zzg
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.zzF = r1
        La6:
            com.google.android.gms.measurement.internal.zzfl r0 = com.google.android.gms.measurement.internal.zzfl.zzd
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.measurement.internal.zzfl r0 = com.google.android.gms.measurement.internal.zzfl.zzd
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfl.zzC(android.content.Context, com.google.android.gms.internal.measurement.zzy, java.lang.Long):com.google.android.gms.measurement.internal.zzfl");
    }

    public static /* synthetic */ void zzO(zzfl zzflVar, zzgn zzgnVar) {
        zzflVar.zzau().zzg();
        zzflVar.zzk.zzb();
        zzam zzamVar = new zzam(zzflVar);
        zzamVar.zzx();
        zzflVar.zzz = zzamVar;
        zzea zzeaVar = new zzea(zzflVar, zzgnVar.zzf);
        zzeaVar.zzc();
        zzflVar.zzA = zzeaVar;
        zzec zzecVar = new zzec(zzflVar);
        zzecVar.zzc();
        zzflVar.zzx = zzecVar;
        zzjb zzjbVar = new zzjb(zzflVar);
        zzjbVar.zzc();
        zzflVar.zzy = zzjbVar;
        zzflVar.zzp.zzy();
        zzflVar.zzl.zzy();
        zzflVar.zzB = new zzfa(zzflVar);
        zzflVar.zzA.zzd();
        zzeg zzi = zzflVar.zzat().zzi();
        zzflVar.zzk.zzf();
        zzi.zzb("App measurement initialized, version", 39000L);
        zzflVar.zzat().zzi().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String zzi2 = zzeaVar.zzi();
        if (TextUtils.isEmpty(zzflVar.zzf)) {
            if (zzflVar.zzl().zzT(zzi2)) {
                zzflVar.zzat().zzi().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzeg zzi3 = zzflVar.zzat().zzi();
                String valueOf = String.valueOf(zzi2);
                zzi3.zza(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
            }
        }
        zzflVar.zzat().zzj().zza("Debug-level message logging enabled");
        if (zzflVar.zzH != zzflVar.zzI.get()) {
            zzflVar.zzat().zzb().zzc("Not all components initialized", Integer.valueOf(zzflVar.zzH), Integer.valueOf(zzflVar.zzI.get()));
        }
        zzflVar.zzC = true;
    }

    public static final void zzP() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void zzQ(zzge zzgeVar) {
        if (zzgeVar != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void zzR(zzf zzfVar) {
        if (zzfVar != null) {
            if (zzfVar.zza()) {
                return;
            }
            String valueOf = String.valueOf(zzfVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void zzS(zzgf zzgfVar) {
        if (zzgfVar != null) {
            if (zzgfVar.zzu()) {
                return;
            }
            String valueOf = String.valueOf(zzgfVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    @Pure
    public final zzea zzA() {
        zzR(this.zzA);
        return this.zzA;
    }

    @Pure
    public final zzd zzB() {
        zzd zzdVar = this.zzu;
        if (zzdVar != null) {
            return zzdVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final void zzD(boolean z) {
        this.zzF = Boolean.valueOf(z);
    }

    public final boolean zzE() {
        return this.zzF != null && this.zzF.booleanValue();
    }

    public final boolean zzF() {
        return zzG() == 0;
    }

    public final int zzG() {
        zzau().zzg();
        if (this.zzk.zzr()) {
            return 1;
        }
        Boolean bool = this.zzb;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        zzlc.zzb();
        if (this.zzk.zzn(null, zzdw.zzaw)) {
            zzau().zzg();
            if (!this.zzG) {
                return 8;
            }
        }
        Boolean zzf = zzd().zzf();
        if (zzf != null) {
            return zzf.booleanValue() ? 0 : 3;
        }
        zzae zzaeVar = this.zzk;
        zzz zzzVar = zzaeVar.zzx.zzj;
        Boolean zzp = zzaeVar.zzp("firebase_analytics_collection_enabled");
        if (zzp != null) {
            return zzp.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.zza;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.zzk.zzn(null, zzdw.zzS) || this.zzF == null || this.zzF.booleanValue()) ? 0 : 7;
    }

    public final void zzH(boolean z) {
        zzau().zzg();
        this.zzG = z;
    }

    public final boolean zzI() {
        zzau().zzg();
        return this.zzG;
    }

    public final void zzJ() {
        this.zzH++;
    }

    public final void zzK() {
        this.zzI.incrementAndGet();
    }

    public final boolean zzL() {
        if (this.zzC) {
            zzau().zzg();
            Boolean bool = this.zzD;
            if (bool == null || this.zzE == 0 || (!bool.booleanValue() && Math.abs(this.zzr.elapsedRealtime() - this.zzE) > 1000)) {
                this.zzE = this.zzr.elapsedRealtime();
                Boolean valueOf = Boolean.valueOf(zzl().zzQ("android.permission.INTERNET") && zzl().zzQ("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zze).isCallerInstantApp() || this.zzk.zzy() || (zzfb.zza(this.zze) && zzkk.zzP(this.zze, false))));
                this.zzD = valueOf;
                if (valueOf.booleanValue()) {
                    boolean z = true;
                    if (!zzl().zzA(zzA().zzj(), zzA().zzk(), zzA().zzl())) {
                        z = !TextUtils.isEmpty(zzA().zzk());
                    }
                    this.zzD = Boolean.valueOf(z);
                }
            }
            return this.zzD.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    public final void zzM() {
        zzau().zzg();
        zzS(zzo());
        String zzi = zzA().zzi();
        Pair<String, Boolean> zzb = zzd().zzb(zzi);
        if (!this.zzk.zzs() || ((Boolean) zzb.second).booleanValue() || TextUtils.isEmpty((CharSequence) zzb.first)) {
            zzat().zzj().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        zzhr zzo = zzo();
        zzo.zzv();
        ConnectivityManager connectivityManager = (ConnectivityManager) zzo.zzx.zze.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e) {
                networkInfo = null;
            }
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            zzat().zze().zza("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        zzkk zzl = zzl();
        zzA().zzx.zzk.zzf();
        URL zzal = zzl.zzal(39000L, zzi, (String) zzb.first, zzd().zzs.zza() - 1);
        if (zzal == null) {
            return;
        }
        zzhr zzo2 = zzo();
        zzfj zzfjVar = new zzfj(this);
        zzo2.zzg();
        zzo2.zzv();
        Preconditions.checkNotNull(zzal);
        Preconditions.checkNotNull(zzfjVar);
        zzo2.zzx.zzau().zzk(new zzhq(zzo2, zzi, zzal, null, null, zzfjVar, null));
    }

    public final /* synthetic */ void zzN(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        int i2 = i;
        if (i != 200) {
            i2 = i;
            if (i != 204) {
                i2 = i;
                if (i == 304) {
                    i2 = 304;
                }
                zzat().zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
            }
        }
        if (th == null) {
            zzd().zzr.zzb(true);
            if (bArr == null || bArr.length == 0) {
                zzat().zzj().zza("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                String optString2 = jSONObject.optString("gclid", "");
                double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                if (TextUtils.isEmpty(optString)) {
                    zzat().zzj().zza("Deferred Deep Link is empty.");
                    return;
                }
                zzkk zzl = zzl();
                zzfl zzflVar = zzl.zzx;
                if (!TextUtils.isEmpty(optString) && (queryIntentActivities = zzl.zzx.zze.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("gclid", optString2);
                    bundle.putString("_cis", "ddp");
                    this.zzt.zzs("auto", "_cmp", bundle);
                    zzkk zzl2 = zzl();
                    if (TextUtils.isEmpty(optString)) {
                        return;
                    }
                    try {
                        SharedPreferences.Editor edit = zzl2.zzx.zze.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                        edit.putString("deeplink", optString);
                        edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                        if (!edit.commit()) {
                            return;
                        }
                        zzl2.zzx.zze.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                        return;
                    } catch (Exception e) {
                        zzl2.zzx.zzat().zzb().zzb("Failed to persist Deferred Deep Link. exception", e);
                        return;
                    }
                }
                zzat().zze().zzc("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            } catch (JSONException e2) {
                zzat().zzb().zzb("Failed to parse the Deferred Deep Link response. exception", e2);
                return;
            }
        }
        zzat().zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    public final void zza(zzy zzyVar) {
        zzaf zzafVar;
        zzaf zzafVar2;
        zzau().zzg();
        zzlc.zzb();
        if (this.zzk.zzn(null, zzdw.zzaw)) {
            zzaf zzi = zzd().zzi();
            zzex zzd2 = zzd();
            zzfl zzflVar = zzd2.zzx;
            zzd2.zzg();
            int i = 100;
            int i2 = zzd2.zzd().getInt("consent_source", 100);
            if (this.zzk.zzn(null, zzdw.zzax)) {
                zzae zzaeVar = this.zzk;
                zzfl zzflVar2 = zzaeVar.zzx;
                zzlc.zzb();
                Boolean zzp = !zzaeVar.zzn(null, zzdw.zzax) ? null : zzaeVar.zzp("google_analytics_default_allow_ad_storage");
                zzae zzaeVar2 = this.zzk;
                zzfl zzflVar3 = zzaeVar2.zzx;
                zzlc.zzb();
                Boolean zzp2 = !zzaeVar2.zzn(null, zzdw.zzax) ? null : zzaeVar2.zzp("google_analytics_default_allow_analytics_storage");
                if (!(zzp == null && zzp2 == null) && zzd().zzh(20)) {
                    zzafVar2 = new zzaf(zzp, zzp2);
                    i = 20;
                } else {
                    if (!TextUtils.isEmpty(zzA().zzj()) && (i2 == 30 || i2 == 40)) {
                        zzk().zzq(zzaf.zza, 20, this.zzc);
                    } else if (zzyVar != null && zzyVar.zzg != null && zzd().zzh(40)) {
                        zzafVar2 = zzaf.zzb(zzyVar.zzg);
                        if (!zzafVar2.equals(zzaf.zza)) {
                            i = 40;
                        }
                    }
                    zzafVar2 = null;
                }
                zzafVar = zzi;
                if (zzafVar2 != null) {
                    zzk().zzq(zzafVar2, i, this.zzc);
                    zzafVar = zzafVar2;
                }
                zzk().zzr(zzafVar);
            } else {
                zzafVar = zzi;
                if (zzyVar != null) {
                    zzafVar = zzi;
                    if (zzyVar.zzg != null) {
                        zzafVar = zzi;
                        if (zzd().zzh(40)) {
                            zzafVar2 = zzaf.zzb(zzyVar.zzg);
                            zzafVar = zzi;
                            if (!zzafVar2.equals(zzaf.zza)) {
                                zzk().zzq(zzafVar2, 40, this.zzc);
                                zzafVar = zzafVar2;
                            }
                        }
                    }
                }
                zzk().zzr(zzafVar);
            }
        }
        if (zzd().zzc.zza() == 0) {
            zzd().zzc.zzb(this.zzr.currentTimeMillis());
        }
        if (Long.valueOf(zzd().zzh.zza()).longValue() == 0) {
            zzat().zzk().zzb("Persisting first open", Long.valueOf(this.zzc));
            zzd().zzh.zzb(this.zzc);
        }
        zzk().zzb.zzc();
        if (zzL()) {
            if (!TextUtils.isEmpty(zzA().zzj()) || !TextUtils.isEmpty(zzA().zzk())) {
                zzkk zzl = zzl();
                String zzj = zzA().zzj();
                zzex zzd3 = zzd();
                zzd3.zzg();
                String string = zzd3.zzd().getString("gmp_app_id", null);
                String zzk = zzA().zzk();
                zzex zzd4 = zzd();
                zzd4.zzg();
                if (zzl.zzB(zzj, string, zzk, zzd4.zzd().getString("admob_app_id", null))) {
                    zzat().zzi().zza("Rechecking which service to use due to a GMP App Id change");
                    zzex zzd5 = zzd();
                    zzd5.zzg();
                    Boolean zzf = zzd5.zzf();
                    SharedPreferences.Editor edit = zzd5.zzd().edit();
                    edit.clear();
                    edit.apply();
                    if (zzf != null) {
                        zzd5.zze(zzf);
                    }
                    zzn().zzh();
                    this.zzy.zzF();
                    this.zzy.zzB();
                    zzd().zzh.zzb(this.zzc);
                    zzd().zzj.zzb(null);
                }
                zzex zzd6 = zzd();
                String zzj2 = zzA().zzj();
                zzd6.zzg();
                SharedPreferences.Editor edit2 = zzd6.zzd().edit();
                edit2.putString("gmp_app_id", zzj2);
                edit2.apply();
                zzex zzd7 = zzd();
                String zzk2 = zzA().zzk();
                zzd7.zzg();
                SharedPreferences.Editor edit3 = zzd7.zzd().edit();
                edit3.putString("admob_app_id", zzk2);
                edit3.apply();
            }
            zzlc.zzb();
            if (this.zzk.zzn(null, zzdw.zzaw) && !zzd().zzi().zzh()) {
                zzd().zzj.zzb(null);
            }
            zzk().zzE(zzd().zzj.zza());
            zzll.zzb();
            if (this.zzk.zzn(null, zzdw.zzan)) {
                try {
                    zzl().zzx.zze.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException e) {
                    if (!TextUtils.isEmpty(zzd().zzt.zza())) {
                        zzat().zze().zza("Remote config removed with active feature rollouts");
                        zzd().zzt.zzb(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(zzA().zzj()) || !TextUtils.isEmpty(zzA().zzk())) {
                boolean zzF = zzF();
                if (!zzd().zzk() && !this.zzk.zzr()) {
                    zzd().zzj(!zzF);
                }
                if (zzF) {
                    zzk().zzH();
                }
                zzh().zza.zza();
                zzy().zzv(new AtomicReference<>());
                zzy().zzA(zzd().zzw.zza());
            }
        } else if (zzF()) {
            if (!zzl().zzQ("android.permission.INTERNET")) {
                zzat().zzb().zza("App is missing INTERNET permission");
            }
            if (!zzl().zzQ("android.permission.ACCESS_NETWORK_STATE")) {
                zzat().zzb().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!Wrappers.packageManager(this.zze).isCallerInstantApp() && !this.zzk.zzy()) {
                if (!zzfb.zza(this.zze)) {
                    zzat().zzb().zza("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzkk.zzP(this.zze, false)) {
                    zzat().zzb().zza("AppMeasurementService not registered/enabled");
                }
            }
            zzat().zzb().zza("Uploading is not possible. App measurement disabled");
        }
        zzd().zzn.zzb(this.zzk.zzn(null, zzdw.zzW));
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final zzz zzas() {
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final zzei zzat() {
        zzS(this.zzm);
        return this.zzm;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final zzfi zzau() {
        zzS(this.zzn);
        return this.zzn;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final Context zzaw() {
        return this.zze;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final Clock zzax() {
        return this.zzr;
    }

    @Pure
    public final zzae zzc() {
        return this.zzk;
    }

    @Pure
    public final zzex zzd() {
        zzQ(this.zzl);
        return this.zzl;
    }

    public final zzei zzf() {
        zzei zzeiVar = this.zzm;
        if (zzeiVar == null || !zzeiVar.zzu()) {
            return null;
        }
        return this.zzm;
    }

    @Pure
    public final zzjq zzh() {
        zzR(this.zzo);
        return this.zzo;
    }

    @SideEffectFree
    public final zzfa zzi() {
        return this.zzB;
    }

    @SideEffectFree
    public final zzfi zzj() {
        return this.zzn;
    }

    @Pure
    public final zzhn zzk() {
        zzR(this.zzt);
        return this.zzt;
    }

    @Pure
    public final zzkk zzl() {
        zzQ(this.zzp);
        return this.zzp;
    }

    @Pure
    public final zzed zzm() {
        zzQ(this.zzq);
        return this.zzq;
    }

    @Pure
    public final zzec zzn() {
        zzR(this.zzx);
        return this.zzx;
    }

    @Pure
    public final zzhr zzo() {
        zzS(this.zzv);
        return this.zzv;
    }

    @Pure
    public final boolean zzq() {
        return TextUtils.isEmpty(this.zzf);
    }

    @Pure
    public final String zzr() {
        return this.zzf;
    }

    @Pure
    public final String zzs() {
        return this.zzg;
    }

    @Pure
    public final String zzt() {
        return this.zzh;
    }

    @Pure
    public final boolean zzu() {
        return this.zzi;
    }

    @Pure
    public final String zzv() {
        return this.zzw;
    }

    @Pure
    public final zzib zzx() {
        zzR(this.zzs);
        return this.zzs;
    }

    @Pure
    public final zzjb zzy() {
        zzR(this.zzy);
        return this.zzy;
    }

    @Pure
    public final zzam zzz() {
        zzS(this.zzz);
        return this.zzz;
    }
}
