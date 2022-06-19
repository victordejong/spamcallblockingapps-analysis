package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedh.class */
final class zzedh {
    public static zzehz zza(zzefs zzefsVar) throws GeneralSecurityException {
        int i = zzedk.zzidu[zzefsVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return zzehz.NIST_P384;
            }
            if (i == 3) {
                return zzehz.NIST_P521;
            }
            String valueOf = String.valueOf(zzefsVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("unknown curve type: ");
            sb.append(valueOf);
            throw new GeneralSecurityException(sb.toString());
        }
        return zzehz.NIST_P256;
    }

    public static zzeic zza(zzefe zzefeVar) throws GeneralSecurityException {
        int i = zzedk.zzidv[zzefeVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return zzeic.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
            }
            if (i == 3) {
                return zzeic.COMPRESSED;
            }
            String valueOf = String.valueOf(zzefeVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("unknown point format: ");
            sb.append(valueOf);
            throw new GeneralSecurityException(sb.toString());
        }
        return zzeic.UNCOMPRESSED;
    }

    public static String zza(zzeft zzeftVar) throws NoSuchAlgorithmException {
        int i = zzedk.zzidt[zzeftVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return "HmacSha256";
            }
            if (i == 3) {
                return "HmacSha512";
            }
            String valueOf = String.valueOf(zzeftVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("hash unsupported for HMAC: ");
            sb.append(valueOf);
            throw new NoSuchAlgorithmException(sb.toString());
        }
        return "HmacSha1";
    }

    public static void zza(zzefk zzefkVar) throws GeneralSecurityException {
        zzehx.zza(zza(zzefkVar.zzbcw().zzbdj()));
        zza(zzefkVar.zzbcw().zzbdk());
        if (zzefkVar.zzbcy() != zzefe.UNKNOWN_FORMAT) {
            zzebm.zza(zzefkVar.zzbcx().zzbcr());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }
}
