package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwp.class */
public final class zzfwp {
    public static void zza(zzfzs zzfzsVar) throws GeneralSecurityException {
        zzgcz.zzd(zzc(zzfzsVar.zza().zzg()));
        zzb(zzfzsVar.zza().zzh());
        if (zzfzsVar.zzi() != 2) {
            zzfum.zzg(zzfzsVar.zzc().zza());
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
                throw new NoSuchAlgorithmException("hash unsupported for HMAC: ".concat(Integer.toString(zzgaf.zza(i))));
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
                throw new GeneralSecurityException("unknown curve type: ".concat(Integer.toString(zzgad.zza(i))));
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
                    throw new GeneralSecurityException("unknown point format: ".concat(Integer.toString(zzfzj.zza(i))));
                }
                return 3;
            }
        }
        return i3;
    }
}
