package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzm.class */
public final class zzm {
    private static volatile zzae zze;
    private static Context zzg;
    static final zzk zza = new zze(zzi.zzf("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
    static final zzk zzb = new zzf(zzi.zzf("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    static final zzk zzc = new zzg(zzi.zzf("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));
    static final zzk zzd = new zzh(zzi.zzf("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));
    private static final Object zzf = new Object();

    public static void zza(Context context) {
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
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.IObjectWrapper, android.os.IBinder] */
    public static zzw zzb(String str, boolean z, boolean z2, boolean z3) {
        zzw zzwVar;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzg);
            try {
                zzf();
                try {
                    zzq zzf2 = zze.zzf(new zzn(str, z, false, ObjectWrapper.wrap(zzg), false));
                    if (zzf2.zza()) {
                        zzwVar = zzw.zzb();
                    } else {
                        String zzb2 = zzf2.zzb();
                        String str2 = zzb2;
                        if (zzb2 == null) {
                            str2 = "error checking package certificate";
                        }
                        zzwVar = zzf2.zzc() == 4 ? zzw.zze(str2, new PackageManager.NameNotFoundException()) : zzw.zzd(str2);
                    }
                } catch (RemoteException e) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                    zzwVar = zzw.zze("module call", e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                String valueOf = String.valueOf(e2.getMessage());
                zzwVar = zzw.zze(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzwVar;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static zzw zzc(String str, zzi zziVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzg(str, zziVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static boolean zzd() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                zzf();
                return zze.zzg();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }

    public static final /* synthetic */ String zze(boolean z, String str, zzi zziVar) throws Exception {
        boolean z2 = true;
        if (z || !zzg(str, zziVar, true, false).zza) {
            z2 = false;
        }
        return zzw.zzg(str, zziVar, z, z2);
    }

    private static void zzf() throws DynamiteModule.LoadingException {
        if (zze != null) {
            return;
        }
        Preconditions.checkNotNull(zzg);
        synchronized (zzf) {
            if (zze == null) {
                zze = zzad.zzb(DynamiteModule.load(zzg, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }

    private static zzw zzg(String str, zzi zziVar, boolean z, boolean z2) {
        try {
            zzf();
            Preconditions.checkNotNull(zzg);
            try {
                return zze.zze(new zzs(str, zziVar, z, z2), ObjectWrapper.wrap(zzg.getPackageManager())) ? zzw.zzb() : zzw.zzc(new Callable(z, str, zziVar) { // from class: com.google.android.gms.common.zzd
                    private final boolean zza;
                    private final String zzb;
                    private final zzi zzc;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zza = z;
                        this.zzb = str;
                        this.zzc = zziVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzm.zze(this.zza, this.zzb, this.zzc);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return zzw.zze("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return zzw.zze(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
