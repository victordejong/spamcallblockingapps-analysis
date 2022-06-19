package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.CheckReturnValue;
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleSignatureVerifier.class */
public class GoogleSignatureVerifier {
    private static GoogleSignatureVerifier zzam;
    private final Context mContext;
    private volatile String zzan;

    private GoogleSignatureVerifier(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static GoogleSignatureVerifier getInstance(Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (zzam == null) {
                    zzc.zza(context);
                    zzam = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzam;
    }

    private static zze zza(PackageInfo packageInfo, zze... zzeVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzf zzfVar = new zzf(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzeVarArr.length; i++) {
            if (zzeVarArr[i].equals(zzfVar)) {
                return zzeVarArr[i];
            }
        }
        return null;
    }

    private final zzm zza(String str, int i) {
        try {
            PackageInfo zza = Wrappers.packageManager(this.mContext).zza(str, 64, i);
            boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.mContext);
            if (zza == null) {
                return zzm.zzb("null pkg");
            }
            if (zza.signatures.length != 1) {
                return zzm.zzb("single cert required");
            }
            zzf zzfVar = new zzf(zza.signatures[0].toByteArray());
            String str2 = zza.packageName;
            zzm zza2 = zzc.zza(str2, zzfVar, honorsDebugCertificates, false);
            return (!zza2.zzad || zza.applicationInfo == null || (zza.applicationInfo.flags & 2) == 0 || !zzc.zza(str2, zzfVar, false, true).zzad) ? zza2 : zzm.zzb("debuggable release cert app rejected");
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return zzm.zzb(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    public static boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? zza(packageInfo, zzh.zzx) : zza(packageInfo, zzh.zzx[0])) != null;
    }

    private final zzm zzc(String str) {
        zzm zzmVar;
        if (str == null) {
            return zzm.zzb("null pkg");
        }
        if (str.equals(this.zzan)) {
            return zzm.zze();
        }
        try {
            PackageInfo packageInfo = Wrappers.packageManager(this.mContext).getPackageInfo(str, 64);
            boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.mContext);
            if (packageInfo == null) {
                zzmVar = zzm.zzb("null pkg");
            } else if (packageInfo.signatures.length != 1) {
                zzmVar = zzm.zzb("single cert required");
            } else {
                zzf zzfVar = new zzf(packageInfo.signatures[0].toByteArray());
                String str2 = packageInfo.packageName;
                zzmVar = zzc.zza(str2, zzfVar, honorsDebugCertificates, false);
                if (zzmVar.zzad && packageInfo.applicationInfo != null && (packageInfo.applicationInfo.flags & 2) != 0 && zzc.zza(str2, zzfVar, false, true).zzad) {
                    zzmVar = zzm.zzb("debuggable release cert app rejected");
                }
            }
            if (zzmVar.zzad) {
                this.zzan = str;
            }
            return zzmVar;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return zzm.zzb(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    public boolean isGooglePublicSignedPackage(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (!zza(packageInfo, true)) {
            return false;
        }
        if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.mContext)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    public boolean isPackageGoogleSigned(String str) {
        zzm zzc = zzc(str);
        zzc.zzf();
        return zzc.zzad;
    }

    public boolean isUidGoogleSigned(int i) {
        zzm zzmVar;
        String[] packagesForUid = Wrappers.packageManager(this.mContext).getPackagesForUid(i);
        if (packagesForUid != null && packagesForUid.length != 0) {
            zzmVar = null;
            int length = packagesForUid.length;
            int i2 = 0;
            while (i2 < length) {
                zzm zza = zza(packagesForUid[i2], i);
                zzmVar = zza;
                if (zza.zzad) {
                    break;
                }
                i2++;
                zzmVar = zza;
            }
        } else {
            zzmVar = zzm.zzb("no pkgs");
        }
        zzmVar.zzf();
        return zzmVar.zzad;
    }
}
