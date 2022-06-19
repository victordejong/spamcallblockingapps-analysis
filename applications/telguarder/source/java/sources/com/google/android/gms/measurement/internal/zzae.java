package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzmp;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzae.class */
public final class zzae extends zzge {
    private Boolean zza;
    private zzad zzb = zzac.zza;
    private Boolean zzc;

    public zzae(zzfl zzflVar) {
        super(zzflVar);
    }

    public static final long zzA() {
        return zzdw.zzC.zzb(null).longValue();
    }

    private final String zzB(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            this.zzx.zzat().zzb().zzb("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.zzx.zzat().zzb().zzb("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.zzx.zzat().zzb().zzb("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.zzx.zzat().zzb().zzb("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public static final long zzz() {
        return zzdw.zzc.zzb(null).longValue();
    }

    public final void zza(zzad zzadVar) {
        this.zzb = zzadVar;
    }

    public final String zzb() {
        this.zzx.zzas();
        return "FA";
    }

    public final int zzc() {
        zzkk zzl = this.zzx.zzl();
        Boolean zzC = zzl.zzx.zzy().zzC();
        if (zzl.zzZ() < 201500) {
            return (zzC == null || zzC.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int zzd(String str) {
        return zzl(str, zzdw.zzH, 25, 100);
    }

    public final int zze(String str) {
        return zzl(str, zzdw.zzG, 500, AdError.SERVER_ERROR_CODE);
    }

    public final long zzf() {
        this.zzx.zzas();
        return 39000L;
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean zzh() {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    ApplicationInfo applicationInfo = this.zzx.zzaw().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null) {
                            z = false;
                            if (str.equals(myProcessName)) {
                                z = true;
                            }
                        }
                        this.zzc = Boolean.valueOf(z);
                    }
                    if (this.zzc == null) {
                        this.zzc = Boolean.TRUE;
                        this.zzx.zzat().zzb().zza("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzc.booleanValue();
    }

    public final String zzi(String str, zzdv<String> zzdvVar) {
        return str == null ? zzdvVar.zzb(null) : zzdvVar.zzb(this.zzb.zza(str, zzdvVar.zza()));
    }

    public final long zzj(String str, zzdv<Long> zzdvVar) {
        if (str == null) {
            return zzdvVar.zzb(null).longValue();
        }
        String zza = this.zzb.zza(str, zzdvVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzdvVar.zzb(null).longValue();
        }
        try {
            return zzdvVar.zzb(Long.valueOf(Long.parseLong(zza))).longValue();
        } catch (NumberFormatException e) {
            return zzdvVar.zzb(null).longValue();
        }
    }

    public final int zzk(String str, zzdv<Integer> zzdvVar) {
        if (str == null) {
            return zzdvVar.zzb(null).intValue();
        }
        String zza = this.zzb.zza(str, zzdvVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzdvVar.zzb(null).intValue();
        }
        try {
            return zzdvVar.zzb(Integer.valueOf(Integer.parseInt(zza))).intValue();
        } catch (NumberFormatException e) {
            return zzdvVar.zzb(null).intValue();
        }
    }

    public final int zzl(String str, zzdv<Integer> zzdvVar, int i, int i2) {
        return Math.max(Math.min(zzk(str, zzdvVar), i2), i);
    }

    public final double zzm(String str, zzdv<Double> zzdvVar) {
        if (str == null) {
            return zzdvVar.zzb(null).doubleValue();
        }
        String zza = this.zzb.zza(str, zzdvVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzdvVar.zzb(null).doubleValue();
        }
        try {
            return zzdvVar.zzb(Double.valueOf(Double.parseDouble(zza))).doubleValue();
        } catch (NumberFormatException e) {
            return zzdvVar.zzb(null).doubleValue();
        }
    }

    public final boolean zzn(String str, zzdv<Boolean> zzdvVar) {
        if (str == null) {
            return zzdvVar.zzb(null).booleanValue();
        }
        String zza = this.zzb.zza(str, zzdvVar.zza());
        return TextUtils.isEmpty(zza) ? zzdvVar.zzb(null).booleanValue() : zzdvVar.zzb(Boolean.valueOf(Boolean.parseBoolean(zza))).booleanValue();
    }

    final Bundle zzo() {
        try {
            if (this.zzx.zzaw().getPackageManager() == null) {
                this.zzx.zzat().zzb().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(this.zzx.zzaw()).getApplicationInfo(this.zzx.zzaw().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            this.zzx.zzat().zzb().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.zzx.zzat().zzb().zzb("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final Boolean zzp(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle zzo = zzo();
        if (zzo == null) {
            this.zzx.zzat().zzb().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (zzo.containsKey(str)) {
            return Boolean.valueOf(zzo.getBoolean(str));
        } else {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> zzq(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "analytics.safelisted_events"
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r0 = r4
            android.os.Bundle r0 = r0.zzo()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L25
            r0 = r4
            com.google.android.gms.measurement.internal.zzfl r0 = r0.zzx
            com.google.android.gms.measurement.internal.zzei r0 = r0.zzat()
            com.google.android.gms.measurement.internal.zzeg r0 = r0.zzb()
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.zza(r1)
        L20:
            r0 = 0
            r5 = r0
            goto L3d
        L25:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L32
            goto L20
        L32:
            r0 = r5
            java.lang.String r1 = "analytics.safelisted_events"
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L3d:
            r0 = r5
            if (r0 == 0) goto L72
            r0 = r4
            com.google.android.gms.measurement.internal.zzfl r0 = r0.zzx     // Catch: android.content.res.Resources.NotFoundException -> L60
            android.content.Context r0 = r0.zzaw()     // Catch: android.content.res.Resources.NotFoundException -> L60
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L60
            r1 = r5
            int r1 = r1.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L60
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: android.content.res.Resources.NotFoundException -> L60
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L59
            r0 = 0
            return r0
        L59:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: android.content.res.Resources.NotFoundException -> L60
            r5 = r0
            r0 = r5
            return r0
        L60:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.zzfl r0 = r0.zzx
            com.google.android.gms.measurement.internal.zzei r0 = r0.zzat()
            com.google.android.gms.measurement.internal.zzeg r0 = r0.zzb()
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.zzb(r1, r2)
        L72:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzae.zzq(java.lang.String):java.util.List");
    }

    public final boolean zzr() {
        this.zzx.zzas();
        Boolean zzp = zzp("firebase_analytics_collection_deactivated");
        return zzp != null && zzp.booleanValue();
    }

    public final boolean zzs() {
        Boolean zzp = zzp("google_analytics_adid_collection_enabled");
        return zzp == null || zzp.booleanValue();
    }

    public final boolean zzt() {
        Boolean zzp;
        zzmp.zzb();
        return !zzn(null, zzdw.zzas) || (zzp = zzp("google_analytics_automatic_screen_reporting_enabled")) == null || zzp.booleanValue();
    }

    public final String zzu() {
        return zzB("debug.firebase.analytics.app", "");
    }

    public final String zzv() {
        return zzB("debug.deferred.deeplink", "");
    }

    public final boolean zzw(String str) {
        return "1".equals(this.zzb.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzx(String str) {
        return "1".equals(this.zzb.zza(str, "measurement.event_sampling_enabled"));
    }

    public final boolean zzy() {
        if (this.zza == null) {
            Boolean zzp = zzp("app_measurement_lite");
            this.zza = zzp;
            if (zzp == null) {
                this.zza = false;
            }
        }
        return this.zza.booleanValue() || !this.zzx.zzu();
    }
}
