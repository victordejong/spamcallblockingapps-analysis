package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzm.class */
public final class zzm {
    private static volatile zzaf zze;
    private static Context zzg;
    public static final zzk zza = new zze(zzi.zze("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
    public static final zzk zzb = new zzf(zzi.zze("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    public static final zzk zzc = new zzg(zzi.zze("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));
    public static final zzk zzd = new zzh(zzi.zze("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));
    private static final Object zzf = new Object();

    public static zzw zza(String str, zzi zziVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzf(str, zziVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.IObjectWrapper, android.os.IBinder] */
    public static zzw zzb(String str, boolean z, boolean z2, boolean z3) {
        zzw zzwVar;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzg);
            try {
                zzg();
                try {
                    zzq zze2 = zze.zze(new zzn(str, z, false, ObjectWrapper.wrap(zzg), false));
                    if (zze2.zzb()) {
                        zzwVar = zzw.zzb();
                    } else {
                        String zza2 = zze2.zza();
                        String str2 = zza2;
                        if (zza2 == null) {
                            str2 = "error checking package certificate";
                        }
                        zzwVar = zze2.zzc() == 4 ? zzw.zzd(str2, new PackageManager.NameNotFoundException()) : zzw.zzc(str2);
                    }
                } catch (RemoteException e) {
                    zzwVar = zzw.zzd("module call", e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                String valueOf = String.valueOf(e2.getMessage());
                zzwVar = zzw.zzd(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzwVar;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static /* synthetic */ String zzc(boolean z, String str, zzi zziVar) throws Exception {
        String str2 = true != (!z && zzf(str, zziVar, true, false).zza) ? "not allowed" : "debug cert rejected";
        MessageDigest zza2 = AndroidUtilsLight.zza("SHA-1");
        Preconditions.checkNotNull(zza2);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, Hex.bytesToStringLowercase(zza2.digest(zziVar.zzf())), Boolean.valueOf(z), "12451000.false");
    }

    public static void zzd(Context context) {
        synchronized (zzm.class) {
            try {
                if (zzg != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context == null) {
                } else {
                    zzg = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean zze() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            zzg();
            boolean zzg2 = zze.zzg();
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzg2;
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    private static zzw zzf(final String str, final zzi zziVar, final boolean z, boolean z2) {
        try {
            zzg();
            Preconditions.checkNotNull(zzg);
            try {
                return zze.zzf(new zzs(str, zziVar, z, z2), ObjectWrapper.wrap(zzg.getPackageManager())) ? zzw.zzb() : new zzv(new Callable() { // from class: com.google.android.gms.common.zzd
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzm.zzc(z, str, zziVar);
                    }
                }, null);
            } catch (RemoteException e) {
                return zzw.zzd("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            return zzw.zzd(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }

    private static void zzg() throws DynamiteModule.LoadingException {
        if (zze != null) {
            return;
        }
        Preconditions.checkNotNull(zzg);
        synchronized (zzf) {
            if (zze == null) {
                zze = zzae.zzb(DynamiteModule.load(zzg, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
