package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.CheckReturnValue;
@ShowFirstParty
@CheckReturnValue
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleSignatureVerifier.class */
public class GoogleSignatureVerifier {
    private static GoogleSignatureVerifier zzal;
    private final Context mContext;
    private volatile String zzam;

    private GoogleSignatureVerifier(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @KeepForSdk
    public static GoogleSignatureVerifier getInstance(Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (zzal == null) {
                    zzc.zza(context);
                    zzal = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzal;
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

    private final zzm zza(PackageInfo packageInfo) {
        boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.mContext);
        if (packageInfo == null) {
            return zzm.zzb("null pkg");
        }
        if (packageInfo.signatures.length != 1) {
            return zzm.zzb("single cert required");
        }
        zzf zzfVar = new zzf(packageInfo.signatures[0].toByteArray());
        String str = packageInfo.packageName;
        zzm zza = zzc.zza(str, zzfVar, honorsDebugCertificates);
        return (!zza.zzac || packageInfo.applicationInfo == null || (packageInfo.applicationInfo.flags & 2) == 0 || (honorsDebugCertificates && !zzc.zza(str, (zze) zzfVar, false).zzac)) ? zza : zzm.zzb("debuggable release cert app rejected");
    }

    private final zzm zza(String str, int i) {
        try {
            return zza(Wrappers.packageManager(this.mContext).zza(str, 64, i));
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
        if (str == null) {
            return zzm.zzb("null pkg");
        }
        if (str.equals(this.zzam)) {
            return zzm.zze();
        }
        try {
            zzm zza = zza(Wrappers.packageManager(this.mContext).getPackageInfo(str, 64));
            if (zza.zzac) {
                this.zzam = str;
            }
            return zza;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return zzm.zzb(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    @KeepForSdk
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

    @ShowFirstParty
    @KeepForSdk
    public boolean isPackageGoogleSigned(String str) {
        zzm zzc = zzc(str);
        zzc.zzf();
        return zzc.zzac;
    }

    @ShowFirstParty
    @KeepForSdk
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
                if (zza.zzac) {
                    break;
                }
                i2++;
                zzmVar = zza;
            }
        } else {
            zzmVar = zzm.zzb("no pkgs");
        }
        zzmVar.zzf();
        return zzmVar.zzac;
    }
}
