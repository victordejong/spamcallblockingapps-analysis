package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzx.class */
public final class zzx extends zzgr {
    private Boolean zza;
    private zzz zzb = zzaa.zza;
    private Boolean zzc;

    public zzx(zzga zzgaVar) {
        super(zzgaVar);
    }

    private final String zza(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (ClassNotFoundException e) {
            zzr().zzf().zza("Could not find SystemProperties class", e);
            return str2;
        } catch (IllegalAccessException e2) {
            zzr().zzf().zza("Could not access SystemProperties.get()", e2);
            return str2;
        } catch (NoSuchMethodException e3) {
            zzr().zzf().zza("Could not find SystemProperties.get() method", e3);
            return str2;
        } catch (InvocationTargetException e4) {
            zzr().zzf().zza("SystemProperties.get() threw an exception", e4);
            return str2;
        }
    }

    public static long zzj() {
        return zzap.zzad.zza(null).longValue();
    }

    public static long zzk() {
        return zzap.zzd.zza(null).longValue();
    }

    private final Bundle zzy() {
        try {
            if (zzn().getPackageManager() == null) {
                zzr().zzf().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zzn()).getApplicationInfo(zzn().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzr().zzf().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzr().zzf().zza("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final int zza(String str) {
        return zzb(str, zzap.zzo);
    }

    public final long zza(String str, zzel<Long> zzelVar) {
        if (str == null) {
            return zzelVar.zza(null).longValue();
        }
        String zza = this.zzb.zza(str, zzelVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzelVar.zza(null).longValue();
        }
        try {
            return zzelVar.zza(Long.valueOf(Long.parseLong(zza))).longValue();
        } catch (NumberFormatException e) {
            return zzelVar.zza(null).longValue();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza(com.google.android.gms.measurement.internal.zzg r6) {
        /*
            r5 = this;
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            java.lang.String r0 = r0.zze()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L43
            boolean r0 = com.google.android.gms.internal.measurement.zzle.zzb()
            if (r0 == 0) goto L3d
            r0 = r5
            com.google.android.gms.measurement.internal.zzx r0 = r0.zzt()
            r1 = r6
            java.lang.String r1 = r1.zzc()
            com.google.android.gms.measurement.internal.zzel<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzap.zzcc
            boolean r0 = r0.zzd(r1, r2)
            if (r0 == 0) goto L3d
            r0 = r6
            java.lang.String r0 = r0.zzg()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L43
        L3d:
            r0 = r6
            java.lang.String r0 = r0.zzf()
            r9 = r0
        L43:
            r0 = r7
            com.google.android.gms.measurement.internal.zzel<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzap.zze
            r2 = 0
            java.lang.Object r1 = r1.zza(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.scheme(r1)
            com.google.android.gms.measurement.internal.zzel<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzap.zzf
            r2 = 0
            java.lang.Object r1 = r1.zza(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.encodedAuthority(r1)
            r8 = r0
            r0 = r9
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r9 = r0
            r0 = r9
            int r0 = r0.length()
            if (r0 == 0) goto L7a
            java.lang.String r0 = "config/app/"
            r1 = r9
            java.lang.String r0 = r0.concat(r1)
            r9 = r0
            goto L85
        L7a:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "config/app/"
            r1.<init>(r2)
            r9 = r0
        L85:
            r0 = r8
            r1 = r9
            android.net.Uri$Builder r0 = r0.path(r1)
            java.lang.String r1 = "app_instance_id"
            r2 = r6
            java.lang.String r2 = r2.zzd()
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "platform"
            java.lang.String r2 = "android"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "gmp_version"
            r2 = r5
            long r2 = r2.zze()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            r0 = r7
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzx.zza(com.google.android.gms.measurement.internal.zzg):java.lang.String");
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(zzz zzzVar) {
        this.zzb = zzzVar;
    }

    public final boolean zza(zzel<Boolean> zzelVar) {
        return zzd(null, zzelVar);
    }

    public final int zzb(String str, zzel<Integer> zzelVar) {
        if (str == null) {
            return zzelVar.zza(null).intValue();
        }
        String zza = this.zzb.zza(str, zzelVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzelVar.zza(null).intValue();
        }
        try {
            return zzelVar.zza(Integer.valueOf(Integer.parseInt(zza))).intValue();
        } catch (NumberFormatException e) {
            return zzelVar.zza(null).intValue();
        }
    }

    public final Boolean zzb(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle zzy = zzy();
        if (zzy == null) {
            zzr().zzf().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (zzy.containsKey(str)) {
            return Boolean.valueOf(zzy.getBoolean(str));
        } else {
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final double zzc(String str, zzel<Double> zzelVar) {
        if (str == null) {
            return zzelVar.zza(null).doubleValue();
        }
        String zza = this.zzb.zza(str, zzelVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzelVar.zza(null).doubleValue();
        }
        try {
            return zzelVar.zza(Double.valueOf(Double.parseDouble(zza))).doubleValue();
        } catch (NumberFormatException e) {
            return zzelVar.zza(null).doubleValue();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> zzc(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r0 = r4
            android.os.Bundle r0 = r0.zzy()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L20
            r0 = r4
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.zza(r1)
        L1b:
            r0 = 0
            r5 = r0
            goto L34
        L20:
            r0 = r6
            r1 = r5
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L2b
            goto L1b
        L2b:
            r0 = r6
            r1 = r5
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L34:
            r0 = r5
            if (r0 != 0) goto L3a
            r0 = 0
            return r0
        L3a:
            r0 = r4
            android.content.Context r0 = r0.zzn()     // Catch: android.content.res.Resources.NotFoundException -> L56
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L56
            r1 = r5
            int r1 = r1.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L56
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: android.content.res.Resources.NotFoundException -> L56
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L4f
            r0 = 0
            return r0
        L4f:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: android.content.res.Resources.NotFoundException -> L56
            r5 = r0
            r0 = r5
            return r0
        L56:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.zza(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzx.zzc(java.lang.String):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final boolean zzd(String str) {
        return "1".equals(this.zzb.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzd(String str, zzel<Boolean> zzelVar) {
        if (str == null) {
            return zzelVar.zza(null).booleanValue();
        }
        String zza = this.zzb.zza(str, zzelVar.zza());
        return TextUtils.isEmpty(zza) ? zzelVar.zza(null).booleanValue() : zzelVar.zza(Boolean.valueOf(Boolean.parseBoolean(zza))).booleanValue();
    }

    public final long zze() {
        zzu();
        return 19000L;
    }

    public final boolean zze(String str) {
        return "1".equals(this.zzb.zza(str, "measurement.event_sampling_enabled"));
    }

    public final boolean zze(String str, zzel<Boolean> zzelVar) {
        return zzd(str, zzelVar);
    }

    public final boolean zzf() {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    ApplicationInfo applicationInfo = zzn().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzc = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if (this.zzc == null) {
                        this.zzc = Boolean.TRUE;
                        zzr().zzf().zza("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzc.booleanValue();
    }

    public final boolean zzf(String str) {
        return zzd(str, zzap.zzah);
    }

    public final String zzg(String str) {
        zzel<String> zzelVar = zzap.zzai;
        return str == null ? zzelVar.zza(null) : zzelVar.zza(this.zzb.zza(str, zzelVar.zza()));
    }

    public final boolean zzg() {
        zzu();
        Boolean zzb = zzb("firebase_analytics_collection_deactivated");
        return zzb != null && zzb.booleanValue();
    }

    public final Boolean zzh() {
        zzu();
        return zzb("firebase_analytics_collection_enabled");
    }

    public final Boolean zzi() {
        zzb();
        Boolean zzb = zzb("google_analytics_adid_collection_enabled");
        return Boolean.valueOf(zzb == null || zzb.booleanValue());
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    public final String zzv() {
        return zza("debug.firebase.analytics.app", "");
    }

    public final String zzw() {
        return zza("debug.deferred.deeplink", "");
    }

    public final boolean zzx() {
        if (this.zza == null) {
            this.zza = zzb("app_measurement_lite");
            if (this.zza == null) {
                this.zza = false;
            }
        }
        return this.zza.booleanValue() || !this.zzx.zzt();
    }
}
