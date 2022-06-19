package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbd.class */
final class zzgbd {
    public static void zza(zzgeg zzgegVar) throws GeneralSecurityException {
        zzghn.zze(zzc(zzgegVar.zzf().zzg()));
        zzb(zzgegVar.zzf().zzh());
        if (zzgegVar.zzi() != 2) {
            zzfza.zzc(zzgegVar.zza().zze());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }

    public static String zzb(int i) throws NoSuchAlgorithmException {
        int i2 = i - 2;
        if (i2 != 1) {
            if (i2 == 2) {
                return "HmacSha384";
            }
            if (i2 == 3) {
                return "HmacSha256";
            }
            if (i2 == 4) {
                return "HmacSha512";
            }
            if (i2 != 5) {
                throw new NoSuchAlgorithmException("hash unsupported for HMAC: ".concat(Integer.toString(zzget.zza(i))));
            }
            return "HmacSha224";
        }
        return "HmacSha1";
    }

    public static int zzc(int i) throws GeneralSecurityException {
        int i2 = i - 2;
        if (i2 != 2) {
            if (i2 == 3) {
                return 2;
            }
            if (i2 != 4) {
                throw new GeneralSecurityException("unknown curve type: ".concat(Integer.toString(zzger.zza(i))));
            }
            return 3;
        }
        return 1;
    }

    public static int zzd(int i) throws GeneralSecurityException {
        int i2 = i - 2;
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new GeneralSecurityException("unknown point format: ".concat(Integer.toString(zzgdx.zza(i))));
                }
                return 3;
            }
        }
        return i3;
    }
}
